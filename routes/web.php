<?php

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
//     return view('master');
// });
Route::get('/','WelcomeController@index')->name('home');
Route::get('/blog-details/{id}','WelcomeController@blog_details')->name('blog details');
Route::get('/category-blog/{id}','WelcomeController@categoryBlog');
Route::get('/contact','WelcomeController@contact')->name('contact');


// admin panel start
Route::get('/admin-panel','AdminController@index')->name('log in');
Route::post('/admin-login','AdminController@admin_login_check');
Route::get('/dashboard','SuperAdminController@index')->name('dashboard');
// catagory
Route::get('/add_category','SuperAdminController@add_category')->name('add category');
Route::post('/save_category','SuperAdminController@save_category');
Route::get('/manage_category','SuperAdminController@manage_category')->name('manage category');
Route::get('/unpulished_category/{id}','SuperAdminController@unpulished_category');
Route::get('/pulished_category/{id}','SuperAdminController@published_category');
Route::get('/edit_category/{id}','SuperAdminController@edit_category')->name('edit category');
Route::post('/update_category','SuperAdminController@update_category');
Route::get('/delete_category/{id}','SuperAdminController@delete_category');
// end category
//start blog
Route::get('/add_blog','SuperAdminController@add_blog')->name('add blog');
Route::post('/save_blog','SuperAdminController@save_blog');
Route::get('/manage_blog','SuperAdminController@manage_blog')->name('manage blog');
Route::get('/unpulished_blog/{id}','SuperAdminController@unpulished_blog');
Route::get('/pulished_blog/{id}','SuperAdminController@published_blog');
Route::get('/edit_blog/{id}','SuperAdminController@edit_blog')->name('edit blog');
Route::post('/update_blog','SuperAdminController@update_blog');
Route::get('/delete_blog/{id}','SuperAdminController@delete_blog');
//end blog
Route::get('/admin-logout','SuperAdminController@admin_logout');

Auth::routes();


