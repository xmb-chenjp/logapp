<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="DayChoose" controller="DayChooseController" namespace="com.yonyou.applog">
    <import ref="DayChoose.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="发送人员" class="navigatorbarclass">
            <input id="button0" value="返回" class="ngbbuttonclass" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <div id="panel0">
            <div id="panel2">
                <label id="label7">发送给部门</label>
                <label id="label8"/>
                <label id="label10"/>
                <image id="image1" onclick="this.image1_onclick()" scaletype="fitcenter" src="arrow.png"/> 
            </div> 
        </div>
        <div id="panel1">
            <div id="panel3" onload="this.panel3_onload()">
                <label id="label1">发送给人员</label>
                <label id="label2"/>
                <label id="label3"/>
                <image id="image0" scaletype="fitcenter" src="arrow.png"/> 
            </div> 
        </div> 
    </div> 
</window>
