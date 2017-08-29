@extends('front-end.master')
@section('content')
    <main class="tiishop_register">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="__signup">
                        <div class="panel-heading text-center __heading">
                            <h4 class="text-primary mb-0 m-font">ĐĂNG KÝ TÀI KHOẢN MỚI</h4>
                        </div>
                        @include('errors.note1')
                        <div class="row">
                            <div class="__inner clearfix">
                                <form action="" method="post">
                                    {{csrf_field()}}
                                    <div class="col-md-4 __label">
                                        <label for="">Họ & tên :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="txtname" value="{!! old('txtname') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 __label">
                                        <label for="">Địa chỉ :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="txtaddress" value="{!! old('txtaddress') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 __label">
                                        <label for="">Số điện thoại :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="tel" name="txttel" value="{!! old('txttel') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 __label">
                                        <label for="">Email :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" name="txtemail" value="{!! old('txtemail') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 __label">
                                        <label for="">Mật khẩu :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="password" name="txtpassword" value="{!! old('txtpassword') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 __label">
                                        <label for="">Nhập lại mật khẩu :</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group mb-20">
                                            <input type="password" name="txtrepassword" value="{!! old('txtrepassword') !!}" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 text-center">
                                        <button class="btn btn-primary m-font" type="submit"><i class="fa fa-btn fa-user mr-5"></i>ĐĂNG KÝ</button>
                                        <a href="{!! url('/') !!}" class="btn btn-danger m-font" type="submit"><i class="glyphicon glyphicon-menu-left mr-5"></i>QUAY LẠI</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@stop