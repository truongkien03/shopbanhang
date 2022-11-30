@extends('main')

@section('content')
<!-- Slider -->
<section class="section-slide">
    <div class="wrap-slick1">
        <div class="slick1">

            @foreach($sliders as $slider)

            <div class="item-slick1" style="background-image: url({{ $slider->thumb }});">
                <div class="container h-full">
                    <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                        <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                            <span class="ltext-101 cl2 respon2">
                                Thực phẩm sạch
                            </span>
                        </div>

                        <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                            <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                {{ $slider->name }}
                            </h2>
                        </div>

                        <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                            <a href="{{ $slider->url }}" class="flex-c-m stext-101 cl10 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                Mua Ngay
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>


<!-- Banner -->
<div style="margin-left: 49px;" class="sec-banner bg0 p-t-80 p-b-50" >
    <h1 style="text-align: center; margin-bottom: 30px; font-size: 4rem; margin-left: -82px;;">MENU</h1>
    
    <div class="container">
        <div class="row">
            @foreach($menus as $menu)
            <div id="section3" class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                <!-- Block1 -->
                <div class="block1 wrap-pic-w">
                    <img src="/template/images/banner/banner-1.jpg" alt="IMG-BANNER">

                    <a href="/danh-muc/{{ $menu->id }}-{{ \Str::slug($menu->name, '-') }}.html" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                        <div class="block1-txt-child1 flex-col-l">
                            <span class="block1-name ltext-102 trans-04">
                                {{ $menu->name }}
                            </span>

                            <span class="block1-info stext-102 trans-04 p-b-8">
                                Promo
                            </span>
                        </div>

                        <div class="block1-txt-child2 p-b-4 trans-05">
                            <div class="block1-link stext-101 cl0 trans-09">
                            Order
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>


<!-- Product -->
<section class="bg0 p-t-23 p-b-140">
    <div class="container">
        <div class="p-b-10">
            <h3 class="ltext-103 cl5">
            </h3>
        </div>

        <div class="flex-w flex-sb-m p-b-52">
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                    <div class="col medium-7 small-12 large-7">
                        <div class="col-inner text-center">
                            <h6 class="thin-font uppercase"><span style="font-size: 100%;">Nhà Hàng Chay Đà Nẵng </span></h6>
                            <p><img loading="lazy" class="wp-image-328 aligncenter" src="https://nhahangchayans.com/wp-content/uploads/2020/04/icon-cai-xanh-400x400.png" alt="" width="44" height="44"></p>
                            <p class="p1" style="text-align: center; font-size: 20px;"><span style="font-size: 90%;">Giang Kien Vegetarian Cuisines tự hào là lá cờ đi đầu trong sứ mệnh thúc đẩy phong trào khuyến khích giới trẻ ăn Chay tại Việt Nam<b>&nbsp;</b>Cam kết mang lại những giá trị Ẩm thực Chay ngon nhất, lành nhất và đầy cảm hứng nhất đến tất cả mọi người !</span></p>
                            <p><em>Nhà hàng chay Đà Nẵng –&nbsp;Giang Kien Vegetarian Cuisines</em></p>
                        </div>
                    </div>
                </button>
            </div>
        </div>

        <div id="loadProduct">
            @include('products.list')
        </div>


        <!-- Load more -->
        <div class="flex-c-m flex-w w-full p-t-45" id="button-loadMore">
            <input type="hidden" value="1" id="page">
            <a onclick="loadMore()" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                Load More
            </a>
        </div>
    </div>
</section>
@endsection