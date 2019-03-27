$(function () {
    //登录状态的判断
    //点击头部购物车跳转购物车页面
    $('.head2-right-r').click(function () {
        location.href = 'html/shopping.html';
    })
    //点击侧栏购物车去结算跳转购物车页
    $('.go').click(function () {
        location.href = 'html/shopping.html';
    })
    var val1 = cookie.get('user');
    if (val1) {
        $('.ming').html(val1 + '欢迎您')
        $('.outlog').css('display', 'block');
        $('.onlog').css('display', 'none');
        //侧栏滑过购物车 购物车出现
        $('.che').hover(function () {
            $('.caron').css('display', 'block');
        }, function () {
            $('.caron').css('display', 'none');
        });
        //滑过本身
        $('.caron').hover(function () {
            $('.caron').css('display', 'block');
        }, function () {
            $('.caron').css('display', 'none');
        });

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

        //侧栏滑过购物车 购物车出现
        $('.che').hover(function () {
            $('.carout').css('display', 'block');
        }, function () {
            $('.carout').css('display', 'none');
        });
        //滑过本身
        $('.carout').hover(function () {
            $('.carout').css('display', 'block');
        }, function () {
            $('.carout').css('display', 'none');
        });

    }
    //轮播图
    var iw = $("#list li").outerWidth();
    $("#list li").css('left', iw);
    $("#list li:first").css('left', 0);
    var num = 0
    var time = null
    //图片左移
    function next() {
        //旧图左移
        $("#list li").eq(num).stop().animate({ 'left': -iw });
        num = ++num > $("#list li").length - 1 ? 0 : num;
        $("#list li").eq(num).css('left', iw);
        $("#list li").eq(num).stop().animate({ 'left': 0 });
        flow(num);
    }
    function prev() {
        //旧图右移
        $("#list li").eq(num).stop().animate({ 'left': iw });
        num = --num < 0 ? $("#list li").length - 1 : num;
        $("#list li").eq(num).css('left', -iw);
        $("#list li").eq(num).stop().animate({ 'left': 0 });
        flow(num);
    }
    //自动轮播
    time = setInterval(next, 3000);
    //鼠标移入停止轮播
    $('.box').hover(function () {
        clearInterval(time);
    }, function () {
        //移除开始轮播
        time = setInterval(next, 3000);
    });
    //点击下一张
    var old = 0;
    //焦点动态创建
    $('#list li').each(function (index, val) {
        // console.log(index,val)
        var $span = '<span>' + (index + 1) + '</span>';
        $('#light').append($span);
        $('#light span').eq(0).addClass('active');
    })

    //焦点跟随
    function flow(num) {
        $('#light span').attr('class', '');
        $('#light span').eq(num).addClass('active');
    }
    //点击焦点事件委托
    if (new Date() - old > 2000) {
        $('#light span').hover(function () {
            // console.log($(this).index())
            //图片从右边切入
            if (num < $(this).index()) {
                $("#list li").eq(num).stop().animate({ 'left': -iw });
                $("#list li").eq($(this).index()).css('left', iw);
                $("#list li").eq($(this).index()).stop().animate({ 'left': 0 });
            }
            if (num > $(this).index()) {
                $("#list li").eq(num).stop().animate({ 'left': iw });
                $("#list li").eq($(this).index()).css('left', -iw);
                $("#list li").eq($(this).index()).stop().animate({ 'left': 0 });
            }
            num = $(this).index();
            flow(num)
            old = new Date();
        });
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


    // 头部菜单   有bug
    $('#nav-list dl dd').hover(function () {
        $('.tow').css('display', 'block');
        $('.tow li').css('display', 'none');
        $('.tow li').eq($(this).index() - 1).css('display', 'block');
    }, function () {
        $('.tow li').css('display', 'none');
        // $('.tow').css('display', 'none');
    });

    $('.tow li').hover(function () {
        // console.log(this)
        $('.tow').eq(0).css('diplay', 'block')
        $('.tow li').eq($(this).index()).css('display', 'block');
    }, function () {
        $('.tow').css('display', 'none');
    });

    //点击菜跳转列表页
    $('#nav-list dl dd').click(function () {
        location.href = 'html/list.html';
    })
    //在线咨询与医生问诊切换
    $('.yi').on('click', function () {
        $('.yi').css('color', 'black');
        $(this).css('color', '#d2b994')
        $('.er').css('display', 'none')
        $('.er').eq($(this).index()).css('display', 'block');
    });

    //公告与优质服务切换
    $('.san').on('click', function () {
        $('.san').css('color', 'black');
        $(this).css('color', '#d2b994')
        $('.si').css('display', 'none')
        $('.si').eq($(this).index()).css('display', 'block');
    });
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


    //楼层跳跃
    var ih = $('.lou').outerHeight();//每个楼层板块的高度
    var h = ($('.lou').offset().top);//楼层到顶部的距离
    $(window).scroll(function () {
        // console.log($(window).scrollTop())
        // console.log(h)
        console.log(ih)
        if (h - 200 < $(window).scrollTop() && $(window).scrollTop() < 5000) {
            $('.tiaolou').css('display', 'block');
        } else {
            $('.tiaolou').css('display', 'none');
        }
    })



    //楼层显示
    $('.tiaolou ul li').hover(function () {
        $('.shows').eq($(this).index()).css('display', 'none');
        $('.hides').eq($(this).index()).css('display', 'block');
    }, function () {
        $('.shows').eq($(this).index()).css('display', 'block');
        $('.hides').eq($(this).index()).css('display', 'none');
    });

    //点击跳楼
    $('.tiaolou ul li').click(function () {
        $('html,body').animate({ scrollTop: (ih * $(this).index() + h) }, 'slow');
        $('.shows').eq($(this).index()).css('display', 'none');
        $('.hides').eq($(this).index()).css('display', 'block');
    })


    //尾部链接与推荐切换
    $('.f1-1 li').mouseover(function () {
        $('.f1-1 li').css('background', '#f0f0f0')
        $(this).css('background', 'white')
        $('.f1-2 li').css('display', 'none');
        $('.f1-2 li').eq($(this).index()).css('display', 'block');
    })
})