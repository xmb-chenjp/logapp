<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Daysend" controller="DaysendController" namespace="com.yonyou.applog">
    <import ref="Daysend.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0" onload="onload()">
        <navigatorbar id="navigatorbar0" title="标题" class="navigatorbarclass">
            <input id="button0" value="返回" class="ngbbuttonclass" type="button"/>
            <label id="label0"/>
            <input id="button1" value="确认" class="textbtnclass" onclick="this.button1_onclick()" type="button"/> 
        </navigatorbar>
        <div id="panel0">
            <listView id="listviewdefine0" bindfield="data" collapsed="true">
                <div id="panel1">
                    <div id="panel2">
                        <div id="panel3">
                            <label id="name" bindfield="name">姓名</label> 
                        </div>
                        <div id="panel4">
                            <label id="tel" bindfield="tel">手机号码</label> 
                        </div>
                        <div id="panel5">
                            <input id="checkbox0" type="checkbox" checked="checked"/> 
                        </div> 
                    </div> 
                </div> 
            </listView> 
        </div> 
    </div> 
</window>
