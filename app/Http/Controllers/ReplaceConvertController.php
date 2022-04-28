<?php

namespace App\Http\Controllers;
use Novay\WordTemplate\WordTemplate;

class ReplaceConvertController extends Controller
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
        $template->setValue('lastname', 'Coder');

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

    // public function convertWordToPDF()
    // {
    //         /* Set the PDF Engine Renderer Path */
    //     $domPdfPath = base_path('vendor/dompdf/dompdf');
    //     \PhpOffice\PhpWord\Settings::setPdfRendererPath($domPdfPath);
    //     \PhpOffice\PhpWord\Settings::setPdfRendererName('DomPDF');

    //     //Load word file
    //     $Content = \PhpOffice\PhpWord\IOFactory::load(public_path('result.docx')); 

    //     //Save it into PDF
    //     $PDFWriter = \PhpOffice\PhpWord\IOFactory::createWriter($Content,'PDF');
    //     $PDFWriter->save(public_path('new-result.pdf')); 
    //     echo 'File has been successfully converted';
    // }

    // public function replaceWord()
    // {
    //     $file = public_path('certificates_template/template.rtf');
    //     $replace = [
    //         '#NAME' => 'Example',
    //         '#DATE' => '01.01.2022',
    //         '#NUMBER' => '123456789',
    //         '#ORGANIZATION' => 'Universitas X',
    //         '#POSITION' => 'Example position',
    //         '#DESCRIPTION' => 'Example description',
    //     ];

    //     $filename = 'example.doc';
    //     echo $this->export($file, $replace, $filename);
    // }

    // public function export($file = null, $replace = null, $filename = 'default.doc')
    // {
    //     if (is_null($file))
    //         return response()->json(['error' => 'This method needs some parameters. Please check documentation.']);

    //     if (is_null($replace))
    //         return response()->json(['error' => 'This method needs some parameters. Please check documentation.']);

    //     $dokumen = $this->verify($file);

    //     foreach ($replace as $key => $value) {
    //         $dokumen = str_replace($key, $value, $dokumen);
    //     }

    //     header("Content-type: application/msword");
    //     header("Content-disposition: inline; filename={$filename}");
    //     header("Content-length: " . strlen($dokumen));

    //     return $dokumen;
    // }

    // public function verify($file)
    // {
    //     $arrContextOptions = array(
    //         "ssl" => array(
    //             "verify_peer" => false,
    //             "verify_peer_name" => false,
    //         ),
    //     );

    //     $response = file_get_contents($file, false, stream_context_create($arrContextOptions));

    //     return $response;
    // }
}
