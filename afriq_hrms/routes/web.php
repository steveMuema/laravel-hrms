<?php

use App\Http\Controllers\LeaveController;
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Application;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return Inertia::render('Welcome', [
//         'canLogin' => Route::has('login'),
//         'canRegister' => Route::has('register'),
//         'laravelVersion' => Application::VERSION,
//         'phpVersion' => PHP_VERSION,
//     ]);
// });

Route::get('/', function () {
    $leaveTypes = \App\Models\StaffLeaveType::join('leave_types', 
        'leave_type_id', '=', 'leave_types.id'
        )
        ->where('staff_id', Auth::user()->id)
        ->get();
    return Inertia::render('Dashboard', ['leavetypes' => $leaveTypes]);
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //leaves
    Route::get('leave/list', [LeaveController::class, 'index'])->name('leave.list');
    Route::get('leave', [LeaveController::class, 'create'])->name('apply.leave');
    Route::post('leave', [LeaveController::class, 'store'])->name('store.leave');

});

Route::get('/components/buttons', function () {
    return Inertia::render('Components/Buttons');
})->middleware(['auth', 'verified'])->name('components.buttons');

require __DIR__ . '/auth.php';
