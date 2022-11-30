<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;

class MainController extends Controller
{
    protected $slider;
    protected $menu;
    protected $product;

    public function __construct(SliderService $slider, MenuService $menu,
        ProductService $product)
    {
        $this->slider = $slider;
        $this->menu = $menu;
        $this->product = $product;
    }

    public function index()
    {
        return view('home', [
            'title' => 'Nhà hàng đồ chay ',
            'sliders' => $this->slider->show(),
            'menus' => $this->menu->show(),
            'products' => $this->product->get()
        ]);
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page', 0);
        $result = $this->product->get($page);
        if (count($result) != 0) {
            $html = view('products.list', ['products' => $result ])->render();

            return response()->json([ 'html' => $html ]);
        }

        return response()->json(['html' => '' ]);
    }
    public function show()
    {
        return view('home', [
            'title' => 'Nhà hàng đồ chay ',
        ]);
    }
    public function tin_tuc()
    {
        return view('tin_tuc', [
            'title' => 'Nhà hàng đồ chay ',
            'products' => $this->product->get(),
        ]);
    }
    public function mam_chay()
    {
        return view('mam_chay', [
            'title' => 'Nhà hàng đồ chay ',
            'products' => $this->product->get(),
        ]);
    }
    public function gioi_thieu()
    {
        return view('gioi_thieu', [
            'title' => 'Nhà hàng đồ chay ',
            'products' => $this->product->get(),
        ]);
    }
    
}
