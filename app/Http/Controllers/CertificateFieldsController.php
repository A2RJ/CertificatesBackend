<?php

namespace App\Http\Controllers;

use App\Models\CertificateFields;
use Illuminate\Http\Request;

class CertificateFieldsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $certificateFields = CertificateFields::paginate(10);
        return response()->json($certificateFields);
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
            'certificate_field' => 'required|string|max:255',
            'certificate_value' => 'required|string|max:255',
        ]);

        $certificateFields = CertificateFields::create($request->only(['certificate_id', 'certificate_field', 'certificate_value']));
        return response()->json($certificateFields, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CertificateFields  $certificateFields
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CertificateFields $certificateFields)
    {
        $request->validate([
            'certificate_id' => 'required|integer',
            'certificate_field' => 'required|string|max:255',
            'certificate_value' => 'required|string|max:255',
        ]);

        $certificateFields->update($request->only(['certificate_id', 'certificate_field', 'certificate_value']));
        return response()->json($certificateFields, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CertificateFields  $certificateFields
     * @return \Illuminate\Http\Response
     */
    public function destroy(CertificateFields $certificateFields)
    {
        $certificateFields->delete();
        return response()->json(null, 204);
    }
}
