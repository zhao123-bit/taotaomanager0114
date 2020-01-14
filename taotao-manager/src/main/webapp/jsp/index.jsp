<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>淘淘商城后台</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>

</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">淘淘商城后台</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img">桔梗
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">个人中心</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">注销</a></li>
			</ul>
		</div>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a class="" href="javascript:;">商品管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a id="addItemCat" href="javascript:;">商品分类添加</a>
							</dd>
							<dd>
								<a href="javascript:;">商品分类查询</a>
							</dd>
							<dd>
								<a id="addItem" href="javascript:;">商品添加</a>
							</dd>
							<dd>
								<a id="showItem" href="javascript:;">商品查询</a>
							</dd>
							<dd>
								<a href="javascript:;">商品规格参数模板添加</a>
							</dd>
							<dd>
								<a href="javascript:;">商品规格参数模板查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">cms内容管理系统</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">cms内容模板添加</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容模板查询</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容添加</a>
							</dd>
							<dd>
								<a href="javascript:;">cms内容查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">订单管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查询订单</a>
							</dd>
							<dd>
								<a href="javascript:;">订单统计</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">用户管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查询用户</a>
							</dd>
							<dd>
								<a href="javascript:;">用户统计</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">权限管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">查看权限</a>
							</dd>
							<dd>
								<a href="javascript:;">分配权限</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">活动管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">新增活动</a>
							</dd>
							<dd>
								<a href="javascript:;">查看活动</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>
		<div class="layui-body">
			<!-- 内容主体区域
				 $("#content").load("/jsp/showItem.jsp");
			 -->
			<div id="content" style="padding: 15px;">
			
				<div class="layui-col-sm6 layui-col-md3">
        			<div class="layui-card">
         				 <div class="layui-card-header">
            					访问量
           				 <span class="layui-badge layui-bg-blue layuiadmin-badge">周</span>
         				 </div>
          				<div class="layui-card-body layuiadmin-card-list">
           					 <p class="layuiadmin-big-font">9,999,666</p>
           				 <p>总计访问量 
             	 			<span class="layuiadmin-span-color">88万 <i class="layui-inline layui-icon layui-icon-flag"></i></span>
           				</p>
         				</div>
        			</div>
      			</div>
      			<div class="layui-col-sm6 layui-col-md3">
       				<div class="layui-card">
          				<div class="layui-card-header">
            				下载
            			<span class="layui-badge layui-bg-cyan layuiadmin-badge">日</span>
          				</div>
          				<div class="layui-card-body layuiadmin-card-list">
            				<p class="layuiadmin-big-font">33,555</p>
            				<p> 新下载 
              				<span class="layuiadmin-span-color">10% <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
            				</p>
          				</div>
        			</div>
      			</div>
      			<div class="layui-col-sm6 layui-col-md3">
        			<div class="layui-card">
          				<div class="layui-card-header">
            				下载
            			<span class="layui-badge layui-bg-green layuiadmin-badge">月</span>
          				</div>
         					<div class="layui-card-body layuiadmin-card-list">
								<p class="layuiadmin-big-font">999,666</p>
            					<p>新下载 <span class="layuiadmin-span-color">40% <i class="layui-inline layui-icon layui-icon-dollar"></i></span></p>
          					</div>
        			</div>
      			</div>
     			<div class="layui-col-sm6 layui-col-md3">
        			<div class="layui-card">
          				<div class="layui-card-header">
            				下载
            				<span class="layui-badge layui-bg-orange layuiadmin-badge">季度</span>
          				</div>
          				<div class="layui-card-body layuiadmin-card-list">
							<p class="layuiadmin-big-font">66,666</p>
            				<p>新下载 <span class="layuiadmin-span-color">50% <i class="layui-inline layui-icon layui-icon-user"></i></span></p>
          				</div>
        			</div>
      			</div>   
      			
      			
      			
      			
      			 <div class="layui-col-sm12">
        <div class="layui-card">
          <div class="layui-card-header">
            		访问量
            <div class="layui-btn-group layuiadmin-btn-group">
              <a href="javascript:;" class="layui-btn layui-btn-primary layui-btn-xs">去年</a>
              <a href="javascript:;" class="layui-btn layui-btn-primary layui-btn-xs">今年</a>
            </div>
          </div>
          <div class="layui-card-body">
            <div class="layui-row">
              <div class="layui-col-sm8">
                  <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-pagetwo">
                    <div carousel-item id="LAY-index-pagetwo">
                      <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
                    </div>
                  </div>
              </div>
              <div class="layui-col-sm4">
                <div class="layuiadmin-card-list">
                  <p class="layuiadmin-normal-font">月访问数</p>
                  <span>同上期增长</span>
                  <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                    <div class="layui-progress-bar" lay-percent="30%"></div>
                  </div>
                </div>
                <div class="layuiadmin-card-list">
                  <p class="layuiadmin-normal-font">月下载数</p>
                  <span>同上期增长</span>
                  <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                    <div class="layui-progress-bar" lay-percent="20%"></div>
                  </div>
                </div>
                <div class="layuiadmin-card-list">
                  <p class="layuiadmin-normal-font">月收入</p>
                  <span>同上期增长</span>
                  <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                    <div class="layui-progress-bar" lay-percent="25%"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      			
      			
      			
      			
      			
      			
      			
      			
      			
      			
			</div>
		</div>
		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© 欢迎来到淘淘商城后台管理系统
		</div>
	</div>
</body>
</html>