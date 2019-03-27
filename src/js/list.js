$(function () {
    //点击头部购物车跳转购物车页面
    $('.head2-right-r').click(function () {
        location.href = 'shopping.html';
    })
    //点击侧栏购物车去结算跳转购物车页
    $('.go').click(function () {
        location.href = 'shopping.html';
    })
    var val1 = cookie.get('user');
    //点击logo跳转首页
    $('.logo ').click(function () {
        location.href = '../yy.html';
    });
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
        $('.tow').eq(0).css('diplay', 'block');
        $('.tow li').eq($(this).index()).css('display', 'block');
    }, function () {
        $('.tow').css('display', 'none');
    });

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


    //封装列表页渲染函数
    function listShow(arr) {
        var res = arr.map(function (item) {
            return `
                    <li data-id='${item.goodsid}' style='height: 400px;'>
                        <div class="itemSearchResultCon">
                            <a href="javascript:;" class="tupian">
                                <img src="../images/list/${item.bimg}" alt="">
                            </a>
                            <p class="price">
                                <span>$${item.price}</span>
                            </p>
                            <p class="titleBox">
                                <a href="javascript:;" class="productName" style=" height: 20px;">
                                    <span class="list_lable_self">
                                        <img src="../images/list/${item.ziying}" alt="">
                                    </span>
                                    <span class="haiwai">
                                        <img src="../images/list/${item.haiwaigou}" alt="">
                                    </span>
                                    ${item.title}
                                </a>
                                <a href="javascript:;" class="promoTitle">满199减20 299减30</a>
                            </p>
                            <div class="sell_type">
                                <span class="comment comment_right fr">评论
                                    <em style="color:red">${item.pinglun}</em>
                                    条
                                </span>
                                <span class="fl self_name">
                                    1药网自营
                                </span>
                            </div>
                            <p class="search_list_op">
                                <input type="button" value="-" class="jian">
                                <input type="text" value="1" class="nb">
                                <input type="button" value="+" class="jia">
                                <input type="button" value="加入购物车" class="op_right_btn" style="float:right">
                            </p>
                        </div>
                    </li>
                         `
        }).join('');
        $('#list').html(res);
        //li滑过 出现边框
        $('#list li').hover(function () {
            $(this).css('border', '2px solid #ccc');
        }, function () {
            $(this).css('border', '2px solid #fff');
        });
        //点击跳转详情页
        $('.tupian').click(function () {
            var id = $(this).parent().parent().get(0).dataset.id;
            location.href = 'detail.html?' + id;
        });
        //点击加入购物车存数据导数据库
        $('.op_right_btn').click(function () {
            var id = $(this).parent().parent().parent().get(0).dataset.id;
            var add = $(this).prev().prev().val();
            $.ajax({
                type: "get",
                url: '../api/add_cart.php',
                data: 'goodsid=' + id + '&uid=' + val1 + '&num=' + add,
                success: function (str) {
                    var arr = JSON.parse(str);
                    console.log(arr)
                    // var arr1 = arr.data
                    //购物车没有该商品
                    if(arr.code){
                        alert('成功加入购物车')
                    }else{//购物车已加入该商品  那到该商品的数量相加，再返回数据库
                        // var shu=add+
                        alert('该商品已存到购物车中请前去查看')
                    }
                    // console.log()
                    
                }
            });
        })

    }


    //点击下一页
    var pageNum = 1

    function xia() {
        $('.nextPage').click(function () {
            // console.log(yeshu)
            if (pageNum < yeshu) {
                pageNum++;
                $('#qty').html(pageNum);
                $('#list').html('');
                $('.yebiao span').attr('class', '');
                $('.yebiao span').eq(pageNum - 1).attr('class', 'active1');
                $.ajax({
                    type: "get",
                    url: '../api/goodslist.php',
                    data: 'page=1&type=goodsid&order=desc&qty=40&page=' + pageNum,
                    success: function (str) {
                        var arr = JSON.parse(str);
                        // console.log(arr.list)
                        listShow(arr.list);
                    }
                });

            }

        });
    }
    xia()
    //点击上一页
    function shang() {
        $('.prevPage').click(function () {
            // console.log(yeshu)
            if (pageNum > 1) {
                pageNum--;
                $('#qty').html(pageNum);
                $('#list').html('');
                $('.yebiao span').attr('class', '');
                $('.yebiao span').eq(pageNum - 1).attr('class', 'active1');
                $.ajax({
                    type: "get",
                    url: '../api/goodslist.php',
                    data: 'page=1&type=goodsid&order=desc&qty=40&page=' + pageNum,
                    success: function (str) {
                        var arr = JSON.parse(str);
                        // console.log(arr.list)
                        listShow(arr.list);
                    }
                });
            }

        });
    }
    shang()
    var yeshu;//总页数=商品总数/每页显示条数
    //列表初始化
    $.ajax({
        type: "get",
        url: '../api/goodslist.php',
        data: 'page=1&type=goodsid&order=desc&qty=40&page=1',
        success: function (str) {
            var arr = JSON.parse(str);
            // console.log(arr.list)
            listShow(arr.list);
            $('.mm').html(arr.sum);
            // console.log(arr.page)
            if (arr.sum % 40 == 0) {
                yeshu = (arr.sum) / 40;
            } else {
                yeshu = parseInt((arr.sum) / 40) + 1;
            }

            //生成页码数
            var html = '';
            for (var i = 0; i < yeshu; i++) {
                html += `<span class="yeshu">${i + 1}</span>`
            }
            //当前页码
            $('#qty').html(arr.page);
            //页眉总页数
            $('#yeshu').html(yeshu);
            //根据页数生成分页
            $('.yebiao').html(html);
            //页尾总页数
            $('#byeshu').html(yeshu);
            //默认第一页
            $('.yeshu').first().attr('class', 'active1');
            //点击页码渲染
            $('.yebiao span').click(function () {
                $('#list').html('');
                // toBimg();
                //当前页码高亮
                $('.yebiao span').attr('class', '');
                $(this).attr('class', 'active1');
                // console.log($(this));
                var val = ($(this).html()) * 1;//获取当前页码数
                // console.log(val);
                //当前页码显示
                $('#qty').html(val);
                var url = '../api/goodslist.php';
                var data = 'type=goodsid&order=asc&qty=40&page=' + val;
                ajax('get', url, data, function (str) {
                    var arr = JSON.parse(str);
                    // console.log(arr.list)//商品列表数据
                    listShow(arr.list);
                });


                //点击页码之后再点击上一页
                $('.prevPage').click(function () {
                    // console.log(yeshu)
                    if (val > 1 && yeshu > val) {
                        val--;
                        $('#qty').html(val);
                        $('#list').html('');
                        $('.yebiao span').attr('class', '');
                        $('.yebiao span').eq(val - 1).attr('class', 'active1');
                        $.ajax({
                            type: "get",
                            url: '../api/goodslist.php',
                            data: 'page=1&type=goodsid&order=desc&qty=40&page=' + val,
                            success: function (str) {
                                var arr = JSON.parse(str);
                                // console.log(arr.list)
                                listShow(arr.list);
                            }
                        });
                    }

                });

                //点击页码跳转之后 再点击下一页
                $('.nextPage').click(function () {
                    // console.log(yeshu)
                    if (val > 1 && yeshu > val) {
                        val++;
                        $('#qty').html(val);
                        $('#list').html('');
                        $('.yebiao span').attr('class', '');
                        $('.yebiao span').eq(val - 1).attr('class', 'active1');
                        $.ajax({
                            type: "get",
                            url: '../api/goodslist.php',
                            data: 'page=1&type=goodsid&order=desc&qty=40&page=' + val,
                            success: function (str) {
                                var arr = JSON.parse(str);
                                // console.log(arr.list)
                                listShow(arr.list);
                            }
                            
                        });
                    }
                });
            });

            //选页码 选择跳转
            $('#queding').click(function () {
                //获取文本框的数值
                var val = $('#shuru').val() * 1;
                // console.log(yeshu);
                if (0 < val && val <= yeshu) {
                    var url = '../api/goodslist.php';
                    var data = 'type=goodsid&order=asc&qty=40&page=' + val;
                    ajax('get', url, data, function (str) {
                        var arr = JSON.parse(str);
                        // console.log(arr.page)//商品列表数据
                        listShow(arr.list);
                        //当前页码
                        $('#qty').html(arr.page);
                    });
                }
            });

            //购物车加减数量点击
            $('.jia').click(function () {
                var nbs = $(this).prev().val() * 1;
                nbs++;
                $(this).prev().val(nbs)
            });

            $('.jian').click(function () {
                var nbs = $(this).next().val() * 1;
                if (nbs > 1) {
                    nbs--;
                    $(this).next().val(nbs)
                } else {
                    alert('不能再少了')
                }
            });
        }
    });
    //销量排序
    $('.xiaoliang').click(function () {
        $.ajax({
            type: "get",
            url: '../api/goodslist.php',
            data: 'page=1&type=xiaoliang&order=asc&qty=40&page=1',
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.list)
                $('#list').html('');
                listShow(arr.list);
            }
        });
        $('.jia').click(function () {
            var nbs = $(this).prev().val() * 1;
            nbs++;
            $(this).prev().val(nbs)
        });

        $('.jian').click(function () {
            var nbs = $(this).next().val() * 1;
            if (nbs > 1) {
                nbs--;
                $(this).next().val(nbs)
            } else {
                alert('不能再少了')
            }
        });
    });
    //评论paixu
    $('.pinglun').click(function () {
        $.ajax({
            type: "get",
            url: '../api/goodslist.php',
            data: 'page=1&type=pinglun&order=desc&qty=40&page=1',
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.list)
                $('#list').html('');
                listShow(arr.list);
            }
        });
        $('.jia').click(function () {
            var nbs = $(this).prev().val() * 1;
            nbs++;
            $(this).prev().val(nbs)
        });

        $('.jian').click(function () {
            var nbs = $(this).next().val() * 1;
            if (nbs > 1) {
                nbs--;
                $(this).next().val(nbs)
            } else {
                alert('不能再少了')
            }
        });
    });
    //人气排序
    $('.renqi').click(function () {
        $.ajax({
            type: "get",
            url: '../api/goodslist.php',
            data: 'page=1&type=renqi&order=asc&qty=40&page=1',
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.list)
                $('#list').html('');
                listShow(arr.list);


                $('.jia').click(function () {
                    var nbs = $(this).prev().val() * 1;
                    nbs++;
                    $(this).prev().val(nbs)
                });

                $('.jian').click(function () {
                    var nbs = $(this).next().val() * 1;
                    if (nbs > 1) {
                        nbs--;
                        $(this).next().val(nbs)
                    } else {
                        alert('不能再少了')
                    }
                });
            }
        });

    });

    //最新
    $('.zuixin').click(function () {
        $.ajax({
            type: "get",
            url: '../api/goodslist.php',
            data: 'page=1&type=time&order=asc&qty=40&page=1',
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.list)
                $('#list').html('');
                listShow(arr.list);

                $('.jia').click(function () {
                    var nbs = $(this).prev().val() * 1;
                    nbs++;
                    $(this).prev().val(nbs)
                });

                $('.jian').click(function () {
                    var nbs = $(this).next().val() * 1;
                    if (nbs > 1) {
                        nbs--;
                        $(this).next().val(nbs)
                    } else {
                        alert('不能再少了')
                    }
                });

            }
        });

    });
    //价格
    $('.jiage').click(function () {
        $.ajax({
            type: "get",
            url: '../api/goodslist.php',
            data: 'page=1&type=price&order=asc&qty=40&page=1',
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.list)
                $('#list').html('');
                listShow(arr.list);

                $('.jia').click(function () {
                    console.log(nbs)
                    var nbs = $(this).prev().val() * 1;
                    nbs++;
                    $(this).prev().val(nbs)
                });

                $('.jian').click(function () {
                    var nbs = $(this).next().val() * 1;
                    if (nbs > 1) {
                        nbs--;
                        $(this).next().val(nbs)
                    } else {
                        alert('不能再少了')
                    }
                });
            }
        });

    });

})