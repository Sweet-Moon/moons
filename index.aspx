<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GoodsProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>物品管理</title>
    <link href="easyui/1.5/themes/default/easyui.css" rel="stylesheet"  type="text/css" />
    <link href="CSS/icon.css" rel="stylesheet" type="text/css"  />
    <link href="CSS/Index.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout">
    <form id="form1" runat="server">
        <!--头部 Begin-->
        <div data-options="region:'north',title:'',split:false,collapsible:false,border:false" style="height:50px; background-color:#33AECC;">
            <div class="northLeft">物品管理系统</div>
            <div class="northRight">您好：<span id="cooklicName"></span><a href="javascript:void(0)" style="padding-left:20px; padding-right:20px; font-size:10pt; color:#fff;" id="exit">退出</a></div>
        </div>  
        <!--头部 END--> 
        <!--左边导航 Begin-->
        <div data-options="region:'west',title:'导航菜单',split:false" style="width:180px;">
             <div class="easyui-accordion" data-options="border:false,fit:true"> 
                 <div title="管理信息" data-options="iconCls:'icon-creditcards'" style="padding:5px;">
    			    <ul class="easyui-tree wu-side-tree">
                	    <li iconCls="icon-house" class="btn"><a href="javascript:void(0)" data-icon="icon-house" data-link="Goods/GoodsList.aspx" iframe="0">物品基础</a></li>
                        <li iconCls="icon-cart" class="btn"><a href="javascript:void(0)" data-icon="icon-cart" data-link="Warehouse/InWarehouseList.aspx" iframe="0">丢失物品</a></li>
                        <li iconCls="icon-house_go" class="btn"><a href="javascript:void(0)" data-icon="icon-house_go" data-link="Warehouse/OutWarehouseList.aspx" iframe="0">领走物品</a></li>
                        <li iconCls="icon-book" class="btn"><a href="javascript:void(0)" data-icon="icon-book" data-link="Brand/BrandList.aspx" iframe="0">分类管理</a></li>
                        <li iconCls="icon-cog" class="btn"><a href="javascript:void(0)" data-icon="icon-cog" data-link="User/UserList.aspx" iframe="0">登录管理</a></li>
                        
                    </ul>
                </div>
             </div>
        </div> 
        <!--左边导航 End-->

        <!--中间内容区 Begin-->
        <div class="wu-main" data-options="region:'center'">
            <div id="wu-tabs" class="easyui-tabs" data-options="border:false,fit:true">  
                <div title="物品基础" data-options="href:'Goods/GoodsList.aspx',closable:false,iconCls:'icon-house',cls:'pd3'"></div>
            </div>
        </div>
        <!--中间内容区 End-->

        <!--底部 Begin-->
        <div data-options="region:'south',title:'',split:false,border:false" style="height:30px; background-color:#EEEEEE; line-height:30px; text-align:center;">
            &copy; 2018 小型物品管理模块
        </div>   
        <!--底部 END-->  
    </form>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/jquery.md5.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="easyui/1.5/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        $(function () {
            //if ($.cookie('user')) {
            //    $("#cooklicName").html($.cookie('LoginName'));
            //}
            //else {
            //    $.messager.alert("警告", "登录超时！", "warning");
            //    window.location.href = "Login.html";
            //}
            //退出
            $("#exit").click(function () {
                $.messager.confirm('退出', '您确定退出吗？', function (flag) {
                    if (flag) {
                        $.removeCookie('Loginuser');
                        $.removeCookie('LoginName');
                        window.location.href = "Login.html";
                    }
                });
            });

            $('#btn a').click(function () {
                var title = $(this).text();
                var url = $(this).attr('data-link');
                var iconCls = $(this).attr('data-icon');
                var iframe = $(this).attr('iframe') == 1 ? true : false;
                addTab(title, url, iconCls, iframe);
            });

            $('.wu-side-tree a').bind("click", function () {
                var title = $(this).text();
                var url = $(this).attr('data-link');
                var iconCls = $(this).attr('data-icon');
                var iframe = $(this).attr('iframe') == 1 ? true : false;
                addTab(title, url, iconCls, iframe);
            });
        });

        /**
		* Name 添加菜单选项
		* Param title 名称
		* Param href 链接
		* Param iconCls 图标样式
		* Param iframe 链接跳转方式（true为iframe，false为href）
		*/
        function addTab(title, href, iconCls, iframe) {
            var tabPanel = $('#wu-tabs');
            if (!tabPanel.tabs('exists', title)) {
                var content = '<iframe scrolling="auto" frameborder="0"  src="' + href + '" style="width:100%;height:100%;"></iframe>';
                if (iframe) {
                    tabPanel.tabs('add', {
                        title: title,
                        content: content,
                        iconCls: iconCls,
                        fit: true,
                        cls: 'pd3',
                        closable: true
                    });
                }
                else {
                    tabPanel.tabs('add', {
                        title: title,
                        href: href,
                        iconCls: iconCls,
                        fit: true,
                        cls: 'pd3',
                        closable: true
                    });
                }
            }
            else {
                tabPanel.tabs('select', title);
            }
        }
    </script>
    </body>
</html>
