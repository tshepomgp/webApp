<?php

namespace App\Http\Controllers;
use App\Models\pricing;

use Illuminate\Http\Request;

class PricingController extends Controller
{
	public function loadPricing(Request $request){
		$price =  pricing::latest()->get();
		$uniqueOS = pricing::select('OS')->distinct()->pluck('OS');
		$uniqueCores = pricing::select('Cores')->distinct()->pluck('Cores');
		return view('frontend.cost', compact('price', 'uniqueOS', 'uniqueCores'));

	}

	 public function loadPricing2(Request $request){
                $price =  pricing::latest()->get();
                $uniqueOS = pricing::select('OS')->distinct()->pluck('OS');
                $uniqueCores = pricing::select('Cores')->distinct()->pluck('Cores');
                return view('frontend.cost', compact('price', 'uniqueOS', 'uniqueCores'));

        }


}
