Type.registerNamespace('com.yonyou.applog.DaysendControllerBase');
com.yonyou.applog.DaysendControllerBase = function() {
    //Step 1：inherit the base class
    com.yonyou.applog.DaysendControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
    };

    //user controller instance
    if(com.yonyou.applog.DaysendController){
        this._userController = new com.yonyou.applog.DaysendController();
    }else{
        alert("please check the js file[com.yonyou.applog.DaysendController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Daysend] do not define the context
    this._entity = null;
    this._context = null;
}
com.yonyou.applog.DaysendControllerBase.prototype = {
};
com.yonyou.applog.DaysendControllerBase.registerClass('com.yonyou.applog.DaysendControllerBase',UMP.UI.Mvc.Controller);
