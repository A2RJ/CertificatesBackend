<?php

namespace App\Http\Controllers;

use App\Models\CertificateFields;
use Illuminate\Http\Request;

class CertificateFieldsController extends Controller
{
    public function index($certificates)
    {
        $certificateFields = CertificateFields::where('certificate_id', $certificates)->get();
        return response()->json($certificateFields);
    }

    public function store(Request $request)
    {
        $request->validate([
            '*.certificate_id' => 'required|integer',
            '*.certificate_field' => 'required|string|max:255',
        ]);

        $certificateFields = [];
        foreach ($request->all() as $certificateField) {
            $certificateFields[] = $certificateField;
        }

        $certificate = CertificateFields::insert($certificateFields);
        return response()->json($certificate, 201);
    }

    public function destroy($certificate, $certificateField)
    {
        $certificate = CertificateFields::where('certificate_id', $certificate)->where('certificate_field_id', $certificateField)->first();
        $certificate->delete();

        return response()->json($certificate, 204);
    }
}
