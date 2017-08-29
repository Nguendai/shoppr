@extends('front-end.master')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading text-center">Khôi phục mật khẩu</div>
                @include('errors.note1')
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="{!! url('khachhang/forgot') !!}">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Nhập địa chỉ E-Mail:</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="" required>

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-envelope"></i> Gửi yếu cẩu khôi phục
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    @stop