$(function () {
    var isok1 = false;
    var isok2 = false;
    var isok3 = false;
    //用户名验证
    $('.b1').blur(function () {
        if (checkReg.tel($('.b1').val())) {
            $.ajax({
                type: "post",
                url: "../api/checkname.php",
                data: "username=" + $('.b1').val(),
                success: function (str) {
                    var arr = JSON.parse(str)
                    // console.log(arr.code)
                    if (arr.code) {
                        $('#verifyUserNameMsg').text('恭喜您，可以注册啦！');
                        isok1 = true;
                        $('#verifyUserNameMsg').css('color', '#58bc58');

                    } else {
                        $('#verifyUserNameMsg').text('请换个手机号码试试');
                        $('#verifyUserNameMsg').css('color', 'red');
                    }

                }
            })
        } else {
            $('#verifyUserNameMsg').css('color', 'red');
            $('#verifyUserNameMsg').text('请输入手机号码');
        }
    });
    //密码验证
    $('.b3').blur(function () {
        if (checkReg.psweasy($('.b3').val())) {
            $('#verifyPasswordMsg').text('密码轻度较低');
            isok2 = true;
            $('#verifyPasswordMsg').css('color', 'yellow');
        } else {
            $('#verifyPasswordMsg').css('color', 'red');
            $('#verifyPasswordMsg').text('请输入字母开头密码');
        }
    });
    //确认密码
    $('.b4').blur(function () {
        if (checkReg.pwwagain($('.b4').val()),$('.b3').val()) {
            $('#verifyPasswordsMsg').text('密码一致');
            isok3 = true;
            $('#verifyPasswordsMsg').css('color', '#58bc58');
        } else {
            $('#verifyPasswordsMsg').css('color', 'red');
            $('#verifyPasswordsMsg').text('密码不一致');
        }
    });
    //点击注册
    $('.btn').click(function () {
        if(isok1&&isok2&&isok3){
            $.ajax({
                type: "post",
                url: "../api/enroll.php",
                data: "username=" + $('.b1').val() + '&password=' + $('.b3').val(),
                success: function (str) {
                    var arr = JSON.parse(str);
                    alert(arr.message);
                }
            });
        }else{
            alert('请完善信息')
        }  
    });
    //底部图标切换
    $('.regkuang ul li').hover(function(){
        $('.one').eq($(this).index()).css('display','none');
        $('.tow').eq($(this).index()).css('display','block');
    },function(){
        $('.one').eq($(this).index()).css('display','block');
        $('.tow').eq($(this).index()).css('display','none');
    })
});