<?php

use App\Http\Controllers\PricingController;
use App\Http\Controllers\ViewPriceController;
use Illuminate\Support\Facades\Route;

Route::controller(PricingController::class)->group(function() {
    Route::get('/', 'loadPricing')->name('load.pricing');
    Route::get('/test', 'loadPricing2')->name('load.pricing2');
});

Route::controller(ViewPriceController::class)->group(function() {
    Route::post('/fetch/pricing', 'fetchPricing')->name('view.pricing');
});

