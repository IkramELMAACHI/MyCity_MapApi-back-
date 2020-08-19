<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Favori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = Auth::user();
        if ($request->type == '') {
            $favoris_list = Favori::where('user_id',$user->id)->paginate(10);
        } else {
            $favoris_list = Favori::where([['user_id',$user->id],['type',$request->type]])->paginate(10);
        }
        
        return response()->json(['success' => $favoris_list], 200);
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
        $user = Auth::user();
        $favori = Favori::create(array_merge($request->all(),['user_id' => $user->id]));
        return response()->json($favori,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Favori  $favori
     * @return \Illuminate\Http\Response
     */
    public function show(Favori $favori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Favori  $favori
     * @return \Illuminate\Http\Response
     */
    public function edit(Favori $favori)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Favori  $favori
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Favori $favori)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Favori  $favori
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $favori = Favori::find($id);
        $favori->delete();
        return response()->json(null,204);
    }
}
