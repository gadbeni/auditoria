<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Models
use App\Models\PublicationsType;
use App\Models\Publication;

class HomeController extends Controller
{
    public function index(){
        $years = Publication::where('deleted_at', NULL)
                    ->groupByRaw('YEAR(publish_date)')->selectRaw('YEAR(publish_date) as year, COUNT(id) as count')->get();
        return view('welcome', compact('years'));
    }

    public function list($year, $search = null){
        $query_search = $search ? '(title like "%'.$search.'%" or tags like "%'.$search.'%" or description like "%'.$search.'%")' : 1;
        $list = Publication::whereRaw($query_search)
                    ->whereYear('publish_date', $year)
                    ->where('deleted_at', NULL)->orderBy('publish_date', 'DESC')->paginate(10);
        return view('list', compact('list'));
    }
}
