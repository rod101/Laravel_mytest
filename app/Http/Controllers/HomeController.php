<?php namespace App\Http\Controllers;


use DB;

class HomeController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for users that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		$contact = DB::table('contact')->get();
		//dd($contact);
		return view('home', compact('contact'));
	}
	
	public function show($id)
	{
		$contacts = DB::table('contact')->find($id);
		return view('teams.show', compact('contacts'));
		//return $id; //-->running test to see what id will return
	}
	

}
