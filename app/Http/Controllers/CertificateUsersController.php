<?php

namespace App\Http\Controllers;

use App\Models\CertificateUsers;
use Illuminate\Http\Request;

class CertificateUsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $certificateUsers = CertificateUsers::paginate(10);
        return response()->json($certificateUsers);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'certificate_id' => 'required|integer',
            'user_id' => 'required|integer',
        ]);

        $certificateUsers = CertificateUsers::create($request->only(['certificate_id', 'user_id']));
        return response()->json($certificateUsers, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CertificateUsers  $certificateUsers
     * @return \Illuminate\Http\Response
     */
    public function show(CertificateUsers $certificateUsers)
    {
        return response()->json($certificateUsers);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CertificateUsers  $certificateUsers
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CertificateUsers $certificateUsers)
    {
        $request->validate([
            'certificate_id' => 'required|integer',
            'user_id' => 'required|integer',
        ]);

        $certificateUsers->update($request->only(['certificate_id', 'user_id']));
        return response()->json($certificateUsers, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CertificateUsers  $certificateUsers
     * @return \Illuminate\Http\Response
     */
    public function destroy(CertificateUsers $certificateUsers)
    {
        $certificateUsers->delete();
        return response()->json(null, 204);
    }
}
