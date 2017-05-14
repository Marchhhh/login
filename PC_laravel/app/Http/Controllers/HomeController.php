<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Task;
use Validator;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return view('tasks', [
          'tasks' => Task::orderBy('created_at', 'asc')->get()
      ]);
        //return view('tasks');
    }
    public  function addtask(Request $request)
    {
          $validator = Validator::make($request->all(), [
              'name' => 'required|max:255',
          ]);

          if ($validator->fails()) {
              return redirect('/home')
                  ->withInput()
                  ->withErrors($validator);
          }

          $task = new Task;
          $task->name = $request->name;
          $task->save();

          return redirect('/home');
    }

}
