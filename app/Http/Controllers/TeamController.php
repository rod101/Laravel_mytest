<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class TeamController extends Controller {

	//Return view for Team contact information
	
	public function index()
	{
		return view('team.home');
	}

}
