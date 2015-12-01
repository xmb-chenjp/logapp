<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Login" controller="LoginController" namespace="com.yonyou.applog">
    <import ref="Login.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <div id="wloginpanel">
            <div id="wuserpanel">
                <image id="wuserimg" scaletype="fitcenter" src="fa_user.png"/>
                <input id="wusertext" maxlength="256" placeholder="手机\\用户名\\邮箱" type="text"/> 
            </div>
            <div id="wpasspanel">
                <image id="wpassimg" scaletype="fitcenter" src="fa_password.png"/>
                <input id="wpasstext" maxlength="256" placeholder="密码" type="password"/> 
            </div>
            <div id="wforgetpasspanel">
                <label id="wforgetpasslabel" class="linklabelclass">忘记密码</label> 
            </div>
            <input id="wloginbutton" value="登录" class="buttonclass loginbuttonclass" onclick="this.wloginbutton_onclick()" type="button"/>
            <div id="wotherpanel">
                <label id="wregisterlabel" class="linklabelclass">立即注册</label>
                <label id="wnouserloginlabel" class="linklabelclass">无账号快捷登录</label> 
            </div> 
        </div> 
    </div> 
</window>
