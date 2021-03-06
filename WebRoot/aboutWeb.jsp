<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="keywords" content="heygis,地理信息科学,中南林业科技大学GIS">
		<meta name="description" content="中南林业科技大学gis协会官方网站">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery.form.js"></script>
		<script type="text/javascript" src="js/loginJS.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/navCSS.css" rel="stylesheet" type="text/css">
		<link href="css/footStyle.css" rel="stylesheet" type="text/css">
		<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
		<link href="css/aboutWebStyle.css" rel="stylesheet" type="text/css" />
		<title>heygis-关于本网站</title>
	</head>
	<body>
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse nav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle newMsgMark hidden" data-toggle="collapse" data-target="#navbar-ex-collapse">
						<span class="badge">0</span>
					</button>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><span class="heygis">HeyGIS</span></a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="index.jsp#bbs">论坛区</a>
						</li>
						<li>
							<a href="sourceServlet?index=panel-1">资源区</a>
						</li>
						<li>
							<a href="index.jsp#lkdVR">林科大全景</a>
						</li>
				<%if((Boolean)request.getAttribute("loged")){ %>
						<li>
							<a href="selfCenterServlet">个人中心<span class="badge hidden">0</span></a>
						</li>
						<li>
							<a class="btn" href="javascript:document:logout.submit()" >退出</a>
						</li>
				<%}else{ %>
						<li>
							<a class="btn theme-login" href="javascript:;">登录</a>
						</li>
						<li>
							<a class="btn " href="register.jsp">注册</a>
						</li>
					<%} %>
					</ul>
				</div>
			</div>
		</div>
		<br/><br/><br/>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div>
						<h1>关于本网站</h1>
						<h3>从想法到实际</h3>
					</div>
					<div class="VivaTimeline">
						<dl>
	                        <dt>May 2016</dt>                                    
	                        <dd class="pos-left clearfix">
	                            <div class="circ"></div>
	                            <div class="time">Feb 03</div>
	                            <div class="events">
	                                <div class="events-header">Event Heading</div>                               
	                            </div>
	                        </dd>
	                        <dt>Feb 2016</dt>
	                        <dd class="pos-right clearfix">
	                            <div class="circ"></div>
	                            <div class="time">Jan 21</div>
	                            <div class="events">
	                                <div class="events-header">A Very Very Looooooooooooooooooooong Event Heading</div>                                                     
	                            </div>
	                        </dd>   
	                        <dd class="pos-left clearfix">
	                            <div class="circ"></div>
	                            <div class="time">Jan 07</div>
	                            <div class="events">
	                                <div class="events-header">Event Heading</div>                               
	                            </div>
	                        </dd>                                    
	                        <dt>Jan 2016</dt>                        
	                        <dt>Dec 2015</dt>
	                        <dt>Oct 2015</dt>
	                        <dt>Sep 2015</dt>
	                        <dt>Aug 2015</dt>
	                    </dl>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid footer">
			<div class="container row-fluid foot">
				<div class="col-md-4  col-sm-6 foot-left">
					<h1 class="footh1">联系我们</h1> Email:heygis@163.com
					<br /> QQ:12345678
					<br /> Address:长沙市韶山南路498号中南林业科技大学
					<br />
				</div>
				<div class="col-md-4  col-sm-6 foot-right">
					<h1 class="footh1">相关链接</h1>
					<a href="feedbackServlet">意见反馈</a>
					<br /> <a href="aboutWeb.jsp">关于本网站</a>
					<br /> <a href="aboutMaker.jsp"> 关于制作者</a>
					<br />
				</div>
				<div class="col-md-4  col-sm-12 shenming">
					<span>注意：本站资源均来源于原创或网络,如有侵权请联系站长清除。</span>
					<br />
					<a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">湘ICP备16006264</a>
				</div>
			</div>
		</div>
		<div class="theme-popover col-md-12">
			<div class="theme-poptit">
				<a href="javascript:;" title="关闭" class="close">×</a>
				<h3>登录 是一种态度</h3>
			</div>
			<div class="theme-popbod dform">
				<form id="loginForm" class="theme-signin" name="loginform"  method="post" onsubmit="return login()">
					<ol>
						<li>
							<h4 id="loginMessage">你必须先登录！</h4>
						</li>
						<li><strong>用户名：</strong>
							<input class="ipt" type="text" name="account" value="" size="20" placeholder="账号（邮箱）"/>
						</li>
						<li><strong>密码：</strong>
							<input class="ipt" type="password" name="password" value="" placeholder="密码" size="20" />
						</li>
						<li>
							<input class="btn btn-primary" type="submit" name="submit" value=" 登 录    " />
							<a href="register.jsp">&nbsp;注册</a>
						</li>
					</ol>
				</form>
				<form id="logout" method="post" action="logoutServlet">
					<INPUT TYPE="submit" name="test" value = "go" style="display:none"> 
				</form>
			</div>
		</div>
		<div class="theme-popover-mask"></div>			
	</body>
	<script type="text/javascript" src="js/newMsg.js"></script>
	<script>
		var loged = <%=request.getAttribute("loged") %>;
		var uid = <%=request.getAttribute("uid")%>
	</script>
</html>
    