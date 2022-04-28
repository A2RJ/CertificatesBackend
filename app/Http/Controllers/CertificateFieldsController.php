<?php

namespace App\Http\Controllers;

use App\Models\CertificateFields;
use Illuminate\Http\Request;

class CertificateFieldsController extends Controller
{
    public function index()
    {
        $certificateFields = CertificateFields::paginate(10);
        return response()->json($certificateFields);
    }

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

    public function destroy(CertificateFields $certificateFields)
    {
        $certificateFields->delete();
        return response()->json(null, 204);
    }
}
