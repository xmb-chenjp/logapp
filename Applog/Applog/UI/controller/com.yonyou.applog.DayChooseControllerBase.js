Type.registerNamespace('com.yonyou.applog.DayChooseControllerBase');
com.yonyou.applog.DayChooseControllerBase = function() {
    //Step 1：inherit the base class
    com.yonyou.applog.DayChooseControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
    };

    //user controller instance
    if(com.yonyou.applog.DayChooseController){
        this._userController = new com.yonyou.applog.DayChooseController();
    }else{
        alert("please check the js file[com.yonyou.applog.DayChooseController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[DayChoose] do not define the context
    this._entity = null;
    this._context = null;
}
com.yonyou.applog.DayChooseControllerBase.prototype = {
};
com.yonyou.applog.DayChooseControllerBase.registerClass('com.yonyou.applog.DayChooseControllerBase',UMP.UI.Mvc.Controller);
