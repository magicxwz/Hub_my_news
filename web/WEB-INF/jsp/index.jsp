<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>新闻中国</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" charset="utf-8" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
</head>

<body >
<div style="margin:0 auto;width:1000px">
    <div id="header">
        <div id="top_login">
            <c:if test="${uname eq null}">
                <form id="login" method="post" action="/News/dlu">
                    <label>登录名</label><input type="text" name="username" value="" class="login_input" />
                    <label>密&#160;&#160;码</label><input type="password" name="upwd" value="" class="login_input" />
                    <input type="submit" class="login_sub" value="登录" />
                </form>
            </c:if>
            <c:if test="${uname ne null}">
                <form id="login" method="post" action="javascript:void(0)">
                    <label>用户：</label><label>${uname}&#160;&#160;欢迎登陆</label>
                </form>
            </c:if>
            <img src="${pageContext.request.contextPath}/images/friend_logo.gif" alt="Google" id="friend_logo" />
        </div>
        <div id="nav">
            <div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="新闻中国" /></div>
            <div id="mainnav">
                <ul>
                    <li class="headLi"><a href="#"><b>新闻</b></a></li>
                    <li><a href="#">军事</a></li>
                    <li><a href="#">社会</a></li>
                    <li class="leftLineTop"><a href="#"><b>体育</b></a></li>
                    <li><a href="#">NBA</a></li>
                    <li><a href="#">彩票</a></li>
                    <li class="leftLineTop"><a href="#"><b>博客</b></a></li>
                    <li><a href="#">草根</a></li>
                    <li><a href="#">热文</a></li>
                    <li class="leftLineTop"><a href="#"><b>读书</b></a></li>
                    <li><a href="#">教育</a></li>
                    <li><a href="#">健康</a></li>
                    <li class="leftLineTop"><a href="#"><b>空间</b></a></li>
                    <li><a href="#">邮箱</a></li>
                    <li><a href="#">UC</a></li>
                    <li class="leftLineTop"><a href="#"><b>城市</b></a></li>
                    <li><a href="#">广东</a></li>
                    <li><a href="#">上海</a></li>
                    <li class="leftLine broad"><a href="#">高尔夫</a></li>
                    <li><a href="#">下载</a></li>
                    <li><a href="#">导航</a></li>
                </ul>
                <ul>
                    <li class="headLi"><a href="#"><b>财经</b></a></li>
                    <li><a href="#">股票</a></li>
                    <li><a href="#">基金</a></li>
                    <li class="leftLine"><a href="#"><b>娱乐</b></a></li>
                    <li><a href="#">明星</a></li>
                    <li><a href="#">音乐</a></li>
                    <li class="leftLine"><a href="#" class="linkRed01"><b>视频</b></a></li>
                    <li><a href="#" class="linkRed01">播客</a></li>
                    <li><a href="#" class="linkRed01">大片</a></li>
                    <li class="leftLine"><a href="#"><b>女性</b></a></li>
                    <li><a href="#">星座</a></li>
                    <li><a href="#">育儿</a></li>
                    <li class="leftLine"><a href="#"><b>论坛</b></a></li>
                    <li><a href="#">圈子</a></li>
                    <li><a href="#">相册</a></li>
                    <li class="leftLine"><a href="#"><b>生活</b></a></li>
                    <li><a href="#">旅游</a></li>
                    <li><a href="#">商城</a></li>
                    <li class="leftLine broad"><a href="#">分　类</a></li>
                    <li><a href="#">天气</a></li>
                    <li><a href="#">爱问</a></li>
                </ul>
                <ul>
                    <li class="headLi"><a href="#"><b>科技</b></a></li>
                    <li><a href="#">手机</a></li>
                    <li><a href="#">数码</a></li>
                    <li class="leftLineBot"><a href="#"><b>汽车</b></a></li>
                    <li><a href="#">购车</a></li>
                    <li><a href="#">搜车</a></li>
                    <li class="leftLineBot"><a href="#"><b>房产</b></a></li>
                    <li><a href="#">地产</a></li>
                    <li><a href="#">家居</a></li>
                    <li class="leftLineBot"><a href="#"><b>乐库</b></a></li>
                    <li><a href="#">尚品</a></li>
                    <li><a href="#">宠物</a></li>
                    <li class="leftLineBot"><a href="#"><b>交友</b></a></li>
                    <li><a href="#">游戏</a></li>
                    <li><a href="#">UT</a></li>
                    <li class="leftLineBot"><a href="#"><b>短信</b></a></li>
                    <li style="padding-top:3px;line-height:15px;"><a href="#">彩铃</a></li>
                    <li><a href="#">彩信</a></li>
                    <li class="leftLineBot broad"><a href="#">音悦汇</a></li>
                    <li><a href="#">公益</a></li>
                    <li><a href="#">爱答</a></li>
                </ul>
            </div>
            <!--mainnav end-->
        </div>
    </div>

    <div id="container">
        <div class="sidebar">
            <h1><img src="${pageContext.request.contextPath}/images/title_1.gif" alt="国内新闻" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${gnxw}" var="xw" begin="0" end="5">
                    <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_2.gif" alt="国际新闻" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${gjxw}" var="xw" begin="0" end="5">
                        <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_3.gif" alt="娱乐新闻" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${wlxw}" var="xw" begin="0" end="5">
                        <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="main">
            <div class="class_type"><img src="${pageContext.request.contextPath}/images/class_type.gif" alt="新闻中心" /></div>
            <div class="content">
                <ul class="class_date">
                    <li id="class_month">
                        <c:forEach items="${topics}" var="topicc" begin="0" end="10">
                            <a href='javascript:zt(${topicc.tid})'><b>${topicc.tname}</b></a>
                        </c:forEach>
                    </li><li id="class_month">
                        <c:forEach items="${topics}" var="topicc" begin="11" end="20">
                            <a href='index1.jsp?ntid=${topicc.tid}'><b>${topicc.tname}</b></a>
                        </c:forEach>
                </li>
                </ul>
                <ul class="classlist">
                    <c:forEach items="${news}" var="newx" begin="0" end="4">
                        <li><a href="/News/new/${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="5" end="9">
                        <li><a href="/News/new/${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="10" end="14">
                        <li><a href="/News/new/${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="15" end="19">
                        <li><a href="/News/new/${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="20" end="24">
                        <li><a href="/News/new/${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                </ul>
            </div>
            <div class="picnews">
                <ul>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture1.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture2.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture3.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture4.jpg" width="249" alt="" /></a><a href="#">国庆多变的发型</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="friend">
        <h1 class="friend_t"><img src="${pageContext.request.contextPath}/images/friend_ico.gif" alt="合作伙伴" /></h1>
        <div class="friend_list">
            <ul>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
                <li><a href="#">中国政府网</a></li>
            </ul>
        </div>
    </div>

    <div id="footer">
        <p class="">24小时客户服务热线：010-68988888  &#160;&#160;&#160;&#160;  <a href="#">常见问题解答</a>  &#160;&#160;&#160;&#160;  新闻热线：010-627488888<br />
            文明办网文明上网举报电话：010-627488888  &#160;&#160;&#160;&#160;  举报邮箱：<a href="#">jubao@jb-aptech.com.cn</a></p>
        <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
            新闻中国   版权所有</p>
    </div>

</div>
</body>
</html>
<script type="text/javascript">
function zt(ntid){
    $.ajax({
        "url":"/News/newsn/"+ntid,//提交链接
        "type":"get",//提交类型
        "data":{},//提交值
        "dataType":"json",//返回类型
        "success":function(data){//返回类型的最终值
            data.reverse();
            console.log(data)
            console.log(typeof (data))
            $(".classlist li").remove();
            var i=0;
            if (data.length==0){
                let li1=$("<li class=space>本主题新闻待补充</li>")
                $(".classlist").append(li1)
            }
            $.each(data,function (index,item){
                if (i%5==0){
                   let li= $("<li class=space></li>");
                    $(".classlist").append(li);
                }
                i++;
                var nid=item.nid;
                var ntitle=item.ntitle;
                var ncreateDate=item.ncreateDate;
                var Dates=Format(ncreateDate,'yyyy/MM/dd HH:mm');
                let li2=$("<li><a href="+nid+">"+ntitle+"</a><span>("+Dates+")</span></li>");
                $(".classlist").append(li2)
            })
        },
        "error":function(){//成功与否运行
            console.log("查询失败");
        }
    })
    function Format(now, mask) {
        var d =new Date(now);
        var zeroize = function (value, length) {
            if (!length) length = 2;
            value = String(value);
            for (var i = 0, zeros = ''; i < (length - value.length) ; i++) {
                zeros += '0';
            }
            return zeros + value;
        };

        return mask.replace(/"[^"]*"|'[^']*'|\b(?:d{1,4}|m{1,4}|yy(?:yy)?|([hHMstT])\1?|[lLZ])\b/g, function ($0) {
            switch ($0) {
                case 'd': return d.getDate();
                case 'dd': return zeroize(d.getDate());
                case 'ddd': return ['Sun', 'Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat'][d.getDay()];
                case 'dddd': return ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'][d.getDay()];
                case 'M': return d.getMonth() + 1;
                case 'MM': return zeroize(d.getMonth() + 1);
                case 'MMM': return ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'][d.getMonth()];
                case 'MMMM': return ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'][d.getMonth()];
                case 'yy': return String(d.getFullYear()).substr(2);
                case 'yyyy': return d.getFullYear();
                case 'h': return d.getHours() % 12 || 12;
                case 'hh': return zeroize(d.getHours() % 12 || 12);
                case 'H': return d.getHours();
                case 'HH': return zeroize(d.getHours());
                case 'm': return d.getMinutes();
                case 'mm': return zeroize(d.getMinutes());
                case 's': return d.getSeconds();
                case 'ss': return zeroize(d.getSeconds());
                case 'l': return zeroize(d.getMilliseconds(), 3);
                case 'L': var m = d.getMilliseconds();
                    if (m > 99) m = Math.round(m / 10);
                    return zeroize(m);
                case 'tt': return d.getHours() < 12 ? 'am' : 'pm';
                case 'TT': return d.getHours() < 12 ? 'AM' : 'PM';
                case 'Z': return d.toUTCString().match(/[A-Z]+$/);
                // Return quoted strings with the surrounding quotes removed
                default: return $0.substr(1, $0.length - 2);
            }
        });
    };
}
</script>