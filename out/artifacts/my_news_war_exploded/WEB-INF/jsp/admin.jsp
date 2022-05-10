<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>管理后台</title>
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
    <div id="status">
        <c:if test="${uname eq null}">
            <form id="login" method="post" action="/News/dlu">
                <label>登录名</label><input type="text" name="username" value="" class="login_input" />
                <label>密&#160;&#160;码</label><input type="password" name="upwd" value="" class="login_input" />
                <input type="submit" class="login_sub" value="登录" />
                <a href="/Topic/register2">新人用户注册</a>
            </form>
        </c:if>
        <c:if test="${uname ne null}">
            <form id="login" method="#" action="javascript:void(0)">
                <label>用户：</label><label>${uname}&#160;&#160;欢迎登陆</label>&#160;&#160;<a href="/News/newselect"> 新闻主页 </a>&#160;&#160;<a href="/News/tdlu"> 登出 </a>
            </form>
        </c:if>
    </div>
    <div id="channel"></div>
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
        <ul class="classlist">
            <c:forEach items="${sessionScope.json.news}" var="newss">
                <li>${newss.ntitle}<span>作者：${newss.nauthor}&#160;&#160;&#160;&#160;<a href='/Topic/news_update/${newss.nid}'>修改</a>&#160;&#160;&#160;&#160;<a href='javascript:sc(${newss.nid})'>删除</a></span></li>
            </c:forEach>
        </ul>
        <h2><span>数据总行数${sessionScope.json.page.count}</span>当前<span class="aa">${sessionScope.json.page.pagey }</span> / ${sessionScope.json.page.totalCount }
        <a href="javascript:fy(1)">首    页</a>
        <a class="nextPages" href="javascript:fy(${sessionScope.json.page.pagey-1 })">上一页</a>
        <a class="nextPagex" href="javascript:fy(${sessionScope.json.page.pagey+1 });">下一页</a>
        <a class="lastPage" href="javascript:fy(${sessionScope.json.page.totalCount });">页    尾</a>
        <%--<a href="Servlet?zz=test&page=1">跳</a>--%></h2>
    </div>
</div>

<div id="site_link">
	<a href="#">关于我们</a><span>|</span>
    <a href="#">Aboue Us</a><span>|</span>
    <a href="#">联系我们</a><span>|</span>
    <a href="#">广告服务</a><span>|</span>
    <a href="#">供稿服务</a><span>|</span>
    <a href="#">法律声明</a><span>|</span>
    <a href="#">招聘信息</a><span>|</span>
    <a href="#">网站地图</a><span>|</span>
    <a href="#">留言反馈</a>
</div>
<div id="footer">
	<p class="">24小时客户服务热线：010-68988888  &#160;&#160;&#160;&#160;  <a href="#">常见问题解答</a>  &#160;&#160;&#160;&#160;  新闻热线：010-627488888<br />
	文明办网文明上网举报电话：010-627488888  &#160;&#160;&#160;&#160;  举报邮箱：<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	新闻中国   版权所有</p>	
</div>
</body>
</html>
<script type="text/javascript">
    function fy(y){
        $.ajax({
            "url":"/Topic/fycx/"+y,//提交链接
            "type":"get",//提交类型
            "data":{},//提交值
            "dataType":"json",//返回类型
            "success":function(data){
                console.log(data);
                $(".classlist li").remove();
                $.each(data.news,function (index,item){
                    let ntitle=item.ntitle;
                    let nauthor=item.nauthor;
                    let nid=item.nid;
                    let lis=$("<li>"+ntitle+"<span>作者："+nauthor+"&#160;&#160;&#160;&#160;<a href='/Topic/news_update/"+nid+"'>修改</a>&#160;&#160;&#160;&#160;<a href='javascript:sc("+nid+")'>删除</a></span></li>");
                    $(".classlist").append(lis);
                });
                //修改翻页链接
                $(".nextPages").attr("href","javascript:fy("+(data.page.pagey-1)+")");//上一页
                $(".nextPagex").attr("href","javascript:fy("+(data.page.pagey+1)+")");//下一页
                $(".aa").text(data.page.pagey);
            },
            "error":function(){//成功与否运行
                console.log("查询失败");
            }
        })
    }
    //删除
    function sc(id){
        let xbiao=$(this).index();
        console.log(xbiao);
        var flag=confirm("是否删除！")
        if (flag){
            $.ajax({
                "url":"/Topic/scxw/"+id,//提交链接
                "type":"post",//提交类型
                "data":{},//提交值
                "dataType":"text",//返回类型
                "success":function(data){//返回类型的最终值
                    console.log(data);
                    console.log(typeof (data));
                    if(data){
                        $(".classlist li:eq("+xbiao+")").remove();
                        console.log("删除成功");
                    }else{
                        alert("删除失败2")
                    }
                },
                "error":function(){//成功与否运行
                    alert("删除失败")
                }
            })
        }
    };
</script>