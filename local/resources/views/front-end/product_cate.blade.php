@extends('front-end.master')
@section('content')
    <main>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 mb-30">
                    <div class="__title">
                        <h3 class="m-font mb-0">{{$name_cate}}</h3>
                    </div>
                </div>
                @foreach($mobile as $data)
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-30">
                        <div class="__product text-center wow fadeInUp">
                            <a href="{!!url('chi-tiet-san-pham/'.$data->id.'/'.$data->slug)!!}">
                                <img src="{!! url('uploads/products/'.$data->images) !!}" alt="" >
                                <h4>{{$data->name}}</h4>
                                <p>Phụ kiện: Sạc, cáp</p>
                                <p> BH chính hãng 12 tháng</p>
                                <p class="color-main3 fz-16">{!! number_format($data->price,0,",",".") !!} đ</p>
                                <div class="tiishop_overlay">
                                    <div class="tiishop_cell-wrapper">
                                        <div class="tiishop_cell-middle ">
                                            <h4>{{$data->name}}</h4>
                                            <p class="color-main3 fz-16">{!! number_format($data->price,0,",",".") !!} đ</p>
                                            <ul class="__gift text-left">
                                                <li>{{$data->promo1}}</li>
                                                <li>{{$data->promo2}}</li>
                                            </ul>
                                            <ul class="text-left">
                                                <li>Chipset: {{$data->vga}}</li>
                                                <li>Màn hình: {{$data->screen}}</li>
                                            </ul>
                                            <form action="{!! url('mua-hang/'.$data->id.'/'.$data->slug) !!}" method="get">
                                                {{csrf_field()}}
                                                <button type="submit" class=" tiishop_btn-border  color-light color-hover-gray_4 border-color-dark border-color-hover-light bgc-dark bgc-hover-light">Thêm vào giỏ</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                <div class="text-center col-xs-12">{!! $mobile->render() !!}</div>
            </div>
        </div>
    </main>
@stop
