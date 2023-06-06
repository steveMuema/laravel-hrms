<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
//model
use App\Models\Attendance;
use App\Models\AttendanceSummary;
use App\Models\BiometricDevice;

class AttendanceController extends Controller
{
    public function cloackingData(Request $request){
        $number="";
        for($i=1;$i<=100;$i++){
        $number.=($i.",");
        }
        $number=substr($number,0,strlen($number)-1);
        $devices = BiometricDevice::all('branch_id', 'ip_address');
        foreach($devices as $device)
        {
            $url = "http://".$device->ip_address."/form/Download?uid=".$number."&sdate=".date("Y-m-d")."&edate=".date("Y-m-d");

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL,$url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

            $server_output = curl_exec ($ch);

            curl_close ($ch);

            $data = array();
            $record = explode("\n",$server_output);
            foreach($record as $r){
            $r = str_replace("\t"," ",$r);
            $isi = explode(" ",$r);
            array_push($data, $isi);
            }
            $arr = [];
            foreach($data as $user){
            
                if(isset($user[1])){
                        $arr[] =[
                        'staff_id' => 1, 
                        'uuid' => $user[0], 
                        'first_name' => $user[1], 
                        'second_name' => $user[2],
                        'branch_id' => $device->branch_id,
                        'date' => $user[count($user)-4],
                        'clock_time' => $user[count($user)-3],
                        'sign_in' => $user[count($user)-2],
                        'sign_out' => $user[count($user)-1],
                    ];
                    
                }
            }
            $result = array_values(array_column( $arr , null, 'clock_time' ));
            $update_clock_time = Attendance::insertOrIgnore($result);
            if($update_clock_time){
                return response()->json([
                    'code' => 200,
                    'status' => 'success',
                ]);
            }
            else{
                return response()->json([
                    'code' => 500,
                    'status' => 'error'
                ]);
            }
        }

    }
    public function attendanceSummary(){

        $staff_sign_in = DB::table('attendances')->where(['date' => date("Y-m-d"), 'sign_in'=>1, 'sign_out'=>0])->get();
        
        $staff_sign_out = DB::table('attendances')->where(['date' => date("Y-m-d"), 'sign_in'=>1, 'sign_out'=>1])->orderBy('id', 'DESC')->get();
        foreach($staff_sign_in->unique('uuid') as $login){
            foreach($staff_sign_out->unique('uuid') as $logout)
            {
                if($login->uuid == $logout->uuid)
                { 
                    $total_time = round((strtotime($logout->clock_time) - strtotime($login->clock_time)) / 3600) -1;
                    $attendance_summary=AttendanceSummary::updateOrCreate(
                        [
                            'staff_uuid' =>  $login->uuid,
                            'date' => $login->date,
                            
                        ], [
                            'first_name' => $login->first_name,
                                                    
                            'second_name' => $login->second_name,  
                            
                            'first_time_in' => $login->clock_time,                            

                            'last_time_out' => $logout->clock_time,
                        
                            'total_time' => $total_time >= 0 ? $total_time : 0,                                            
                            'is_delay' => $total_time >= 8 ? 'No' : 'Yes',
                            'overtime' => $total_time > 8 ? $total_time - 8 : 0
                        ]);
                }
            }
        }
        
    }
}