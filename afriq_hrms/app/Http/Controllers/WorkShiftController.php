<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreWorkShiftRequest;
use App\Http\Requests\UpdateWorkShiftRequest;
use App\Models\WorkShift;

class WorkShiftController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreWorkShiftRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreWorkShiftRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Http\Response
     */
    public function show(WorkShift $workShift)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Http\Response
     */
    public function edit(WorkShift $workShift)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateWorkShiftRequest  $request
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateWorkShiftRequest $request, WorkShift $workShift)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Http\Response
     */
    public function destroy(WorkShift $workShift)
    {
        //
    }
}
