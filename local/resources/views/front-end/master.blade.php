<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{!! url('public/front-end/assets/fonts/icon-fonts/styles.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/bootstrap/css/bootstrap.min.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/slick/slick.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/jquery_ui/jquery-ui.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/jquery_ui/jquery-ui.theme.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/slick/slick-theme.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/wow/css/libs/animate.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/vendors/wow/css/site.css') !!}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css.map" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/FontAwesome.otf" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.eot" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.svg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.ttf" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.woff" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.woff2" />
    <link href="https://fonts.googleapis.com/css?family=Raleway|Montserrat" rel="stylesheet">
    <link rel="stylesheet" href="{!! url('public/front-end/assets/css/helper_class.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/assets/css/reset.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/assets/css/login_style.css') !!}">
    <link rel="stylesheet" href="{!! url('public/front-end/assets/css/main.css') !!}">
</head>
<body ng-app="angularAqua">
<div class="tiishop_topbar hidden-sm hidden-xs">
    <div class="container ">
        <div class="row">
            <div class="col-md-5">
                <div class="__social text-left">
                    <ul>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                        <li><a href=""><i class="fa fa-instagram"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        <li><a href=""><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7">
                <div class="__topbar-info text-right">
                    <ul>
                        <li><i class="fa fa-globe"></i><span>Ngôn ngữ: VNI</span></li>
                        <li><i class="fa fa-phone"></i><span>(+84)1686232328</span></li>
                        <li><i class="fa fa-clock-o"></i><span>T2 – T7: 9:00 – 18:00</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<header id="tiishop-header"  class="clearfix" >
    <div class="container">
        <div class="row" style="display: flex; align-items: center;">
            <div class="col-md-2 col-xs-9 __img">
                <a href="{!! url('/') !!}"><img src="{!! url('public/front-end/assets/image/tiishop2.png') !!}" alt="" class="img-responsive tiishop_img-boss"></a>
            </div>
            <div class="col-md-7 col-xs-3" ng-controller="navController">
                <?php
                $data = DB::table('categories')->select('id','name','parent_id','slug')->where('parent_id',0)->get();
                ?>
                <ul class="tiishop_nav" ng-class={"show-menu":isActive}>
                    <li class="visible-xs visible-sm mb-10 "><a href="{!! url('/') !!}"><img src="{!! url('public/front-end/assets/image/tiishop.png') !!}" alt=""  class="img-responsive"></a></li>
                    <li><a href="{!! url('/') !!}"><i class="__menu-icon fa fa-home fz-18"></i>TRANG CHỦ</a></li>
                    @foreach($data as $list)
                        <li ><a href="">{{$list->name}}<i class="fa fa-angle-down"></i></a>
                            <ul>
                                <?php $data2 = DB::table('categories')->select('id','name','parent_id','slug')->where('parent_id',$list->id)->get();?>
                                @foreach($data2 as $list2)
                                    <li ><a href="{{url('loai-san-pham/'.$list2->id.'/'.$list2->slug)}}">{{$list2->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                    @endforeach
                    <li><a href="{!! url('/') !!}"><i class="__menu-icon fa fa-map fz-16"></i>LIÊN HỆ</a></li>
                </ul>
                <div class="__cart visible-xs visible-sm" data-content="{!! Cart::count() !!}">
                    <a href=""><i class="fa fa-shopping-cart"></i><span class="__number-product"></span></a>
                    <div class="__cart-view text-center color-light">
                        <table class="table-responsive table  fz-12 bgc-gray_2 mb-0">
                            <tbody class="text-center">
                            <tr>
                                <th>Ảnh</th>
                                <th>SL</th>
                                <th>Tên <span></span></th>
                                <th>Giá</th>
                            </tr>
                            </tbody>
                            <tbody>
                            @if(Cart::count() > 0)
                                @foreach(Cart::content() as $data)
                                    <tr>
                                        <td><img src="{!! url('uploads/products/'.$data->options->images) !!}" alt="" class="img-responsive center-block"></td>
                                        <td>{{$data->qty}}</td>
                                        <td>{{$data->name}}</td>
                                        <td>{{$data->price}}</td>
                                    </tr>
                                @endforeach
                                <td colspan="4" class="clearfix">
                                    <span class="pull-left pt-5">Tổng:{{ number_format(Cart::total(),0,",",".") }}đ</span>
                                    <a href="{!! URL::route('giohang') !!}" class="pull-right tiishop_btn-border color-dark bgc-light border-color-light border-color-hover-light_e color-hover-dark bgc-hover-main6 pt-2 pb-2">CHI TIẾT</a>
                                </td>
                                </tr>
                            @else
                                <tr>
                                    <td colspan="4">Hện đang trống</td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="visible-sm visible-xs __hambuger"  ng-click="activeButton()" ng-class="{'fade-top':isActive}">
                    <span ng-class="{'fade':isActive}"></span>
                </div>
            </div>
            <div class="col-md-1 clearfix hidden-xs hidden-sm pr-0">
                <div class="__bonus pull-left">
                    <div class="__search">
                        <a href="" id="search">
                            <i id="icon-search1" class="fa fa-search"></i>
                        </a>
                    </div>
                    <div class="search-btn clearfix">
                        <form action="{!! url('search') !!}" method="get" class="form-group">
                            {{csrf_field()}}
                            <div class="form-group clearfix">
                                <h5 for="" class=" m-font color-light">TÌM KIẾM</h5>
                                <input type="text" class="form-control tiishop_search" name="txttk" placeholder="Nhập từ khóa" /><button class="__search-btn"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </form>
                        <form action="{{url('search-pro')}}" method="get">
                            <div id="search-pro-bonus" class="form-group">
                                <h5 class="m-font color-light">LỌC NÂNG CAO</h5>
                                {{csrf_field()}}
                                <select name="sltcategory" id="__search-pro" class="form-control" required>
                                    <option value="" class="form-control">Chọn danh mục</option>
                                    <?php $cate_pro=DB::table('categories')->select('name','id')->where('parent_id',0)->get(); ?>
                                    @foreach($cate_pro as $val1)
                                        <option value="{{$val1->id}}" @if(isset($id) && $val1->id==$id) selected @endif>{{$val1->name}}</option>
                                        @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="sltproduct" id="product-append" required class="form-control" >
                                    <option value="" >Chọn danh mục sản phẩm</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="sltprice" id="" class="form-control" required>
                                    <option value="">Chọn mức giá</option>
                                    <option value="1">Dưới 5 triệu</option>
                                    <option value="2">5 đến 10 triệu</option>
                                    <option value="3">10 đến 15 triệu</option>
                                    <option value="4">15 đến 20 triệu</option>
                                    <option value="5">Hơn 20 triệu</option>
                                </select>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Lọc sản phẩm</button>
                            </div>

                        </form>
                    </div>
                    <div class="__cart" data-content="{!! Cart::count() !!}">
                        <a href=""><i class="fa fa-shopping-cart"></i><span class="__number-product"></span></a>
                        <div class="__cart-view text-center color-light">
                            <table class="table fz-12 bgc-gray_2 mb-0">
                                <tbody class="text-center">
                                <tr>
                                    <th>Ảnh</th>
                                    <th>SL</th>
                                    <th>Tên <span></span></th>
                                    <th>Giá</th>
                                </tr>
                                </tbody>
                                <tbody>
                                @if(Cart::count() > 0)
                                    @foreach(Cart::content() as $data)
                                        <tr>
                                            <td><img src="{!! url('uploads/products/'.$data->options->images) !!}" alt="" class="img-responsive center-block"></td>
                                            <td>{{$data->qty}}</td>
                                            <td>{{$data->name}}</td>
                                            <td>{{number_format($data->price,0,",",".")}}đ</td>
                                        </tr>
                                        <tr>
                                            @endforeach
                                            <td colspan="4" class="clearfix">
                                                <span class="pull-left pt-5">Tổng:{{ number_format(Cart::total(),0,",",".") }}đ</span>
                                                <a href="{!! URL::route('giohang') !!}" class="pull-right tiishop_btn-border color-dark bgc-light border-color-light border-color-hover-light_e color-hover-dark bgc-hover-main6 pt-2 pb-2">CHI TIẾT</a>
                                            </td>
                                        </tr>
                                        @else
                                            <tr>
                                                <td colspan="4">Giỏ hàng hiện đang trống</td>
                                            </tr>
                                        @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 clearfix hidden-xs hidden-sm pl-0">

                @if(Auth::guest())
                    <div class="__login m-font pull-right">
                        <a href="" data-toggle="modal" data-target="#login-modal" class="tiishop_btn fz-12 color-light bgc-main1 color-hover-light bgc-hover-main2"><i class="fa fa-user-circle pr-5"></i>ĐĂNG NHẬP</a>
                    </div>
                @else

                    <li class="dropdown __login">
                        <img class=" __avatar" src="{{Auth::user()->images}}" alt="" />
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{ url('/user') }}">Thông tin cá nhân</a></li>
                            <li><a href="{{ url('khachhang/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                        </ul>
                    </li>
                @endif
            </div>
            <div class="tiishop-separator"></div>
        </div>
    </div>
</header>

@include('front-end.slider')
@include('front-end.banner-min')
@yield('content')
<div class="modal fade pt-80" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-body">
            @include('front-end.login')
        </div>
    </div>
</div>
<div class="__separator">
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 mb-30">
                <img src="{!! url('public/front-end/assets/image/tiishop.png') !!}" alt="" >
                <p class="pt-10 pb-10">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                <ul class="__social">
                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                    <li><a href=""><i class="fa fa-instagram"></i></a></li>
                    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 mb-30">
                <h2 class="m-font">LIÊN HỆ</h2>
                <ul class="__contact">
                    <li><i class="fa fa-map-marker"></i><p>102A,Nhà vườn,KĐT Việt Hưng,Long Biên,Hà Nội</p></li>
                    <li><i class="icon-phone"></i><p>016868232328</p></li>
                    <li><i class="icon-paper-plane"></i><p>tienlq@newayict.com</p></li>
                    <li><i class="icon-mobile"></i><p>01686232328</p></li>
                    <li><i class="icon-clock"></i><p>T2 - T7:9:00 - 18:00</p></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 mb-30">
                <h2 class="m-font">TUYỂN DỤNG</h2>
                <ul class="__work">
                    <li><a href="">Tuyển dụng mới nhất</a></li>
                    <li><a href="">Câu hỏi thường gặp</a></li>
                    <li><a href="">Các chính sách</a></li>
                    <li><a href="">Hệ thống bảo hành</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 mb-30">
                <h2 class="m-font">HỆ THỐNG <i></i></h2>
                <ul class="__work">
                    <li><a href="">Kiểm tra hàng Apple chính hãng</a></li>
                    <li><a href="">Giới thiệu máu đổi trả</a></li>
                    <li><a href="">Giới thiệu xả hàng</a></li>
                    <li><a href="">Tin khuyến mãi</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<div class="footer_below m-font text-center pt-25 pb-25 color-light_d">
    © 2017 Tii Shop. Copy right OEC Solution
</div>
<div id="scroll" class="tiishop_scroll-top"><i class="icon-up"></i></div>
@include('front-end.contact-us')
</body>
<script src="{!! url('public/front-end/vendors/jquery/jquery-1.12.0.min.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/bootstrap/js/bootstrap.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/angular/angular.min.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/angular/angular-route.min.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/angular/angular-sanitize.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/angular/angular-animate.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/slick/slick.min.js') !!}"></script>
<script src="{!! url('public/front-end/vendors/wow/dist/wow.js') !!}"></script>
<script src="{!! url('public/front-end/assets/js/main.js') !!}"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#__search-pro').on('change',function () {
            var parent_id =$(this).val();
            var token =$("input[name='_token']").val();
            $.ajax({
                url:'search-pro/'+parent_id,
                type:'GET',
                dataType: 'json',
                cache:'FALSE',
                data:{"_token":token,"parent_id":parent_id},
                success:function (data) {
                    if(data){
                        var html="";
                        $.each(data,function (key,val) {
                        html+="<option value='"+val.id+"'>"+val.name+"</option><br>";
                        });
                        $("#product-append").html(html);
                    }
                }
            })
        });

        if ($('#tiishop-header').length > 0) {

            $(window).scroll(function () {
                var e = $(window).scrollTop();
                if (e > 250) {
                    $('#tiishop-header').addClass("tiishop_fixed");
                    $(".search-btn").addClass("add-bonus");
                    $(".__cart-view").addClass("add-pt");
                    $(".tiishop_nav").addClass("__cart-bonus");
                }
                else{
                    $('#tiishop-header').removeClass("tiishop_fixed");
                    $(".search-btn").removeClass("add-bonus");
                    $(".__cart-view").removeClass("add-pt");
                    $(".tiishop_nav").removeClass("__cart-bonus");
                }
            });
        }
        if ($("#scroll").length > 0) {

            $(window).scroll(function () {
                var e = $(window).scrollTop();
                if (e > 350) {
                    $("#scroll").show();
                }
                else {
                    $("#scroll").hide();
                }
            });
            $("#scroll").on("click", function () {
                $("body,html").animate({scrollTop: 0}, 500);
            });
        }
        setTimeout(function () {
            $('.tiishop_alert').slideUp('2000');
        },7000);
        $("#search").on('click',function () {
            $(".search-btn").slideToggle();
            $("#icon-search1").toggleClass("fa-close");

        });
        $(".tiishop-slider").slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear',
            autoplay:true,
            prevArrow: '<a class="button_left"></a>',
            nextArrow: '<a class="button_right"></a>'
        });
        $(".tiishop-slider1").slick({
            dots: true,
            infinite: true,
            speed: 500,
            fade: true,
            cssEase: 'linear',
            autoplay:true,
            prevArrow: '<a class="button_left"></a>',
            nextArrow: '<a class="button_right"></a>'
        });

        $('.__click').on('click',function () {
            $('#contact-us-main').show();
            $(this).hide();
            $('.__close').show();
        });
        $('.__close').on('click',function () {
            $('#contact-us-main').hide();
            $(this).hide();
            $('.__click').show();
        });

        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor:'.slider-for',
            dots: true,
            centerMode: true,
            focusOnSelect: true
        });
    });
    wow = new WOW(
        {
            animateClass: 'animated',
            offset:       100,
            callback:     function(box) {
                console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
            }
        }
    );
    wow.init();
</script>
</html>