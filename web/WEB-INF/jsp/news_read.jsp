<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻中国</title>
<link href="${pageContext.request.contextPath}/css/read.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <div id="top_login">
    <label> 登录名 </label>
    <input type="text" id="uname" value="" class="login_input" />
    <label> 密&#160;&#160;码 </label>
    <input type="password" id="upwd" value="" class="login_input" />
    <input type="button" class="login_sub" value="登录"/>
    <label id="error"> </label>
    <a href="index.jsp" class="login_link">返回首页</a> <img src="${pageContext.request.contextPath}/images/friend_logo.gif" alt="Google" id="friend_logo" /> </div>
  <div id="nav">
    <div id="logo"> <img src="${pageContext.request.contextPath}/images/logo.jpg" alt="新闻中国" /> </div>
    <div id="a_b01"> <img src="${pageContext.request.contextPath}/images/a_b01.gif" alt="" /> </div>
    <!--mainnav end-->
  </div>
</div>
<div id="container">
  <div class="sidebar">
    <h1> <img src="${pageContext.request.contextPath}/images/title_1.gif" alt="国内新闻" /> </h1>
    <div class="side_list">
      <ul>
        <c:forEach items="${gnxw}" var="xw" begin="0" end="5">
          <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
        </c:forEach>
      </ul>
    </div>
    <h1> <img src="${pageContext.request.contextPath}/images/title_2.gif" alt="国际新闻" /> </h1>
    <div class="side_list">
      <ul>
        <c:forEach items="${gjxw}" var="xw" begin="0" end="5">
          <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
        </c:forEach>
      </ul>
    </div>
    <h1> <img src="${pageContext.request.contextPath}/images/title_3.gif" alt="娱乐新闻" /> </h1>
    <div class="side_list">
      <ul>
        <c:forEach items="${wlxw}" var="xw" begin="0" end="5">
          <li> <a href='/News/new/${xw.nid}'><b> ${xw.ntitle} </b></a> </li>
        </c:forEach>
      </ul>
    </div>
  </div>
  <div class="main">
    <div class="class_type"><img src="${pageContext.request.contextPath}/images/class_type.gif" alt="新闻中心" /> </div>
    <div class="content">
      <ul class="classlist">
        <table width="80%" align="center">
          <tr width="100%">
            <td colspan="2" align="center">${newdg.ntitle}</td>
          </tr>
          <tr>
            <td colspan="2"><hr />
            </td>
          </tr>
          <tr>
            <td align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${newdg.ncreateDate}"/></td>
            <td align="left">${newdg.nauthor}</td>
          </tr>
          <tr>
            <td colspan="2" align="center"></td>
          </tr>
          <tr>
            <td colspan="2">${newdg.ncontent}</tr>
          <tr>
            <td colspan="2"><hr />
            </td>
          </tr>
        </table>
      </ul>
      <ul class="classlist">
        <table width="80%" align="center">
          <c:if test="${newdg.comments eq []}">
            <td colspan="6"> 暂无评论！ </td>
          </c:if>
          <c:if test="${newdg.comments ne null}">
            <c:forEach items="${newdg.comments}" var="comm">
              <li style="display: inline-block">${comm.cauthor} : ${comm.ccontent}&nbsp;&nbsp;&nbsp;&nbsp;<tt>&nbsp;日期:<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comm.cdate}"/>&nbsp;IP地址:${comm.cip}</tt></li>
            </c:forEach>
          </c:if>
          <tr>
            <td colspan="6"><hr />
            </td>
          </tr>
        </table>
      </ul>
      <ul class="classlist">
        <form action="#" method="post" onsubmit="return check()">
          <input type="hidden" value="${newdg.nid}" name=""/>
          <table width="80%" align="center">
            <tr>
              <td> 评 论 </td>
            </tr>
            <tr>
              <td> 用户名： </td>
              <td>

                <input id="cauthor" name="cauthor" value="这家伙很懒什么也没留下"/>
                IP：
                <input name="cip" value="127.0.0.1" readonly="readonly"/>
              </td>
            </tr>
            <tr>
              <td colspan="2"><textarea name="ccontent" cols="70" rows="10"></textarea>
              </td>
            </tr>
           <tr>
              <td><input name="submit" value="发  表" type="submit"/></td>
           </tr>
          </table>
          </form>
      </ul>
    </div>
  </div>
</div>
<div id="friend">
  <h1 class="friend_t"> <img src="${pageContext.request.contextPath}/images/friend_ico.gif" alt="合作伙伴" /> </h1>
  <div class="friend_list">
    <ul>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
      <li> <a href="#">中国政府网</a> </li>
    </ul>
  </div>
</div>
<div id="footer">
  <p class=""> 24小时客户服务热线：010-68988888 &#160;&#160;&#160;&#160; <a href="#">常见问题解答</a> &#160;&#160;&#160;&#160; 新闻热线：010-627488888 <br />
    文明办网文明上网举报电话：010-627488888 &#160;&#160;&#160;&#160; 举报邮箱： <a href="#">jubao@jb-aptech.com.cn</a> </p>
  <p class="copyright"> Copyright &copy; 1999-2009 News China gov, All Right Reserver <br />
    新闻中国 版权所有 </p>
</div>
</body>
</html>
