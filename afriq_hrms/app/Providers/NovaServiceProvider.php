<?php

namespace App\Providers;

use App\Nova\Team;
use App\Nova\Leave;
use App\Nova\Staff;
use App\Nova\User;
use App\Nova\Branch;
use App\Nova\Salary;
use App\Nova\Contract;
use App\Nova\Document;
use Laravel\Nova\Nova;
use App\Nova\WorkShift;
use App\Nova\Attendance;
use App\Nova\Department;
use App\Nova\Designation;
use App\Nova\JobApplication;
use App\Nova\StaffLeaveType;
use Illuminate\Http\Request;
use App\Nova\BiometricDevice;
use App\Nova\AttendanceSummary;
use Laravel\Nova\Menu\MenuItem;
use Laravel\Nova\Dashboards\Main;
use Laravel\Nova\Menu\MenuSection;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Blade;
use App\Nova\Applicant as NovaApplicant;
use App\Nova\LeaveType;
use Laravel\Nova\NovaApplicationServiceProvider;
use Vyuldashev\NovaPermission\NovaPermissionTool;
use KirschbaumDevelopment\NovaMail\Nova\NovaSentMail;
use KirschbaumDevelopment\NovaMail\Nova\NovaMailEvent;
use KirschbaumDevelopment\NovaMail\Nova\NovaMailTemplate;

class NovaServiceProvider extends NovaApplicationServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
        Nova::mainMenu(function (Request $request) {
            return [
                MenuSection::dashboard(Main::class),

                MenuSection::make('Application Details', [
                    MenuItem::resource(JobApplication::class),
                    MenuItem::resource(NovaApplicant::class),
                    MenuItem::resource(Document::class),
                ])->icon('briefcase')->collapsable(),
                MenuSection::make('Staff Management', [
                    MenuItem::resource(User::class),
                    MenuItem::resource(Staff::class),
                    MenuItem::resource(Contract::class),
                    MenuItem::resource(Salary::class),
                    MenuItem::resource(Team::class),
                    MenuItem::resource(WorkShift::class),
                ])->icon('user')->collapsable(),
                MenuSection::make('Staff Attendance ', [
                    MenuItem::resource(BiometricDevice::class),
                    MenuItem::resource(Attendance::class),
                    MenuItem::resource(AttendanceSummary::class),
                ])->icon('clock')->collapsable(),
                MenuSection::make('Organization Details', [
                    MenuItem::resource(Branch::class),
                    MenuItem::resource(Department::class),
                    MenuItem::resource(Designation::class),
                ])->icon('office-building')->collapsable(),
                MenuSection::make('Leave Management', [
                    MenuItem::resource(Leave::class),
                    // MenuItem::resource(StaffLeaveType::class),
                    MenuItem::resource(LeaveType::class)
                ])->icon('calendar')->collapsable(),
                MenuSection::make('Mails', [
                    MenuItem::resource(NovaMailEvent::class),
                    MenuItem::resource(NovaMailTemplate::class),
                    MenuItem::resource(NovaSentMail::class),
                ])->icon('mail')->collapsable(),
                MenuSection::make('Roles & Permissions', [
                    MenuItem::resource(\Vyuldashev\NovaPermission\Permission::class),
                    MenuItem::resource(\Vyuldashev\NovaPermission\Role::class),
                ])->icon('lock-closed')->collapsable(),
            ];
        });
        Nova::footer(function ($request) {
            return Blade::render('
                @env(\'prod\')
                    Afriq Networks Solution
                @endenv
            ');
        });
        Nova::script('jquery', asset('js/jquery.min.js'));
        Nova::script('custom-script', asset('js/custom.js'));
    }

    /**
     * Register the Nova routes.
     *
     * @return void
     */
    protected function routes()
    {
        Nova::routes()
                ->withAuthenticationRoutes()
                ->withPasswordResetRoutes()
                ->register();
    }

    /**
     * Register the Nova gate.
     *
     * This gate determines who can access Nova in non-local environments.
     *
     * @return void
     */
    protected function gate()
    {
        Gate::define('viewNova', function ($staff) {
            return $staff->can('access dashboard');
        });
    }

    /**
     * Get the dashboards that should be listed in the Nova sidebar.
     *
     * @return array
     */
    protected function dashboards()
    {
        return [
            new \App\Nova\Dashboards\Main,
        ];
    }

    /**
     * Get the tools that should be listed in the Nova sidebar.
     *
     * @return array
     */
    public function tools()
    {
        return [
            NovaPermissionTool::make()
        ];
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        Nova::initialPath('dashboards/main');
    }
}
