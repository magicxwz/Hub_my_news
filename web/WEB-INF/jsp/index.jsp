<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>�����й�</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body >
<div style="margin:0 auto;width:1000px">
    <div id="header">
        <div id="top_login">
            <form id="login" method="post" action="login.jsp">
                <label>��¼��</label><input type="text" name="username" value="" class="login_input" />
                <label>��&#160;&#160;��</label><input type="password" name="upwd" value="" class="login_input" />
                <input type="submit" class="login_sub" value="��¼" />
            </form>
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
                    <li> <a href='${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_2.gif" alt="��������" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${gjxw}" var="xw" begin="0" end="5">
                        <li> <a href='${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
                    </c:forEach>
                </ul>
            </div>

            <h1><img src="${pageContext.request.contextPath}/images/title_3.gif" alt="��������" /></h1>
            <div class="side_list">
                <ul>
                    <c:forEach items="${wlxw}" var="xw" begin="0" end="5">
                        <li> <a href='${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
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
                            <a href='index1.jsp?ntid=${topicc.tid}'><b>${topicc.tname}</b></a>
                        </c:forEach>
                    </li><li id="class_month">
                        <c:forEach items="${topics}" var="topicc" begin="11" end="20">
                            <a href='index1.jsp?ntid=${topicc.tid}'><b>${topicc.tname}</b></a>
                        </c:forEach>
                </li>
                </ul>
                <ul class="classlist">
                    <c:forEach items="${news}" var="newx" begin="0" end="4">
                        <li><a href="${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="5" end="9">
                        <li><a href="${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="10" end="14">
                        <li><a href="${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="15" end="19">
                        <li><a href="${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
                    </c:forEach>
                    <li class="space"></li>
                    <c:forEach items="${news}" var="newx" begin="20" end="24">
                        <li><a href="${newx.nid}">${newx.ntitle}</a><span>(<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${newx.ncreateDate}" />)</span></li>
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