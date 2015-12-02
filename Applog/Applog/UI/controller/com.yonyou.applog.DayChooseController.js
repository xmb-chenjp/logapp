Type.registerNamespace('com.yonyou.applog.DayChooseController');
com.yonyou.applog.DayChooseController = function() {

}
function com$yonyou$applog$DayChooseController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function com$yonyou$applog$DayChooseController$image1_onclick(sender, args){
	$view.open({
		"viewid" : "com.yonyou.applog.Daysend",//目标页面（首字母大写）全名，
		"isKeep" : "true",//保留当前页面不关闭
		"callback":"mycallback()",//回调的JS方法
		"flagdata":"{flag:1}"
	});
	
}
function com$yonyou$applog$DayChooseController$panel3_onload(sender, args){
	$view.open({
		"viewid" : "com.yonyou.applog.Daysend",//目标页面（首字母大写）全名，
		"isKeep" : "true",//保留当前页面不关闭
		"callback":"mycallback()",//回调的JS方法
		"flagdata":"{flag:2}"
	});
	
}
com.yonyou.applog.DayChooseController.prototype = {
    panel3_onload : com$yonyou$applog$DayChooseController$panel3_onload,
    image1_onclick : com$yonyou$applog$DayChooseController$image1_onclick,
    initialize : com$yonyou$applog$DayChooseController$initialize
};
com.yonyou.applog.DayChooseController.registerClass('com.yonyou.applog.DayChooseController');
