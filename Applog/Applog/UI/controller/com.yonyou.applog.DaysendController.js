Type.registerNamespace('com.yonyou.applog.DaysendController');
com.yonyou.applog.DaysendController = function() {

}
function com$yonyou$applog$DaysendController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function onload(sender, args){
	$service.writeConfig({
		"host" : "100.10.0.11",//向configure中写入host键值
		"port" : "8001"//向configure中写入port键值
		});
	if(flag=1){
	$service.callAction({
		"viewid" : "a.b.Data",//后台Controller(带包名)的类名
		"action" : "selectdata",//后台Controller的方法名,
		"callback" : "sCallBack()",//请求成功后回调js方法
		"error" : "sErrCallBack()"//请求失败回调的js方法
		})
	}else if(flag=2){
	$service.callAction({
		"viewid" : "a.b.Data",//后台Controller(带包名)的类名
		"action" : "selectdata",//后台Controller的方法名,
		"callback" : "sCallBack()",//请求成功后回调js方法
		"error" : "sErrCallBack()"//请求失败回调的js方法
		})
	}
		
}
function sCallBack(sender,args) {
	var data=$ctx.getString();
	var dataJson=  $stringToJSON(data);
	$ctx.push(dataJson);
}
function sErrCallBack(sender,args) {
	$alert("load data error!"+$jsonToString(args));
}

function com$yonyou$applog$DaysendController$button1_onclick(sender, args){
	var	nfwork;
	$service.callAction({
		"viewid" : "a.b.Data",//后台Controller(带包名)的类名
		"action" : "insertdata",//后台Controller的方法名,
		"indata":"{fwork,nfwork,work,memo,weizhi,person,time}",
		"callback" : "myCallBack()",//请求成功后回调js方法
		"error" : "myErrCallBack()"//请求失败回调的js方法
		})
}
function myCallBack(sender,args) {
	$alert("日报发送成功！");
}
function myErrCallBack(sender,args) {
	$alert("load data error!"+$jsonToString(args));
}
com.yonyou.applog.DaysendController.prototype = {
    button1_onclick : com$yonyou$applog$DaysendController$button1_onclick,
    initialize : com$yonyou$applog$DaysendController$initialize
};
com.yonyou.applog.DaysendController.registerClass('com.yonyou.applog.DaysendController');
