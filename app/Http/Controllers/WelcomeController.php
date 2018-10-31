<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class WelcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['all_published_category']=DB::table('tbl_category')
                                       ->select('*')
                                       ->where('publication_status',1)->get();
        $home_content=view('pages.home_content');
        $data['all_published_blog']=DB::table('tbl_blog')
                                       ->select('*')
                                       ->where('publication_status',1)
                                       ->orderBy('blog_id','DESC')
                                       ->get(); 
        $data['published_blog_title']=DB::table('tbl_blog')
                                       ->select('*')
                                       ->where('publication_status',1)
                                       ->orderBy('blog_id','DESC')
                                       ->limit(2)
                                       ->get();
        $home_content=view('pages.home_content')->with('data',$data);
        $sidebar=view('pages.sidebar')->with('data',$data);
        return view('master')
        ->with('main_content',$home_content)
        ->with('sidebar',$sidebar);
        
    }
    public function blog_details($id)
        {
            $data['all_published_category']=DB::table('tbl_category')
                                       ->select('*')
                                       ->where('publication_status',1)->get();
             $data['published_blog_title']=DB::table('tbl_blog')
                                       ->select('*')
                                       ->where('publication_status',1)
                                       ->orderBy('blog_id','DESC')
                                       ->limit(2)
                                       ->get();                           
            $data['blog_info']=DB::table('tbl_blog')
                              ->select('*')
                              ->where('blog_id',$id)
                              ->first();
            
            $blog_details=view('pages.blog_details')->with('data',$data);
            $sidebar=view('pages.sidebar')->with('data',$data);
            return view('master')
            ->with('main_content',$blog_details) 
            ->with('sidebar',$sidebar);
        }
    public function categoryBlog($id)
        {
            $data['all_published_category']=DB::table('tbl_category')
                                       ->select('*')
                                       ->where('publication_status',1)->get();
             $data['published_blog_title']=DB::table('tbl_blog')
                                       ->select('*')
                                       ->where('publication_status',1)
                                       ->orderBy('blog_id','DESC')
                                       ->limit(2)
                                       ->get();                           
            $data['all_published_blog']=DB::table('tbl_blog')
                                       ->select('*')
                                       ->where('category_id',$id)
                                       ->orderBy('blog_id','DESC')
                                       ->get(); 
            
            $blog_details=view('pages.home_content')->with('data',$data);
            $sidebar=view('pages.sidebar')->with('data',$data);
            return view('master')
            ->with('main_content',$blog_details) 
            ->with('sidebar',$sidebar);
        }

    public function contact()
        {
            $contact=view('pages.contact');
            return view('master')->with('main_content',$contact);

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
}
