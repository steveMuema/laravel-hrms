<?php

namespace App\Http\Controllers;

use App\Models\BiometricDevices;
use App\Http\Requests\StoreBiometricDevicesRequest;
use App\Http\Requests\UpdateBiometricDevicesRequest;

class BiometricDevicesController extends Controller
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
     * @param  \App\Http\Requests\StoreBiometricDevicesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBiometricDevicesRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BiometricDevices  $biometricDevices
     * @return \Illuminate\Http\Response
     */
    public function show(BiometricDevices $biometricDevices)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BiometricDevices  $biometricDevices
     * @return \Illuminate\Http\Response
     */
    public function edit(BiometricDevices $biometricDevices)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBiometricDevicesRequest  $request
     * @param  \App\Models\BiometricDevices  $biometricDevices
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBiometricDevicesRequest $request, BiometricDevices $biometricDevices)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BiometricDevices  $biometricDevices
     * @return \Illuminate\Http\Response
     */
    public function destroy(BiometricDevices $biometricDevices)
    {
        //
    }
}
