$(function(){
	//登陆
	$("#loginBtn").click(function(){
		$.post("",{},function(flag){
			
		})
	})
	
	//注册
	$("#regBtn").click(function(){
		$.post("",{},function(flag){
			
		})
	})
	
	//注册用户时判断用户名是否存在
	$("#regH #login").blur(function(){
		if(this.val()!=""){
			$.post("",{},function(flag){
				
			})
		}
	})
})