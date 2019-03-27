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
    //购物车渲染
    if (val1) {//判断是否登录 根据状态选择显示页面
        $('.empty_box').css('display', 'none');
        $('.cart-main').css('display', 'block');
        $.ajax({
            type: "post",
            url: '../api/shoppingCart.php',
            data: 'uid=' + val1,
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.datalist)
                var arr1 = arr.datalist;
                var res = arr1.map(function (item) {
                    return `
                            <ul class="item-content clearfix" data-id="${item.deleid}">
                                <li class="td td-chk">
                                    <div class="td-inner">
                                        <label class="cart-checkbox">
                                            <input type="checkbox" class="danxuan">
                                        </label>
                                    </div>
                                </li>
                                <li class="td td-item">
                                    <div class="td-inner">
                                        <div class="item-pic">
                                            <a href="">
                                                <img onerror="imgERROR(this, 'no_pic_50_50.jpg')" src="../images/list/${item.simg1}" class="itempic">
                                            </a>
                                        </div>
                                        <div class="item-info">
                                            <a href="" class="item-title">
                                            ${item.title}
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-price">
                                    <div class="td-inner">${item.price}
                                    </div>
                                </li>
                                <li class="td td-amount">
                                    <div class="td-inner">
                                        <div class="item-amount ">
                                            <input type="button" class="btn-reduce" value="-">
                                            <input itype="1" id="" class="text-amount" maxlength="3" value=" ${item.nums}" type="text">
                                            <input type="button" class="btn-plus" value="+">
                                        </div>
                                        <div class="amount-msg" style="display: none;" id="">
                                            商品数量已修改为&nbsp;
                                            <span style="color: red;">1</span>
                                            <em></em>
                    
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-weight">
                                    <div class="td-inner">
                                        <em class="number">${item.zhongliang}</em>
                                    </div>
                                </li>
                                <li class="td td-location">
                    
                                    <div class="td-inner">
                                        有货
                                    </div>
                                    <div style="color: red;">(不支持平安健康卡支付)</div>
                                </li>
                                <li class="td td-sum">
                                    <div class="td-inner red  xiaoji">
                                    ${item.price}
                                    </div>
                                </li>
                                <li class="td td-op">
                                    <div class="td-inner">
                                        <a id="favorites_1179343" class="fav" href="javascript:void(0);">收藏</a>
                                        <a href="javascript:;" class="deleteButton">删除</a>
                                        <a href="javascript:;" class="deleteButton">找相似</a>
                                    </div>
                                </li>
                            </ul>`
                }).join('');
                $('.item-body').html(res);

                var nbs = $('.text-amount').val() * 1; //取值
                var zhongliang = $('.number').html() * 1//取值重量
                var zongdanjia = $('.xiaoji').html() * 1;
                // console.log(nbs, zhongliang, zongdanjia)
                $('.number').val(nbs * zhongliang);
                $('.xiaoji').html(nbs * zongdanjia);
                //数量减
                $('.item-body').on('click', '.btn-reduce', function () {
                    var nbs = $(this).next().val() * 1;
                    nbs--
                    //  console.log(zongzong);
                    if (nbs < 1) {
                        nbs = 1
                    }
                    $(this).next().val(nbs);
                    allNum();
                    // kgChange($(this))
                    $(this).parent().parent().parent().next().children().children().html(zhongliang * nbs.toFixed(2));
                    $(this).parent().parent().parent().next().next().next().children().html('￥&nbsp;' + zongdanjia * nbs.toFixed(2));
                });
                //数量加
                $('.item-body').on('click', '.btn-plus', function () {
                    var nbs = $(this).prev().val() * 1;
                    nbs++
                    $(this).prev().val(nbs);
                    allNum();
                    // kgChange($(this))
                    $(this).parent().parent().parent().next().children().children().html(zhongliang * nbs.toFixed(2));
                    $(this).parent().parent().parent().next().next().next().children().html('￥&nbsp;' + zongdanjia * nbs.toFixed(2));
                });
                //点击删除当行
                $('.item-body').on('click', '.deleteButton', function () {
                    var res = confirm('您确定要删除吗?');
                    if (res) {
                        var id = ($(this).parent().parent().parent()).get(0).dataset.id;
                        // console.log(id);
                        $.ajax({
                            type: "get",
                            url: '../api/delete.php',
                            data: 'deleid=' + id,
                            success: function (str) {
                                var arr = JSON.parse(str);
                                // console.log(arr.code);
                                if (arr.code) {
                                    $(this).parent().parent().parent().remove();
                                    location.reload();
                                }
                            }
                        });
                    }
                });


                //4.头部全选不选
                $('.cart-checkbox-selected input').on('click', function () {
                    console.log($('.cart-checkbox-selected input'));
                    if ($('.cart-checkbox-selected input').prop('checked')) {
                        //全选
                        $('.danxuan').prop('checked', true);
                    } else {
                        //全不选
                        $('.danxuan').prop('checked', false);
                    }
                    allNum();
                });

                //单选全部选中全选打钩
                $('.danxuan').on('click', function () {
                    var checkLe = $('.danxuan:checked').size();
                    if (checkLe == $('.danxuan').size()) {
                        $('.cart-checkbox-selected input').prop('checked', true);
                    } else {
                        $('.cart-checkbox-selected input').prop('checked', false);
                    }
                    allNum();
                });

                //底部全选
                $('.quanxuan').on('click', function () {
                    if ($('.quanxuan').prop('checked')) {
                        //全选
                        $('.danxuan').prop('checked', true);
                    } else {
                        //全不选
                        $('.danxuan').prop('checked', false);
                    }
                    allNum();
                });

                //5.总重量和总价的更新
                function allNum() {
                    var arr = [];
                    arr = [];//存被选中的复选框的下标
                    $('.danxuan').each(function (i, item) {
                        if ($('.danxuan').eq(i).prop('checked')) {
                            arr.push(i);
                        }
                    });
                    //		console.log(arr);
                    var num = 0;//假设存总数量
                    var priceAll = 0;//存总价的
                    var zongZhongLiang = 0//存总重量
                    arr.forEach(function (item) {//item值：存的是下标
                        num += $('.text-amount').eq(item).val() * 1;
                        priceAll += $('.xiaoji').eq(item).text().slice(2) * 1;//￥ 99
                        zongZhongLiang += $('.number').eq(item).html() * 1;
                    });

                    $('.zong').html(priceAll.toFixed(2));
                    $('.zongzhongliang').html(zongZhongLiang.toFixed(2) + 'kg');
            
                }

                //6.清空购物车

                $('#clearAllCart').on('click', function () {
                    var res = confirm('您确定要清空购物车吗?');
                    var uid = cookie.get('user');
                    if (res) {
                        $.ajax({
                            type: "get",
                            url: '../api/clear_cat.php',
                            data: 'uid=' + uid,
                            success: function (str) {
                                var arr = JSON.parse(str);
                                console.log(arr.code);
                                if (arr.code) {
                                    $(this).prev().remove()
                                //     $(this).parent().parent().parent().remove();
                                    location.reload();
                                }
                            }
                        });
                    }
                });
            }
        });
    } else {
        $('.empty_box').css('display', 'block');
        $('.cart-main').css('display', 'none');
    }
});