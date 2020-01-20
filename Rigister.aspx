<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rigister.aspx.cs" Inherits="GoodsProject.Rigister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册系统</title>
    <script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/jquery.md5.js" type="text/javascript"></script>
    <script src="js/jquery.slideunlock.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <link type="text/css" rel="Stylesheet" href="CSS/login.css" />
    </head>
<body>
    <form id="form1" runat="server">
    <div class="login" style="margin-top:50px;">

        <div class="header">
            <div class="switch" id="switch">
                <a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">注册系统</a>
            </div>
        </div>

        <div class="web_qr_login" id="web_qr_login" style="display: block; height: 280px;">
            <!--注册-->
            <div class="web_login" id="web_login">
                <div class="login-box">
                    <div class="login_form">

                        <input type="hidden" name="did" value="0" />
                        <input type="hidden" name="to" value="log" />
                        <div class="uinArea" id="uinArea">
                            <label class="input-tips" for="u">帐号：</label>
                            <div class="inputOuter" id="uArea">
                                <input type="text" id="txtUserName" name="username" class="inputstyle" />
                            </div>
                        </div>
                        <div class="pwdArea" id="pwdArea">
                            <label class="input-tips" for="p">密码：</label>
                            <div class="inputOuter" id="pArea">
                                <input type="password" id="txtPassword" name="p" class="inputstyle" />
                            </div>
                        </div>
                       

                        <div style="padding-left:50px;margin-top:20px;">
                            
                            &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="注 册" BackColor="#6699FF" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Large" ForeColor="White" Height="42px" OnClick="Button1_Click" Width="123px" />
                            
                            </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 已有帐号,我要 <asp:LinkButton ID="LinkButton1" runat="server">登录</asp:LinkButton>

                    </div>
                </div>
            </div>
            <!--注册end-->
        </div>
    </div>
    </form>
</body>
</html>
