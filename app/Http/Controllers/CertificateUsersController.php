<?php

namespace App\Http\Controllers;

use App\Models\CertificateUsers;
use Illuminate\Http\Request;

class CertificateUsersController extends Controller
{
    public function index()
    {
        $certificateUsers = CertificateUsers::paginate(10);
        return response()->json($certificateUsers);
    }

    public function store(Request $request)
    {
        $request->validate([
            'certificate_id' => 'required|integer',
            'user_id' => 'required|integer',
        ]);

        $certificateUsers = CertificateUsers::create($request->only(['certificate_id', 'user_id']));
        return response()->json($certificateUsers, 201);
    }

    public function show(CertificateUsers $certificateUsers)
    {
        return response()->json($certificateUsers);
    }

    public function update(Request $request, CertificateUsers $certificateUsers)
    {
        $request->validate([
            'certificate_id' => 'required|integer',
            'user_id' => 'required|integer',
        ]);

        $certificateUsers->update($request->only(['certificate_id', 'user_id']));
        return response()->json($certificateUsers, 200);
    }

    public function destroy(CertificateUsers $certificateUsers)
    {
        $certificateUsers->delete();
        return response()->json(null, 204);
    }
}
