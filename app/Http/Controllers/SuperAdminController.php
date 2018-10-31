<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Session;
use DB;

class SuperAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->super_admin_auth_check();
        $dashboard_main_content=view('pages.dashboard_home');
        return view('admin.admin_master')
               ->with('dashboard_main_content',$dashboard_main_content);
    }
    public function add_category()
    {
        $this->super_admin_auth_check();
        $add_category=view('pages.add_category');
        return view('admin.admin_master')
               ->with('dashboard_main_content',$add_category);
    }
    public function save_category(Request $request)
    {
        
        $data=array();
        $data['category_name']=$request->category_name;
        $data['category_description']=$request->category_description;
        $data['publication_status']=$request->publication_status;
        $data['created_at']=date("Y-m-d H:i:s");
        DB::table('tbl_category')->insert($data);
        session::flash('message','save data successfully');
        return redirect::to('add_category');
    }
    public function manage_category()
    {
        $this->super_admin_auth_check();
        $data['category_data']=DB::table('tbl_category')->get();
        $manage_category=view('pages.manage_category')->with('data',$data);
        
        return view('admin.admin_master')
               ->with('dashboard_main_content',$manage_category);   
    }
    
     public function published_category($id)
    {
        $data=array();
        $data['publication_status']=1;
        DB::table('tbl_category')
              ->where('category_id',$id)
              ->update($data);
        return redirect::to('manage_category');
    }
    public function unpulished_category($id)
    {
        $data=array();
        $data['publication_status']=0;
        DB::table('tbl_category')
              ->where('category_id',$id)
              ->update($data);
        return redirect::to('manage_category');
    }
    public function edit_category($id)
    {
        $this->super_admin_auth_check();
        $data['category_info_by_id']=DB::table('tbl_category')
              ->select('*')
              ->where('category_id',$id)
              ->first();
        $edit_category=view('pages.edit_category')
                      ->with('data',$data);     
              // print_r($data['$category_info_by_id']);
              // exit();
       return view('admin.admin_master')->with('dashboard_main_content',$edit_category);
    }
    public function update_category(Request $request)
    {
        $data=array();
        $data['category_name']=$request->category_name;
        $data['category_description']=$request->category_description;
        $category_id=$request->category_id;
        DB::table('tbl_category')->where('category_id',$category_id)
                                 ->update($data);
        return redirect::to('manage_category');
    }
    public function delete_category($id)
    {
        DB::table('tbl_category')
              ->where('category_id',$id)
              ->delete();
        return redirect::to('manage_category');
    }
    ///blog segment
    public function add_blog()
    {
        $this->super_admin_auth_check();
        $data['published_category']=DB::table('tbl_category')
                                   ->where('publication_status',1)
                                   ->get();
        $add_blog=view('pages.add_blog')
                 ->with('data',$data) ;
        return view('admin.admin_master')
               ->with('dashboard_main_content',$add_blog);
    }
    public function save_blog(Request $request)
    {

        $data=array();
        $data['blog_title']=$request->blog_title;
        $data['category_id']=$request->category_id;
        $data['author_name']=session::get('admin_name');
        $data['blog_short_description']=$request->blog_short_description;
        $data['blog_long_description']=$request->blog_long_description;
        $data['publication_status']=$request->publication_status;
        $data['created_at']=date("Y-m-d H:i:s");
        $image=$request->file('blog_image');
        // echo "<pre>";
        // print_r($image);
        // exit();
        if($image)
        {
            $image_name=str_random(20);
            $ext=strtolower($image->getClientOriginalExtension());
            $image_full_name=$image_name.'.'.$ext;
            $upload_path='blog_image/';
            // $upload_path=public_path('/blog_image');
            $image_url=$upload_path.$image_full_name;
            $success=$image->move($upload_path,$image_full_name);
            if ($success) {
                $data['blog_image']=$image_url;
            DB::table('tbl_blog')->insert($data);
            session::flash('message','save data successfully');
            return redirect::to('add_blog');

            }
        }
        else{
            DB::table('tbl_blog')->insert($data);
            session::flash('message','save data successfully');
            return redirect::to('add_blog');
        }

    }
    public function manage_blog()
    {
        $this->super_admin_auth_check();
        $data['published_category']=DB::table('tbl_category')
                                   ->where('publication_status',1)
                                   ->get();
        $data['blog_data']=DB::table('tbl_blog')->get();
        $manage_blog=view('pages.manage_blog')->with('data',$data);
        return view('admin.admin_master')->with('dashboard_main_content',$manage_blog);
    }
    public function published_blog($id)
    {
        $data=array();
        $data['publication_status']=1;
        DB::table('tbl_blog')
              ->where('blog_id',$id)
              ->update($data);
        return redirect::to('manage-blog');
    }
    public function unpulished_blog($id)
    {
        $data=array();
        $data['publication_status']=0;
        DB::table('tbl_blog')
            ->where('blog_id',$id)
            ->update($data);
         return redirect::to('manage-blog');
    }
        public function edit_blog($id)
    {
         $this->super_admin_auth_check();
         $data['published_category']=DB::table('tbl_category')
                                   ->where('publication_status',1)
                                   ->get();
        $data['blog_info_by_id']=DB::table('tbl_blog')
                                ->select('*')
                                ->where('blog_id',$id)
                                ->first();
        $edit_blog=view('pages.edit_blog')
                      ->with('data',$data);     
              // print_r($data['$category_info_by_id']);
              // exit();
       return view('admin.admin_master')->with('dashboard_main_content',$edit_blog);
    }
    public function update_blog(Request $request)
    {
        $data=array();
        $data['category_id']=$request->category_id;
        $data['blog_title']=$request->blog_title;
        $data['blog_short_description']=$request->blog_short_description;
        $data['blog_long_description']=$request->blog_long_description;
        $blog_id=$request->blog_id;
        $image=$request->file('blog_image');
        if($image)
        {
            $image_name=str_random(20);
            $ext=strtolower($image->getClientOriginalExtension());
            $image_full_name=$image_name.'.'.$ext;
            $upload_path='blog_image/';
            // $upload_path=public_path('/blog_image');
            $image_url=$upload_path.$image_full_name;
            $success=$image->move($upload_path,$image_full_name);
            if ($success) {
                $data['blog_image']=$image_url;
                DB::table('tbl_blog')->where('blog_id',$blog_id)
                             ->update($data);
            return redirect::to('manage_blog');

            }
        }
        else{
                    DB::table('tbl_blog')->where('blog_id',$blog_id)
                             ->update($data);
                   return redirect::to('manage_blog');
        }

    }
    public function delete_blog($id)
    {
        DB::table('tbl_blog')->where('blog_id',$id)->delete();
        return redirect::to('manage_blog');
    }

    
    public function admin_logout()
    {
        Session::flash('admin_id','');
        Session::flash('admin_name','');
        Session::flash('message','you have logged out successfully');
        return redirect::to('admin-panel');
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
    public function super_admin_auth_check()
    {
        session_start();
        $admin_id=session::get('admin_id');
        if($admin_id == NULL)
        {
            return redirect::to('admin-panel')->send();
        }
    }
}
