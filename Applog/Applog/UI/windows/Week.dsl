<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Week" canvaswidth="320" canvasheight="660" orientation="vertical" controller="WeekController" namespace="com.yonyou.applog">
    <import ref="Week.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <div id="panel0">
            <div id="panel1">
                <navigatorbar id="navigatorbar0" class="navigatorbarclass">
                    <input id="button0" class="ngbbuttonclass" type="button"/>
                    <label id="label0">发起日志</label>
                    <input id="button1" value="选择模板" class="ngbbuttonclass" type="button"/> 
                </navigatorbar> 
            </div>
            <div id="panel8">
                <label id="label7">周报</label> 
            </div>
            <div id="panel2">
                <div id="panel9">
                    <label id="label8"/>
                    <label id="label9">本周完成工作</label>
                    <input id="textbox3" maxlength="256" placeholder="文本输入框" type="text"/> 
                </div>
                <div id="panel7">
                    <label id="label5"/>
                    <label id="label6">本周工作总结</label>
                    <input id="textbox2" maxlength="256" placeholder="文本输入框" type="text"/> 
                </div>
                <div id="panel6">
                    <label id="label3"/>
                    <label id="label4">下载工作计划</label>
                    <input id="textbox1" maxlength="256" placeholder="文本输入框" type="text"/> 
                </div>
                <div id="panel5">
                    <label id="label1"/>
                    <label id="label2">需协调帮助</label>
                    <input id="textbox0" maxlength="256" placeholder="文本输入框" type="text"/> 
                </div> 
            </div>
            <div id="panel3">
                <textArea id="textarea0" placeholder="这是一个文本域，可输入多行文本..."/>
            </div>
            <div id="panel4">
                <camera id="camera0"/>
            </div>
            <div id="panel10">
                <label id="label10">所在位置</label>
            </div>
            <div id="panel11">
                <input id="button2" value="下一步" class="textbtnclass" type="button"/>
            </div>
            <div id="panel12"/> 
        </div> 
    </div> 
</window>
