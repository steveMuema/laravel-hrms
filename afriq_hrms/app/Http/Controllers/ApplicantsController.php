<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreApplicantsRequest;
use App\Http\Requests\UpdateApplicantsRequest;
use App\Models\Applicants;

class ApplicantsController extends Controller
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
     * @param  \App\Http\Requests\StoreApplicantsRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreApplicantsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Applicants  $applicants
     * @return \Illuminate\Http\Response
     */
    public function show(Applicants $applicants)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Applicants  $applicants
     * @return \Illuminate\Http\Response
     */
    public function edit(Applicants $applicants)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateApplicantsRequest  $request
     * @param  \App\Models\Applicants  $applicants
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateApplicantsRequest $request, Applicants $applicants)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Applicants  $applicants
     * @return \Illuminate\Http\Response
     */
    public function destroy(Applicants $applicants)
    {
        //
    }
}
