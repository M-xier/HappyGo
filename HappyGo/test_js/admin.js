$(function(){
	
	/*
		表单信息
		头像img-id: 		myIcon  
		用户名-id: 		myLogin
		姓名-id: 		myName
		密码-id:			myPwd
		确认密码-id: 	myPwds
		性别radio-name:  u.sex
		生日-id: 		myDate
		电话-id:			myTel
		修改按钮-id:     myUpdate
	*/
   
   //获取个人信息
	$.get("http://localhost:8080/HappyGo/my.see?method=findOne",function(userJSON){
		
	})
	
	//修改个人信息
	$("#myUpdate").click(function(){
		$.post("",{},function(flag){
			
		})
	})
})