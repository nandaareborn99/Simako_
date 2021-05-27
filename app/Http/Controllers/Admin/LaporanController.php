<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class LaporanController extends Controller
{
    public function formProfilRisiko()
    {
        return view('admin.laporan.profil_risiko.form');
    }

    public function export(Request $request){

        $data = [
        'triwulan' => $request->triwulan,
        'tahun' => $request->tahun,
        'kode_bagian' => $request->kode_bagian,  
        ];

        return Excel::download(new \App\Exports\RisikoExport($data), 'export_risiko.xlsx');

    }
}
