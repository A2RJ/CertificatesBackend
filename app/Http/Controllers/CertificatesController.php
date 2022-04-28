<?php

namespace App\Http\Controllers;

use App\Models\Certificates;
use Illuminate\Http\Request;

class CertificatesController extends Controller
{
    public function index()
    {
        $perPage = request()->has('perPage') ? request('perPage') : 10;
        if (request()->has('search')) {
            $certificates = Certificates::where('name', 'LIKE', '%' . request('search') . '%')
                ->orWhere('description', 'LIKE', '%' . request('search') . '%')
                ->with('fields', 'participant')
                ->paginate($perPage);
        } else {
            $certificates = Certificates::with('fields', 'participant')->paginate($perPage);
        }
        return response()->json($certificates, 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'file' => 'required|string|max:255',
            'user_id' => 'required|integer',
        ]);

        $certificates = Certificates::create($request->only(['name', 'description', 'file', 'user_id']));
        return response()->json($certificates, 201);
    }

    public function show(Certificates $certificates)
    {
        return response()->json($certificates);
    }

    public function update(Request $request, Certificates $certificates)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'file' => 'required|string|max:255',
            'user_id' => 'required|integer',
        ]);

        $certificates->update($request->only(['name', 'description', 'file', 'user_id']));
        return response()->json($certificates, 200);
    }

    public function destroy(Certificates $certificates)
    {
        return response()->json($certificates->delete(), 204);
    }

    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('certificates_template'), $filename);
            return response()->json(['file' => $filename], 200);
        } else {
            return response()->json(['error' => 'No file selected'], 400);
        }
    }
}
