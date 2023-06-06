<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AttendanceController;
use App\Http\Controllers\Api\JobApplicationController;
Route::get('attendance-cloacking/', [AttendanceController::class, 'cloackingData']);
Route::get('sign-in-sign-out/', [AttendanceController::class, 'attendanceSummary']);
Route::get('list/jobs', [JobApplicationController::class, 'index']);
Route::post('store/applicants', [JobApplicationController::class, 'storeApplicants']);