$(function () {
    $('.item').click(function () {
        $('.item1').css('display', 'none');
        $('.item1').eq($(this).index()).css('display', 'block');
        
    });
    $('.lanse').click(function(){
        $('.bl').css('color',"black");
        $('.gl').css('color','#2C9EE1');
    })
    $('.heise').click(function(){
        $('.bl').css('color',"#2C9EE1");
        $('.gl').css('color','black');
    })
    //生成随机验证码
    var yzm = '';
    function suiji() {
        yzm = '';
        for (i = 0; i < 4; i++) {//点击生成四位的随机验证码
            var str = '0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
            yzm += str[parseInt(Math.random() * str.length)]
        }
    }
    suiji();//验证码初始化
    $('.ig').html(yzm);

    //点击获取随机验证码
    $('.verifylink').click(function () {
        suiji();
        $('.ig').html(yzm);
    });
    //验证码验证
    var isok = false;
    $('.u_verify').blur(function () {
        //    console.log($('.u_verify').val())
        //    console.log($('.ig').html())
        if ($('.u_verify').val().toLowerCase() == ($('.ig').html()).toLowerCase()) {
            $('.yzm').html('验证通过')
            $('.yzm').css('display', 'block');
            $('.yzm').css('color', '#58bc58');
            isok = true
        } else {
            $('.yzm').css('display', 'block');
            $('.yzm').html('请重新验证');
            $('.yzm').css('color', 'red');
        }
    });

    //普通登录验证
    var val1 = cookie.get('user');//判断用户是否在登录
    $('#btn').click(function () {
        if (val1 != $('.a1').val()) {
            if (isok = true && ($('.a1').val()) != "" && ($('.a2').val()) != "") {
                $.ajax({
                    type: "post",
                    url: "../api/login.php",
                    data: "username=" + $('.a1').val() + '&password=' + $('.a2').val(),
                    success: function (str) {
                        var arr = JSON.parse(str)
                        console.log(arr)
                        if (arr.code && isok === true&&val1!=$('.a1').val()) {
                            alert(arr.message); //登陆成功
                            cookie.set('user', $('.a1').val(), { path: '/YY' });
                            window.history.back(-1);
                        } else {
                            $('.name').css('display', 'block')//提示错误
                        }
                    }
                })
            } else {
                $('.name').css('display', 'block')//提示错误 
            }
        }else{
            alert('该用户正在登陆中，请勿重复登录');
        }

    });



    //获取短信验证码
    $('.check_btn').click(function(){
        suiji()
        $('.check_btn').val(yzm);
    });
        //验证码验证
        var isok1 = false;
        $('.phone').blur(function () {
            if ($('.phone').val().toLowerCase() == ($('.ig').val()).toLowerCase()) {
                $('.yanzhengma').html('验证通过')
                $('.yanzhengma').css('display', 'block');
                $('.yanzhengma').css('color', '#58bc58');
                isok1 = true
            } else {
                $('.yanzhengma').css('display', 'block');
                $('.yanzhengma').html('请重新验证');
                $('.yanzhengma').css('color', 'red');
            }
        });
    //手机登录
    $('#btn1').click(function(){
        location.href='../yy.html';
        // if (val1 != $('.p1').val()) {
        //     if (isok1 = true && ($('.p1').val()) != "") {
        //         $.ajax({
        //             type: "post",
        //             url: "../api/checkname.php",
        //             data: "username=" + $('.p1').val() ,
        //             success: function (str) {
        //                 var arr = JSON.parse(str)
        //                 console.log(arr)
        //                 if (!arr.code && isok === true&&val1!=$('.p1').val()) {
        //                     alert('登陆成功'); //登陆成功
        //                     cookie.set('user', $('.p1').val(), { path: '/YY' });
        //                     location.href='list.html';
        //                 } else {
        //                     $('.shoujihao').css('display', 'block')//提示错误
        //                 }
        //             }
        //         })
        //     } else {
        //         $('.name').css('display', 'block')//提示错误 
        //     }
        // }else{
        //     alert('该用户正在登陆中，请勿重复登录');
        // }
    })
})