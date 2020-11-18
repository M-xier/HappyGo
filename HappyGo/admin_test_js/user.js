$(function(){
	/*
		用户详细模态框id : modal-show-user
		新增用户模态框id : modal-add-user
			--form-add-user
		编辑用户模态框id : modal-edit-user
			--form-edit-user
	*/
	
	
	//获取用户列表
	$.get(""，function(userListJSON){
		var conv = "";
		userListJSON.forEach(function(i){
			conv+="<tr>";
				conv+="<td class='hidden-xs user-img'>";
					conv+="<img src='../img/users/user_default.png' class='img-circle' />";
				conv+="</td>";
				conv+="<td>"+i.login+"</td>";
				conv+="<td>"+i.name+"</td>";
				conv+="<td class='hidden-xs'>"+i.sex+"</td>";
				conv+="<td class='hidden-xs hidden-sm'>"+i.phone+"</td>";
				conv+="<td class='hidden-xs hidden-sm'>"+i.birthday+"</td>";
				conv+="<td>";
					//判断
					if(i.ismaster){
						conv+="<span class='glyphicon glyphicon-user text-primary'></span>";
						conv+="<span class='hidden-xs'>管理员</span>";
					}else{
						conv+="<span class='glyphicon glyphicon-user text-muted'></span>";
						conv+="<span class='hidden-xs'>用户</span>";
					}
				conv+="</td>";
				conv+="<td class='dropdown' width='80'>";
					conv+="<button data-toggle='dropdown' class='btn btn-xs btn-primary'>";
						conv+="<span>管理</span>";
						conv+="<span class='caret'></span>";
					conv+="</button>";
					conv+="<ul class='dropdown-menu'>";
						conv+="<li><a href='javasrcipt:toDetails("+i.id+")' data-toggle='modal'>详细</a></li>";
						conv+="<li><a href='javasrcipt:toUpdUser("+i.id+")' data-toggle='modal'>编辑</a></li>";
						conv+="<li class='divider'></li>";
						conv+="<li><a href='javasrcipt:doDelUser("+i.id+")' data-del=''><span class='text-danger'>删除</span></a></li>";
					conv+="</ul>";
				conv+="</td>";
			conv+="</tr>";
		})
	})
	
	//修改
	$("").click(function(){
		$.post("",$("").serialize(),function(flag){
			//判断是否成功
		})
	})
	
	//添加
	$("").click(function(){
		$.post("",$("").serialize(),function(flag){
			//判断是否成功
		})
	})
	
})
//个人详情
function toDetails(id){
	
}
//修改
function toUpdUser(id){
	
}
//删除
function doDelUser(id){
	
}
								
								
								
								
							
						
					