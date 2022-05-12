<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Novay\WordTemplate\WordTemplate;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class UtilsController extends Controller
{
    /**
     * https://www.scratchcode.io/how-to-convert-word-to-pdf-in-laravel/#:~:text=Open%20the%20controller%20file%20and%20write%20down%20the%20following%20code%20into%20it.&text=Now%20access%20the%20URL%20%2Fdocument,pdf%20.
     */

    public function createCertificates()
    {
        /* Set the PDF Engine Renderer Path */
        $domPdfPath = base_path('vendor/dompdf/dompdf');

        \PhpOffice\PhpWord\Settings::setPdfRendererPath($domPdfPath);
        \PhpOffice\PhpWord\Settings::setPdfRendererName('DomPDF');

        /*@ Reading doc file */
        $template = new \PhpOffice\PhpWord\TemplateProcessor(public_path('/certificates_template/replaceExport.docx'));

        /*@ Replacing variables in doc file */
        $template->setValue('date', date('d-m-Y'));
        $template->setValue('title', 'Mr.');
        $template->setValue('firstname', 'Ardiansyah ');
        // $template->setValue('lastname', 'Coder');

        $template->setImageValue('lastname', public_path('4445645656.png'));

        // /*@ Save Temporary Word File With New Name */
        $saveDocPath = public_path('new-result.docx');
        $template->saveAs($saveDocPath);

        // Load temporarily create word file
        $Content = \PhpOffice\PhpWord\IOFactory::load($saveDocPath);

        //Save it into PDF
        $savePdfPath = public_path(uniqid(date('YmdHis'), true) . '.pdf');

        /*@ If already PDF exists then delete it */
        if (file_exists($savePdfPath)) {
            unlink($savePdfPath);
        }

        //Save it into PDF
        $PDFWriter = \PhpOffice\PhpWord\IOFactory::createWriter($Content, 'PDF');
        $PDFWriter->save($savePdfPath);
        echo 'File has been successfully converted';

        /*@ Remove temporarily created word file */
        if (file_exists($saveDocPath)) {
            unlink($saveDocPath);
        }
    }

    public function generateBarcode()
    {
        return view('barcode');
    }

    public function postBarcode(Request $request)
    {
        if ($request->has('dataURL')) {
            // get dataURL from request
            $dataURL = $request->input('dataURL');
            // get filetype from dataURL
            $filetype = substr($dataURL, 5, strpos($dataURL, ';') - 5);
            // get base64 encoded image from dataURL
            $base64 = substr($dataURL, strpos($dataURL, ',') + 1);
            // get image from base64 encoded image
            $image = base64_decode($base64);
            // get image filename
            $filename = time() . '.' . $filetype;
            // get image path
            $path = public_path('qr_code.png');
            // save image
            file_put_contents($path, $image);
            // return image path
            return $path;
        }
        // return error message
        return 'Error: invalid filetype or dataURL not found';
    }
}
