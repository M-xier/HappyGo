$(function() {
	/*
		购物车界面信息
			购物车表单id : form-cart
			
		
	*/

	
	/*
	
	购物车不经过数据库 弄本地储存

	//获取购物车信息+获得登陆信息判断是否登陆
	$.get("", {}, function(cartListJSON) {
		if (cartListJSON == "" || cartListJSON == null) {
			//显示空购物车界面

		} else {
			//显示购物车
			conv = "";
			cartListJSON.forEach(function(i, index) {
				conv += "<tr>";
				conv += "<td width='30'>";
				conv += "<input id='chk" + index + "' name='subCheckbox' type='checkbox' />";
				conv += "<input type='hidden' value='" + i.pPrice + "' />";
				conv += "</td>";
				conv += "<td>";
				conv += "	<label for='chk" + index + "' class='text-muted'>" + i.pName + "</label>";
				conv += "</td>";
				conv += "<td>";
				conv += "	<label for='chk" + index + "'>" + i.pPrice + "</label>";
				conv += "</td>";
				conv += "<td>";
				conv += "	<label for='chk" + index + "'>" + i.count + "</label>";
				conv += "</td>";
				conv += "<td>";
				conv += "	<label for='chk" + index + "'>" + i.pPrice * i.count + "</label>";
				conv += "</td>";
				conv += "<td>";
				conv += "<button data-del='" + i.id + "' type='button' class='btn btn-xs btn-danger'>";
				conv += "<span class='glyphicon glyphiWcon-remove'></span>";
				conv += "<span class='hidden-xs'>移除</span>";
				conv += "</button>";
				conv += "</td>";
				conv += "</tr>";
			})
			$("#form-cart tbody").append(conv);
		}
	})
	*/
})
