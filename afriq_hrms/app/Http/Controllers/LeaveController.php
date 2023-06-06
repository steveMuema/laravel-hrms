<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreLeaveRequest;
use App\Models\Leave;
use App\Models\Staff;
use App\Models\StaffLeaveType;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class LeaveController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $leaves = DB::table('leaves')
            ->join('leave_types', 'leave_type', '=', 'leave_types.id')
            ->select('leave_types.name AS name', 'datefrom', 'dateto', 'subject', 'leaves.status AS application_status')
            ->where('staff_id', $request->user()->id)
            ->orderBy('leaves.id', 'desc')
            ->get();

        return Inertia::render('Leave/Index', ['leaves' => $leaves]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $leaveTypes = StaffLeaveType::join('leave_types', 
        'leave_type_id', '=', 'leave_types.id'
        )
            ->where('staff_id', '=',  Auth::user()->id)
            ->where('remaining_days', '>', 0)
            ->get();
        $staff = Staff::get(['id', 'firstname', 'lastname']);
        return Inertia::render('Leave/Create', [
            'leaveTypes' => $leaveTypes, 
            'staff'=> $staff
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Leave::create([
            'staff_id' => $request->user()->id,
            'leave_type' => $request->leaveType,
            'datefrom' => $request->dateFrom,
            'dateto' => $request->dateTo,
            'subject' => $request->reason,
            'point_of_contact' => $request->pointOfContact,
            'status' => 'pending',
        ]);
        return Redirect::route('leave.list');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function show(Leave $leave)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function edit(Leave $leave)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Leave $leave)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function destroy(Leave $leave)
    {
        //
    }
}
