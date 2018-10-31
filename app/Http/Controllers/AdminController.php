<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Session;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->admin_auth_check();
        
        return view('admin.admin_login');

    }
    public function admin_login_check(Request $request)
    {
        $admin_email=$request->admin_email;
        $admin_password=$request->admin_password;
        $result=DB::table('tbl_admin')->select('*')
                             ->where('admin_email','=',$admin_email)
                             ->where('admin_password','=',md5($admin_password))
                             ->first();
        // echo "<pre>";
        // print_r($result);
        // exit();
        if($result)
        {
            Session::put('admin_id',$result->admin_id);
            Session::put('admin_name',$result->admin_name);
             

            return redirect::to('dashboard');
        }
        else
        {
            Session::flash('message', 'invalid username or password'); 
            return redirect::to('admin-panel');
        }
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function admin_auth_check()
    {
        session_start();
        $admin_id=session::get('admin_id');
        if($admin_id != NULL)
        {
            return redirect::to('dashboard')->send();
        }
    }
}
