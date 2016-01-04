<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class PagesController extends Controller {

	public function index()
	{
		//will create views for this page later
		return 'welcome to my website';
	}
	
	public function about()
	{
		//will create views for this page later
		return 'Learn a little about me';
	}

}
