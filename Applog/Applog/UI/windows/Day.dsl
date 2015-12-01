<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Day" controller="DayController" namespace="com.yonyou.applog">
    <import ref="Day.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="日报" class="navigatorbarclass">
            <input id="button0" value="返回" class="ngbbuttonclass" type="button"/>
            <label id="label0"/>
            <input id="button1" class="ngbbuttonclass" type="button"/>
        </navigatorbar>
        <div id="panel0">
            <div id="panel1">
                <label id="label1">今日完成工作</label>
            </div>
            <div id="panel7">
                <input id="fwork" maxlength="256" placeholder="" type="text"/>
            </div>
        </div>
        <div id="panel2">
            <div id="panel3">
                <label id="label2">未完成工作</label>
            </div>
            <div id="panel8">
                <input id="nfwork" maxlength="256" placeholder="" type="text"/>
            </div>
        </div>
        <div id="panel4">
            <div id="panel5">
                <label id="label3">需协调工作</label>
            </div>
            <div id="panel9">
                <input id="work" maxlength="256" placeholder="" type="text"/>
            </div>
        </div>
        <div id="panel6">
            <input id="memo" maxlength="256" placeholder="备注" type="text"/>
        </div>
        <div id="panel10">
            <camera id="camera0"/>
        </div>
        <div id="panel11">
            <input id="weizhi" maxlength="256" placeholder="位置" type="text"/>
        </div>
        <div id="panel12">
            <input id="button3" value="下一步" class="textbtnclass" onclick="this.button3_onclick()" type="button"/>
        </div>
    </div> 
</window>
