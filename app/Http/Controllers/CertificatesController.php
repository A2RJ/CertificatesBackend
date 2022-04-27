<?php

namespace App\Http\Controllers;

use App\Models\Certificates;
use Illuminate\Http\Request;

class CertificatesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $certificates = Certificates::paginate(10);
        return response()->json($certificates);
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
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'file' => 'required|string|max:255',
            'user_id' => 'required|integer',
        ]);

        $certificates = Certificates::create($request->all());
        return response()->json($certificates, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Certificates  $certificates
     * @return \Illuminate\Http\Response
     */
    public function show(Certificates $certificates)
    {
        return response()->json($certificates);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Certificates  $certificates
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Certificates $certificates)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'file' => 'required|string|max:255',
            'user_id' => 'required|integer',
        ]);

        $certificates->update($request->all());
        return response()->json($certificates, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Certificates  $certificates
     * @return \Illuminate\Http\Response
     */
    public function destroy(Certificates $certificates)
    {
        $certificates->delete();
        return response()->json(null, 204);
    }

    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('certificates_template'), $filename);
            return response()->json(['file' => $filename]);
        }
    }
}
