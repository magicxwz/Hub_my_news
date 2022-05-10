<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>添加主题--管理后台</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js" charset="utf-8"></script>
</head>
<body>
<div id="header">
  <div id="welcome">欢迎使用新闻管理系统！</div>
  <div id="nav">
    <div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="新闻中国" /></div>
    <div id="a_b01"><img src="${pageContext.request.contextPath}/images/a_b01.gif" alt="" /></div>
  </div>
</div>
<div id="admin_bar">
  <c:if test="${uname eq null}">
    <form id="login" method="post" action="/News/dlu">
      <label>登录名</label><input type="text" name="username" value="" class="login_input" />
      <label>密&#160;&#160;码</label><input type="password" name="upwd" value="" class="login_input" />
      <input type="submit" class="login_sub" value="登录" />
      <a href="/Topic/register2">新人用户注册</a>
      <a href="/News/newselect" class="login_link">返回首页</a>
    </form>
  </c:if>
  <c:if test="${uname ne null}">
    <form id="login" method="#" action="javascript:void(0)">
      <label>用户：</label><label>${uname}&#160;&#160;欢迎登陆</label>&#160;&#160;<a href="/News/tdlu"> 登出 </a>
      <a href="/News/newselect" class="login_link">返回首页</a>
    </form>
  </c:if>
  <div id="channel"> </div>
</div>
<div id="main">
  <div id="opt_list">
    <ul>
      <li><a href="/Topic/news_add">添加新闻</a></li>
      <li><a href="/Topic/admin">编辑新闻</a></li>
      <li><a href="/Topic/cahzaoxw">查找新闻</a></li>
      <li><a href="/Topic/topic_add">添加主题</a></li>
      <li><a href="/Topic/topicList">编辑主题</a></li>
    </ul>
  </div>
  <div id="opt_area">
    <h1 id="opt_type"> 修改新闻： </h1>
    <form action="javascript:void (0);" method="post">
      <p>
        <label> 主题 </label>
        <select name="ntid" >
          <option value="0">选择</option>
          <c:forEach items="${topics}" var="topi">
            <c:if test="${news.ntid==topi.tid}">
              <option value="${topi.tid}" selected="selected">${topi.tname}</option>
            </c:if>
            <c:if test="${news.ntid!=topi.tid}">
              <option value="${topi.tid}" selected="selected">${topi.tname}</option>
            </c:if>
          </c:forEach>
        </select>
      </p>
      <p>
        <label> 标题 </label>
        <input name="ntitle" type="text" class="opt_input" value="${news.ntitle}" />
      </p>
      <p>
        <label> 作者 </label>
        <input name="nauthor" type="text" class="opt_input" value="${news.nauthor}"/>
      </p>
      <p>
        <label> 时间 </label>
        <input name="ncreateDate" type="text" class="opt_input" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${news.ncreateDate}"/>"/>
      </p>
      <p>
        <label> 摘要 </label>
        <textarea name="nsummary" cols="40" rows="3" >${news.nsummary}</textarea>
      </p>
      <p>
        <label> 内容 </label>
        <textarea name="ncontent" cols="70" rows="10">${news.ncontent}</textarea>
      </p>
      <p>
        <label> 上传图片 </label>
        <input name="file" type="file" class="opt_input"  value="${news.npicPath}"/>
      </p>
      <input name="nid" type="hidden" value="${news.nid}">
      <input name="submit" type="submit" value="修改" class="opt_sub" />
      <input type="reset" value="重置" class="opt_sub" />
    </form>
  </div>
</div>
<div id="site_link"> <a href="#">关于我们</a><span>|</span> <a href="#">Aboue Us</a><span>|</span> <a href="#">联系我们</a><span>|</span> <a href="#">广告服务</a><span>|</span> <a href="#">供稿服务</a><span>|</span> <a href="#">法律声明</a><span>|</span> <a href="#">招聘信息</a><span>|</span> <a href="#">网站地图</a><span>|</span> <a href="#">留言反馈</a> </div>
<div id="footer">
  <p class="">24小时客户服务热线：010-68988888  &#160;&#160;&#160;&#160; <a href="#">常见问题解答</a> &#160;&#160;&#160;&#160;  新闻热线：010-627488888<br />
    文明办网文明上网举报电话：010-627488888  &#160;&#160;&#160;&#160;  举报邮箱：<a href="#">jubao@jb-aptech.com.cn</a></p>
  <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
    新闻中国   版权所有</p>
</div>
</body>
</html>
<script type="text/javascript">
  $(function (){
    /*相对简单的时间限制按钮*/
    var wait = 30;
    function time(o) {
      if (wait == 0) {
        $(o).attr("disabled", false);
        $(o).val(" 修改 ");
        wait = 60;
      } else {
        $(o).attr("disabled", true);
        o.val(wait + "秒后重新修改");
        wait--;
        setTimeout(function () {time(o);},1000);
      }
    }
    /*点击提交后提交数据*/
    $("[name='submit']").click(function (){
      let nid=$("[name='nid']").val();
      console.log(nid)
      let ntid=$("[name='ntid']").val();
      console.log(ntid)
      console.log(ntid=="")
      let ntitle=$("[name='ntitle']").val();
      console.log(ntitle)
      console.log(ntitle=="")
      let nauthor=$("[name='nauthor']").val();
      console.log(nauthor)
      console.log(nauthor=="")
      let ncreateDate=$("[name='ncreateDate']").val();
      console.log(ncreateDate)
      console.log(ncreateDate=="")
      let npicPath=$("[name='file']").val();
      console.log(npicPath)
      let ncontent=$("[name='ncontent']").val();
      console.log(ncontent)
      console.log(ncontent=="")
      let nmodifyDate=$("[name='ncreateDate']").val();
      console.log(nmodifyDate)
      let nsummary=$("[name='nsummary']").val();
      console.log(nsummary)
      console.log(nsummary=="")
      if (ntid==""){
        alert("内容不能为空！")
      }if (ntitle==""){
        alert("内容不能为空！")
      }if (nauthor==""){
        alert("内容不能为空！")
      }if (ncreateDate==""){
        alert("内容不能为空！")
      }if (ncontent==""){
        alert("内容不能为空！")
      }if (nsummary==""){
        alert("内容不能为空！")
      }else{
        $.ajax({
          "url":"/Topic/news_updateg",//提交链接
          "type":"post",//提交类型
          "data":{
            "nid":nid,
            "ntid":ntid,
            "ntitle":ntitle,
            "nauthor":nauthor,
            "nsummary":nsummary,
            "ncontent":ncontent,
            "npicPath":npicPath,
            "ncreateDate":ncreateDate,
            "nmodifyDate":nmodifyDate
          },//提交值
          "dataType":"text",//返回类型
          "success":function(data){
            console.log(data)
            if (data){
              alert("提交成功！");
              let aa=$("[name='submit']");
              time(aa);
            }else{
              alert("1提交失败！");
            }
          },
          "error":function(){//成功与否运行
            alert("2提交失败！");
            console.log("查询失败");
          }
        })
      }
    })
  })
</script>