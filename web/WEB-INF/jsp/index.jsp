<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>�����й�</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" charset="utf-8" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
</head>

<body >
<div style="margin:0 auto;width:1000px">
    <div id="header">
        <div id="top_login">
            <c:if test="${uname eq null}">
                <form id="login" method="post" action="/News/dlu">
                    <label>��¼��</label><input type="text" name="username" value="" class="login_input" />
                    <label>��&#160;&#160;��</label><input type="password" name="upwd" value="" class="login_input" />
                    <input type="submit" class="login_sub" value="��¼" />
                </form>
            </c:if>
            <c:if test="${uname ne null}">
                <form id="login" method="post" action="javascript:void(0)">
                    <label>�û���</label><label>${uname}&#160;&#160;��ӭ��½</label>
                </form>
            </c:if>
            <img src="${pageContext.request.contextPath}/images/friend_logo.gif" alt="Google" id="friend_logo" />
        </div>
        <div id="nav">
            <div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="�����й�" /></div>
            <div id="mainnav">
                <ul>
                    <li class="headLi"><a href="#"><b>����</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">���</a></li>
                    <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                    <li><a href="#">NBA</a></li>
                    <li><a href="#">��Ʊ</a></li>
                    <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                    <li><a href="#">�ݸ�</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLineTop"><a href="#"><b>�ռ�</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">UC</a></li>
                    <li class="leftLineTop"><a href="#"><b>����</b></a></li>
                    <li><a href="#">�㶫</a></li>
                    <li><a href="#">�Ϻ�</a></li>
                    <li class="leftLine broad"><a href="#">�߶���</a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                </ul>
                <ul>
                    <li class="headLi"><a href="#"><b>�ƾ�</b></a></li>
                    <li><a href="#">��Ʊ</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLine"><a href="#"><b>����</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLine"><a href="#" class="linkRed01"><b>��Ƶ</b></a></li>
                    <li><a href="#" class="linkRed01">����</a></li>
                    <li><a href="#" class="linkRed01">��Ƭ</a></li>
                    <li class="leftLine"><a href="#"><b>Ů��</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLine"><a href="#"><b>��̳</b></a></li>
                    <li><a href="#">Ȧ��</a></li>
                    <li><a href="#">���</a></li>
                    <li class="leftLine"><a href="#"><b>����</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">�̳�</a></li>
                    <li class="leftLine broad"><a href="#">�֡���</a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                </ul>
                <ul>
                    <li class="headLi"><a href="#"><b>�Ƽ�</b></a></li>
                    <li><a href="#">�ֻ�</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">�ѳ�</a></li>
                    <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                    <li><a href="#">�ز�</a></li>
                    <li><a href="#">�Ҿ�</a></li>
                    <li class="leftLineBot"><a href="#"><b>�ֿ�</b></a></li>
                    <li><a href="#">��Ʒ</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                    <li><a href="#">��Ϸ</a></li>
                    <li><a href="#">UT</a></li>
                    <li class="leftLineBot"><a href="#"><b>����</b></a></li>
                    <li style="padding-top:3px;line-height:15px;"><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                    <li class="leftLineBot broad"><a href="#">���û�</a></li>
                    <li><a href="#">����</a></li>
                    <li><a href="#">����</a></li>
                </ul>
            </div>
            <!--mainnav end-->
        </div>
    </div>

    <div id="container">
        <div class="sidebar">
            <h1><img src="${pageContext.request.contextPath}/images/title_1.gif" alt="��������" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${gnxw}" var="xw" begin="0" end="5">
                    <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_2.gif" alt="��������" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${gjxw}" var="xw" begin="0" end="5">
                        <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_3.gif" alt="��������" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${wlxw}" var="xw" begin="0" end="5">
                        <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="main">
            <div class="class_type"><img src="${pageContext.request.contextPath}/images/class_type.gif" alt="��������" /></div>
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
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture1.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture2.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture3.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                    <li><a href="#"><img src="${pageContext.request.contextPath}/images/Picture4.jpg" width="249" alt="" /></a><a href="#">������ķ���</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="friend">
        <h1 class="friend_t"><img src="${pageContext.request.contextPath}/images/friend_ico.gif" alt="�������" /></h1>
        <div class="friend_list">
            <ul>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
                <li><a href="#">�й�������</a></li>
            </ul>
        </div>
    </div>

    <div id="footer">
        <p class="">24Сʱ�ͻ��������ߣ�010-68988888  &#160;&#160;&#160;&#160;  <a href="#">����������</a>  &#160;&#160;&#160;&#160;  �������ߣ�010-627488888<br />
            �����������������ٱ��绰��010-627488888  &#160;&#160;&#160;&#160;  �ٱ����䣺<a href="#">jubao@jb-aptech.com.cn</a></p>
        <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
            �����й�   ��Ȩ����</p>
    </div>

</div>
</body>
</html>
<script type="text/javascript">
function zt(ntid){
    $.ajax({
        "url":"/News/newsn/"+ntid,//�ύ����
        "type":"get",//�ύ����
        "data":{},//�ύֵ
        "dataType":"json",//��������
        "success":function(data){//�������͵�����ֵ
            data.reverse();
            console.log(data)
            console.log(typeof (data))
            $(".classlist li").remove();
            var i=0;
            if (data.length==0){
                let li1=$("<li class=space>���������Ŵ�����</li>")
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
        "error":function(){//�ɹ��������
            console.log("��ѯʧ��");
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