  <div class="row">
            <div class="login-box center-block">
                @include('errors.note1')
                <div class="lb-header">
                    <div class="row">
                        <div class="col-sm-6  text-center"> <a href="#" class="active" id="login-box-link">Đăng nhập</a></div>
                        <div class="col-sm-6  text-center"> <a href="{!! url('khachhang/signup') !!}" >Đăng ký</a></div>
                    </div>
                </div>
                <div class="social-login">
                    <a href="{!! url('auth/google') !!}"><i class="fa fa-google fa-lg mr-5"></i>Đăng nhập bằng google</a>
                    <a href="{!! url('auth/facebook') !!}" class="__facebook"><i class="fa fa-facebook fa-lg mr-5 "></i>Đăng nhập bằng facebook</a>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                        <form class="email-login" method="post" action="{!! url('khachhang/login') !!}">
                            {{csrf_field()}}
                            <div class="u-form-group">
                                <p>Email:</p><input type="email" name="txtemail" placeholder="Nhập Email" required/>
                            </div>
                            <div class="u-form-group center-block mb-30-i">
                                <p>Mật khẩu:</p><input type="password" name="txtpassword" placeholder="Nhập mật khẩu" required />
                            </div>
                            <div class="u-form-group text-center">
                                <button>ĐĂNG NHẬP</button>
                            </div>
                            <div class="text-center">
                                <a href="{!! url('khachhang/forgot') !!}" class="forgot-password">Quên mật khẩu?</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>

