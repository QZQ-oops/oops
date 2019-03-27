$(function () {
    var val1 = cookie.get('user');
    if (val1) {
        $('.ming').html(val1 + '欢迎您')
        $('.outlog').css('display', 'block');
        $('.onlog').css('display', 'none');
        //点击退出
        $('.tuichu').click(function () {
            var exp = new Date();
            exp.setTime(exp.getTime() - 1);
            document.cookie = 'user' + '=' + escape('') + ';expires=' + exp.toUTCString() + ';path=/YY'
            $('.outlog').css('display', 'none');
            $('.onlog').css('display', 'block');
            window.location.reload();
        })
    } else {
        $('.outlog').css('display', 'none');
        $('.onlog').css('display', 'block');

    }
    //头部送货显示与隐藏
    $('.header1').hover(function () {
        $('.sent').css('background-color', 'white');
        $('.shanghao').css('display', 'none');
        $('.xiahao').css('display', 'block');
        $('.add').css('display', 'block');
    },
        function () {
            $('.sent').css('background-color', '#f1f1f1');
            $('.shanghao').css('display', 'block');
            $('.xiahao').css('display', 'none');
            $('.add').css('display', 'none');
        }
    );
    //头部壹药网现实与隐藏
    $('.net').hover(function () {
        $('.netshow').css('display', 'block');
        $('.netshow dd').on('mouseover', function () {
            $('.netshow dd').css('background', 'white');
            $(this).css('background', '#ccc');
        })
    },
        function () {
            $('.netshow').css('display', 'none');
        }
    );
    //头部手机隐藏与出现
    $('.shouji').hover(function () {
        $('.shoujiyinchang').css('display', 'block');
        $('.shoujierweima').css('display', 'block');
    }, function () {
        $('.shoujiyinchang').css('display', 'none');
        $('.shoujierweima').css('display', 'none');
    });
    //二级导航的显示与隐藏
    $('#nav-list dl dd').hover(function () {
        $('.tow').css('display', 'block');
        $('.tow li').css('display', 'none');
        $('.tow li').eq($(this).index() - 1).css('display', 'block');

        $('.tow li').eq($(this).index).hover(function () {
            // console.log(this)
            $('.tow').eq(0).css('diplay', 'block')
            $('.tow li').eq($(this).index()).css('display', 'block');
        }, function () {
            $('.tow').css('display', 'none');
        });

    }, function () {
        $('.tow li').css('display', 'none');
        // $('.tow').css('display', 'none');
    });

    // $('.tow li').hover(function () {
    //     // console.log(this)
    //     $('.tow').eq(0).css('diplay', 'block')
    //     $('.tow li').eq($(this).index()).css('display', 'block');
    // }, function () {
    //     $('.tow').css('display', 'none');
    // });

    // $('#nav-list').hover(function () {
    //     $('#nav-list dl dd').css('display', 'block');
    // }, function () {
    //     $('#nav-list dl dd').css('display', 'none');
    // })

    //侧栏广告显示与隐藏
    $('.ul1 li').hover(function () {
        $('.qq').eq($(this).index()).css('display', 'none');
        $('.ww').eq($(this).index()).css('display', 'block');
    }, function () {
        $('.qq').eq($(this).index()).css('display', 'block');
        $('.ww').eq($(this).index()).css('display', 'none');
    });
    //侧栏在线资讯图表
    $('.ul1 li:first').hover(function () {
        $('.zaixian').css('display', 'block');
    }, function () {
        $('.zaixian').css('display', 'none');
    });

    $('.zaixian').hover(function () {
        $('.zaixian').css('display', 'block');
    }, function () {
        $('.zaixian').css('display', 'none');
    });

    //回到顶部
    $('.ul1 li:last').click(function () {
        $('html,body').animate({ scrollTop: 0 }, 'slow');
    });




    //商品详情与买家评论切换
    $('.xq').click(function () {
        $('.xq').css('background', 'white');
        $('.pl').css('background', '#f7f7f7');
        $('#tabCon').css('display', 'block');
        $('#pp').css('display', 'none');
    })
    $('.pl').click(function () {
        $('.xq').css('background', '#f7f7f7');
        $('.pl').css('background', 'white');
        $('#pp').css('display', 'block');
        $('#tabCon').css('display', 'none');
    });

    //详情页渲染
    // function xuanRan() {
    var id = decodeURI(location.search).slice(1);//获取列表传输过来的参数
    // console.log(id)
    $.ajax({
        type: "get",
        url: '../api/details.php',
        data: 'goodsid=' + id,
        success: function (str) {
            var arr = JSON.parse(str);
            var arr1 = arr.data
            // console.log(arr1)
            var res = arr1.map(function (item) {
                return `
                        <div>
                            <div class="ziying fl">
                                <img src="../images/list/${item.ziying}" alt="">
                            </div>
                            <div class="haiwaigou fl">
                                <img src="../images/list/${item.haiwaigou}" alt="">
                            </div>
                            <h2 class="biaoti">${item.mingzi}</h2>
                        </div>
                        <div class="title">${item.title}</div>
                        <div class="coupon">
                            <div class="fl yao">药网价：</div>
                            <div class="price fl">${item.price}</div>
                            <div class="fl pinglun">累计评论：</div>
                            <div class="fl pn">${item.pinglun}</div>
                        </div>
                        <div class="sell">
                            <div class="fl zeng">满赠</div>
                            <div class="zw fl">买3件，即可获得以下一件赠品，送完即止</div>
                        </div>
                        <div class="sl">
                            <div class="shu fl">数量:</div>
                            <input type="text" value="1" class="fl su">
                            <div class="ac fl">
                                <div class="zheng" style="margin-bottom:3px;">∧</div>
                                <div class="jiang">∨</div>
                            </div>
                        </div>
                        <div class="shou">
                            <div>
                                <img src="../images/list/sou.png" alt="">
                            </div>
                            <div class="em">
                                <img src="../images/list/em.png" alt="">
                            </div>
                        </div>
                        <div class="gouwu">
                            <input type="button" class="btn_shopping_cart" value="加入购物车">
                            <div class="spop" id="addCartWin" style="position: absolute; margin-top: 0px; z-index: 10000; top: 460px;">
                                <div class="spoptop">
                                    <a class="popwinClose"  href="javascript:void(0);">关闭</a>
                                    <font class="toushu">1件商品加入购物车</font>
                                </div>
                                <div class="spopro">
                                    <div class="spopimg fl">
                                        <img src="../images/list/${item.simg1}" alt="">
                                    </div>
                                    <div class="spopbox fl">
                                        <p class="spopstitle"></p>
                                        <span class='addNum'>加入数量：1</span>
                                        <span>总计金额：
                                                <i class="red zongji">¥109.00</i>
                                        </span>
                                        <div class="spopbtn">
                                            <a class="red_btn" href="javascript:void(0)" >继续购物</a>
                                            <a class="red_border_btn" href="javascript:void(0)">去结算</a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="chengnuo">本商品由瑞兰康保健品专营店提供销售和发货</div>
                `
            })

            var res1 = arr1.map(function (item) {
                return `
                <li>
                <div class="small-img">
                    <img src="../lib/jQueryMagnifier/images/${item.simg1}" />
                </div>
            </li>
            <li>
                <div class="small-img">
                    <img src="../lib/jQueryMagnifier/images/${item.simg2}" alt="">
                </div>
            </li>
            <li>
                <div class="small-img">
                    <img src="../lib/jQueryMagnifier/images/${item.simg3}" alt="">
                </div>
            </li>
            <li>
                <div class="small-img">
                    <img src="../lib/jQueryMagnifier/images/${item.simg4}" alt="">
                </div>
            </li>
            <li>
                <div class="small-img">
                    <img src="../lib/jQueryMagnifier/images/${item.simg5}" alt="">
                </div>
            </li>
                `
            })
            $('.sz').html(res);
            $('.mintu').html(res1);
            //放大镜
            var magnifierConfig = {
                magnifier: "#magnifier1",//最外层的大容器
                width: 300,//承载容器宽
                height: 300,//承载容器高
                moveWidth: 120,//如果设置了移动盒子的宽度，则不计算缩放比例
                zoom: 5//缩放比例
            };
            var _magnifier = magnifier(magnifierConfig);
            /*magnifier的内置函数调用*/
            /*
                //设置magnifier函数的index属性
                _magnifier.setIndex(1);
        
                //重新载入主图,根据magnifier函数的index属性
                _magnifier.eqImg();
            */
            //商品详情二维码显示与隐藏
            $('.shou').hover(function () {
                $('.em').css('display', 'block');
            }, function () {
                $('.em').css('display', 'none');
            })
            //商品数量的加减
            $('.zheng').click(function () {

                $('.su').val($('.su').val() * 1 + 1)
            });
            $('.jiang').click(function () {
                if ($('.su').val() > 1) {
                    $('.su').val($('.su').val() * 1 - 1)
                }
            })
            //点击加入购物车弹窗

            $('.btn_shopping_cart').click(function () {
                var add = $('.su').val();

                //存数据导数据库
                $.ajax({
                    type: "get",
                    url: '../api/add_cart.php',
                    data: 'goodsid=' + id + '&uid=' + val1 + '&num=' + add,
                    success: function (str) {
                        // var arr = JSON.parse(str);
                        // var arr1 = arr.data
                        console.log(str)
                    }
                });

                $('.spop').css('display', 'block');
                var zongji = $('.su').val() * $('.price').html();
                // console.log(add)
                $('.toushu').html(add + '件商品加入购物车')
                $('.addNum').html('加入数量:' + add);
                $('.zongji').html('$' + zongji);
                $('.zongji').css('color', 'red');


                //点击结算跳转购物车
                $('.red_border_btn').click(function () {
                    var user = cookie.get('user');
                    // console.log(user)
                    $.ajax({
                        type: "get",
                        url: '../api/add_cart.php',
                        data: 'goodsid=' + id + '&uid=' + user + '&num=' + add,
                        success: function (str) {
                            // var arr = JSON.parse(str);
                            // var arr1 = arr.data
                            // console.log(str)
                            location.href = 'shopping.html?'+user
                        }
                    });

                })
                //点击继续购物刷新页面
                $('.red_btn').click(function () {
                    $('.spop').css('display', 'none');
                });
                //点击关闭  关闭弹窗
                $('.popwinClose').click(function () {
                    $('.spop').css('display', 'none');
                });
            })

        }
    })

})