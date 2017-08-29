@extends('front-end.master')
@section('content')

<main class="tiishop_cart">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                @if(Cart::count()>0)
                <div class="__title">
                    <p class="fz-24 mb-0">GIỎ HÀNG <span class="fz-14 color-gray_8">Tất cả sản phẩm trong giỏ hàng</span></p>
                </div>
                <div class="__cart">
                    <table class="table-bordered table-responsive text-center">
                        <tr>
                            <th>Ảnh mô tả</th>
                            <th>Tên sản phẩm</th>
                            <th>Mẫu sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Hành động</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                        </tr>
                        @foreach($content as $data)
                            <form action="" method="post">
                                {{csrf_field()}}
                                <tr>
                                    <td>
                                        <img src="{!! url('uploads/products/'.$data->options->images) !!}" alt="" class="img-responsive center-block">
                                    </td>
                                    <td>{{$data->name}}</td>
                                    <td>{{$data->options->cate_name}}</td>
                                    <td><input type="number" class="text-center qty" value="{{$data->qty}}" min="0"></td>
                                    <td>
                                        <a href="" id="{!!$data->rowid!!}" class="btn btn-info glyphicon glyphicon-refresh update-cart" ></a>
                                        <a href="{!! url("xoa-san-pham/$data->rowid") !!}" class="btn btn-danger glyphicon glyphicon-trash"></a>
                                    </td>
                                    <td>{!! number_format($data->price,0,",",".") !!}đ</td>
                                    <td>{!! number_format($data->price * $data->qty,0,",",".") !!}đ</td>
                                </tr>
                            </form>
                        @endforeach
                        <tr>
                            <td colspan="7" class="clearfix">
                                <a href="{{url('/')}}" class="btn btn-warning pull-left"><i class="glyphicon glyphicon-menu-left"></i><span class="m-font">TIẾP TỤC MUA HÀNG</span></a>
                                <span class="fz-16">Tổng thanh toán <i class="text-danger fz-20">{!! number_format($total,0,",",".") !!}đ</i></span>
                                <a href="{{url('checkout')}}" class="btn btn-success m-font pull-right">TIẾN HÀNH ĐẶT HÀNG<i class="glyphicon glyphicon-menu-right"></i></a>
                            </td>
                        </tr>
                    </table>
                </div>
                @else
                    <p class="text-center alert alert-danger mb-0">Không có sản phẩm trong giỏ hàng</p>
                @endif
            </div>
        </div>
    </div>
</main>
    @stop
