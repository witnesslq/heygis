<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String htmlURL = request.getAttribute("htmlURL").toString();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, minimal-ui" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta http-equiv="x-ua-compatible" content="IE=edge" />
		
		<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="js/loginJS.js"></script>
		<script type="text/javascript" src="js/vrScanJS.js"></script>
		<link href="css/navCSS.css" rel="stylesheet" type="text/css">
		<link href="css/footStyle.css" rel="stylesheet" type="text/css">
		<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/vrScanStyle.css" type="text/css" />
		<title>heygis-林科大全景</title>
	</head>
	<body>
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse nav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><span class="heygis1">heygis</span></a>
					<a class="navbar-brand"><span class="heygis">林科大全景</span></a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle suoyin" data-toggle="dropdown" role="button" aria-expanded="false">东园 </a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#">东门</a>
								</li>
								<li>
									<a href="#">图书馆</a>
								</li>
								<li>
									<a href="javascript:pqgc()">喷泉广场</a>
								</li>
								<li>
									<a href="javascript:yst()">一食堂</a>
								</li>
								<li>
									<a href="javascript:dxl()">电子信息楼</a>
								</li>
								<li>
									<a href="javascript:0">逸夫楼</a>
								</li>
								<li>
									<a href="javascript:0">土木楼</a>
								</li>
								<li>
									<a href="javascript:0">东园体育场</a>
								</li>
								<li>
									<a href="javascript:0">体育艺术馆</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle suoyin" data-toggle="dropdown" role="button" aria-expanded="false">林科大桥 </a>
							<ul class="dropdown-menu" role="menu">
								
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle suoyin" data-toggle="dropdown" role="button" aria-expanded="false">西园 </a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="javascript:qrp()">情人坡</a>
								</li>
								<li>
									<a href="javascript:0">西园足球场</a>
								</li>
								<li>
									<a href="javascript:0">西门</a>
								</li>
								<li>
									<a href="javascript:0">五食堂</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="index.jsp">退出全景</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="suoyidiv" class="navbar-fixed-bottom" >
			<button id="showornot" onclick="f()" class="btn btn-primary">隐藏缩略图</button>
			<div id="test" >
				<a href="javascript:pqgc()"><img class="img-thumbnail" src="img/bbs-1.JPG" /><span>喷泉中心</span></a>
				<a href="javascript:qrp()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>情人坡</span> </a>
				<a href="javascript:yst()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>一食堂</span> </a>
				<a href="javascript:dxl()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>电子信息楼</span> </a>
				<a href="javascript:yfl()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>逸夫楼</span> </a>
				<a href="javascript:lkdq()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>林科大桥</span> </a>
				<a href="javascript:dyydc()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>东园运动场</span> </a>
				<a href="javascript:wst()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>五食堂</span> </a>
				<a href="javascript:xyzqc()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>西园足球场</span> </a>
				<a href="javascript:tyysg()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>体育艺术馆</span> </a>
				<a href="javascript:dm()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>东门</span> </a>
				<a href="javascript:xm()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>西门</span> </a>
				<a href="javascript:sy()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>思源</span> </a>
				<a href="javascript:zjxl()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>主教学楼</span> </a>
				<a href="javascript:tml()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>土木楼</span> </a>
				<a href="javascript:tsg()"><img class="img-thumbnail" src="img/bbs-1.JPG " /><span>图书馆</span> </a>
			</div>
	    </div>  
	    <iframe id="myFrame" src="<%=htmlURL %>" frameborder="0" width="100%" height="100%" scrolling="no">	
		</iframe>
	</body>
</html>
