<?php

namespace App\Http\Controllers;
use App\Models\pricing;


use Illuminate\Http\Request;

class ViewPriceController extends Controller
{
       public function fetchPricing(Request $request)
       {
        $request->validate([
        'os' => 'required|string',
        'cores' => 'required|string',
       'ram' => 'required|string',
        'storage' => 'required|string',
    ]);

    $pricing = pricing::where('OS', $request->os)
        ->where('Cores', $request->cores)
        ->where('Ram', $request->ram)
        ->where('Storage', $request->storage)
        ->first();
    if ($pricing) {
        return response()->json(['success' => true, 'MTNprice' => $pricing->Selling_price, 'azureInstance' => $pricing->Azure_instance, 'diff'  => $pricing->diff, 'mrr'  => $pricing->
total_MRR, 'cost'  => $pricing->Cost, 'azureprice'  => $pricing->Azure_Price]);
    } else {
        return response()->json(['success' => false, 'pricing' => $pricing]);
    }
}

}
