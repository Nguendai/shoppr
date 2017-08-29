@extends('front-end.master')
@section('content')
<main class="tiishop_cart">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="__title">
                    <p class="fz-24 mb-0">XÁC NHẬN HÓA ĐƠN THANH TOÁN</p>
                </div>
                <div class="__cart">
                    <table class="table-bordered table-responsive text-center">
                        <tr>
                            <th>Ảnh mô tả</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                        </tr>
                        @foreach($content as $data)
                        <tr>
                            <td>
                                <img src="{!! url('uploads/products/'.$data->options->images) !!}" alt="" class="img-responsive center-block">
                            </td>
                            <td>{{$data->name}}</td>
                            <td>{{$data->qty}}</td>
                            <td>{{$data->price}}</td>
                            <td>{!! number_format($data->price * $data->qty,0,",",".") !!}đ</td>
                        </tr>
                        @endforeach
                        <tr>
                            <td colspan="7" class="clearfix pt-10-i pb-10-i">
                                <span class="fz-16">Tổng thanh toán <i class="text-danger fz-20">{{number_format($total,0,",",".")}}đ</i></span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="__email">
                    <form action="" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="">Họ & tên</label>
                            <input type="text" class="form-control" name="txtname" required>
                        </div>
                        <div class="form-group">
                            <label for="">Số điện thoại</label>
                            <input type="text" class="form-control" name="txtphone" required>
                        </div>
                        <div class="form-group">
                            <label for="">Email</label>
                            <input type="text" class="form-control" name="txtemail" required>
                        </div>
                        <div class="form-group">
                            <label for="">Địa chỉ</label>
                            <input type="text" class="form-control" name="txtaddress" required>
                        </div>
                        <button class="btn btn-primary m-font" type="submit">XÁC NHẬN MUA HÀNG</button>
                        <button class="btn btn-danger m-font" type="reset">LÀM LẠI</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
@stop
