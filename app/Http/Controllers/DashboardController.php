<?php

namespace App\Http\Controllers;

use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Middleware\VoyagerAdminMiddleware;

class DashboardController extends \TCG\Voyager\Http\Controllers\VoyagerController
{
    public function __construct() {
        $this->middleware(VoyagerAdminMiddleware::class);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("dashboard");
    }
}
