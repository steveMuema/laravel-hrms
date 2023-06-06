<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\JobApplicationResource;
use App\Models\JobApplication;
use App\Models\Applicant;
use App\Models\Document;

class JobApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
           $job_list = JobApplication::where('is_published', 1)->get();
           return new JobApplicationResource($job_list);
    }

    public function storeApplicants(Request $request)
    {
        
        $validator = Validator::make($request->all(),[
            'first_name' => 'required|max:255',
            'last_name' => 'required|max:255',
            'email' => 'required|email|max:255',
            'dob' => 'required|date|max:28',
            'job_application_id' => 'required|max:56',
            'years_of_experience' => 'required|max:10',
            'cv' => 'required|mimes:doc,docx,pdf,txt,csv|max:2048',

        ]);
        if($validator->fails()) {          
            
            return response()->json(['error(s)'=>$validator->errors()], 401);                        
         }
          
        $applicant = Applicant::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'dob' => $request->dob,
            'years_of_experience'=> $request->years_of_experience,
            'job_application_id'=> $request->job_application_id,
            'status' => 'submitted'
        ]);
         if($applicant){
            
            if ($file = $request->file('cv')) {
                $path = public_path('applicants/uploads/'.$applicant->first_name.'-'.$applicant->last_name.'-'.$applicant->id);

                if(!\File::isDirectory($path)){
                    \File::makeDirectory($path, 0777, true, true);
                }
                $name = $file->getClientOriginalName();
                $request->file('cv')->move($path, $name);
                $save = new Document();
                $save->name = $applicant->first_name.'-'.$applicant->last_name.'-'.$name;
                $save->url= $path;
                $save->applicant_id= $applicant->id;
                $save->save();
                
                  
                return response()->json([
                    "success" => true,
                    "message" => "File successfully uploaded",
                    "file" => $name
                ]);
      
            }
         }
         else{
             return [
                'code' => 0,
                 'message' => 'An error occured please try again'
             ];
         }
    } 
  
}