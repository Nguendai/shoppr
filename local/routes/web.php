<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', ['as'  => 'index', 'uses' =>'PagesController@getHome']);
Route::get('search', ['as'  => 'getsearch', 'uses' =>'MailController@getSearch']);
Route::get('search-pro', ['as'  => 'getsearch', 'uses' =>'MailController@getSearchPro']);

Route::Auth();
//face book login
Route::get('auth/facebook', 'Auth\SocialController@redirectToProvider');
Route::get('auth/facebook/callback', 'Auth\SocialController@handleProviderCallback');

Route::get('auth/google', 'Auth\SocialController@redirectToProviderGoogle');
Route::get('auth/google/callback', 'Auth\SocialController@handleProviderCallbackGoogle');
//login route
Route::get('admin/login', ['as'  => 'getlogin', 'uses' =>'AdminAuth\LoginController@showLoginForm']);
Route::post('admin/login', ['as'  => 'postlogin', 'uses' =>'AdminAuth\LoginController@login']);

Route::get('admin/register', ['as'  => 'getregister', 'uses' =>'Admin\AuthController@getRegister']);
Route::post('admin/register', ['as'  => 'postregister', 'uses' =>'Admin\AuthController@postRegister']);

Route::get('admin/password/reset', ['as'  => 'getreser', 'uses' =>'Admin\LoginController@email']);

Route::get('admin/logout', ['as'  => 'getlogout', 'uses' =>'Admin\LoginController@getLogout']);

//product_detail
Route::get('loai-san-pham/{id}/{slug}','PagesController@getProduct');
Route::get('chi-tiet-san-pham/{id}/{slug}', ['as'  => 'getdetail', 'uses' =>'PagesController@Detail']);
//shopping-cart
Route::get('mua-hang/{id}/{tensanpham}',['as'=>'muahang','uses'=>'PagesController@Purchase']);
Route::get('gio-hang',['as'=>'giohang','uses'=>'PagesController@Cart']);
Route::get('xoa-san-pham/{id}',['as'=>'xoasanpham','uses'=>'PagesController@delProductCart']);
Route::get('cap-nhat/{id}/{qty}',['as'=>'capnhatsanpham','uses'=>'PagesController@updateProductCart']);
Route::get('checkout',['as'=>'checkout','uses'=>'PagesController@checkOut']);
Route::post('checkout',['as'=>'success','uses'=>'MailController@Success']);
Route::get('search-pro/{parent_id}',['as'=>'searchpro','uses'=>'PagesController@searchPro']);
//customer
Route::group(['prefix'=>'khachhang'],function (){
	Route::get('signup',['as'=>'getsignup','uses'=>'CustomerController@getSignUp']);
	Route::post('signup',['as'=>'postsignup','uses'=>'CustomerController@postSignUp']);
	
	Route::get('forgot',['as'=>'getforgot','uses'=>'CustomerController@getForgot']);
	Route::post('forgot',['as'=>'postforgot','uses'=>'CustomerController@postForgot']);
	
	Route::post('login',['as'=>'postlogin','uses'=>'CustomerController@postLogin']);
	Route::get('logout',['as'=>'logout','uses'=>'CustomerController@Logout']);
	
	Route::post('comment/{id}/{slug}',['as'=>'postcomment','uses'=>'CustomerController@postComment']);
});
//contact-us
Route::post('contact-us',['as'=>'contactus','uses'=>'MailController@Contact']);
//backend
Route::group(['prefix'=>'admin'],function(){
	Route::get('home',function(){
		return view('back-end.home');
	});
	Route::group(['prefix'=>'danhmuc'],function(){
		Route::get('add',['as'=>'getaddcat','uses'=>'CategoryController@getAdd']);
		Route::post('add',['as'=>'postaddcat','uses'=>'CategoryController@postAdd']);
		
		Route::get('/',['as'=>'getlistcat','uses'=>'CategoryController@getList']);
		
		Route::get('del/{id}',['as'=>'getdelcat','uses'=>'CategoryController@getDel']);
		
		Route::get('edit/{id}',['as'=>'geteditcat','uses'=>'CategoryController@getEdit']);
		Route::post('edit/{id}',['as'=>'posteditcat','uses'=>'CategoryController@postEdit']);
	});
	
	Route::group(['prefix'=>'sanpham'],function(){
		Route::get('add',['as'=>'getaddpro','uses'=>'ProductController@getAdd']);
		Route::post('add',['as'=>'postaddpro','uses'=>'ProductController@postAdd']);
		
		Route::get('/',['as'=>'getlistpro','uses'=>'ProductController@getList']);
		
		Route::get('del/{id}',['as'=>'getdelpro','uses'=>'ProductController@getDel']);
		
		Route::get('edit/{id}',['as'=>'geteditpro','uses'=>'ProductController@getEdit']);
		Route::post('edit/{id}',['as'=>'geteditpro','uses'=>'ProductController@postEdit']);
		
		Route::get('search',['as'=>'postsearchpro','uses'=>'ProductController@getSearch']);
		
	});
	
	Route::group(['prefix'=>'nhanvien'],function(){
		Route::get('add',['as'=>'getadduser','uses'=>'UserController@getAdd']);
		Route::post('add',['as'=>'postadduser','uses'=>'UserController@postAdd']);
		
		Route::get('/',['as'=>'getlistuser','uses'=>'UserController@getList']);
		
		Route::get('del/{id}',['as'=>'getdeluser','uses'=>'UserController@getDel']);
		
		Route::get('edit/{id}',['as'=>'getedituser','uses'=>'UserController@getEdit']);
		Route::post('edit/{id}',['as'=>'postedituser','uses'=>'UserController@postEdit']);
	});
	Route::group(['prefix'=>'khachhang'],function(){
		
		Route::get('/',['as'=>'getlistcus','uses'=>'CustomerController@getList']);
		
		Route::get('del/{id}',['as'=>'getdelcus','uses'=>'CustomerController@getDel']);
		
	});
	
	Route::group(['prefix' => 'donhang'], function() {
		
		Route::get('/',['as'=>'getoder','uses' => 'OderController@getList']);
		Route::get('date',['as'=>'getlistdate','uses' => 'OderController@getListDate']);
		Route::get('new',['as'=>'getodernew','uses' => 'OderController@getListNew']);
		
		Route::get('del/{id}',['as'=>'getdeloder','uses' => 'OderController@getDel']);
		Route::get('del-detail/{id}',['as'=>'getdeloderdetail','uses' => 'OderController@getDelDetail']);
		
		Route::get('detail/{id}',['as'=>'getdetail','uses' => 'OderController@getDetail']);
		Route::post('detail/{id}',['as'=>'postdetail','uses' => 'OderController@postDetail']);
		
		Route::get('check-detail/{id}/{od_qty}/{od_id}',['as'=>'check-detail','uses' => 'OderController@checkDetail']);
	});
});


Auth::routes();

Route::get('/home', 'HomeController@index');
