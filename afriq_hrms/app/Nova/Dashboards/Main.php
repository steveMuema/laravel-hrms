<?php

namespace App\Nova\Dashboards;

use App\Nova\Metrics\NewApplicants;
use Laravel\Nova\Cards\Help;
use Laravel\Nova\Dashboards\Main as Dashboard;

use App\Nova\Metrics\StaffCount;
use App\Nova\Metrics\StaffPerDepartment;

class Main extends Dashboard
{
    /**
     * Get the cards for the dashboard.
     *
     * @return array
     */
    public function cards()
    {
        return [
            new StaffCount,
            new StaffPerDepartment,
            new NewApplicants,
        ];
    }
}