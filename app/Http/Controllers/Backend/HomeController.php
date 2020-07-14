<?php

namespace Sixceed\Http\Controllers\Backend;

use Illuminate\Http\Request;
use Sixceed\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function adminIndex()
    {
        return view('backend.pages.admin');
    }

    public function mainIndex()
    {
        return view('backend.pages.main');
    }

    public function penIndex()
    {
        return view('backend.pages.pen');
    }

    public function ppiIndex()
    {
        return view('backend.pages.ppi');
    }

    public function plnIndex()
    {
        return view('backend.pages.pln');
    }

    public function pktnIndex()
    {
        return view('backend.pages.pktn');
    }

    public function pdnIndex()
    {
        return view('backend.pages.pdn');
    }
}
