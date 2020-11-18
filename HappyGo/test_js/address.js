$(function(){
	/*
		收货地址表格id : myAddressTab 
		添加地址表单id : form-add-address
		--联系电话id	: addTel
		--详细地址id : addAddress
		--添加按钮id : addAddressBtn
	*/
	
	//获取收货地址
	$.get("",{},function(addressListJSON){
		var conv = "";
		categoryListJSON.forEach(function(i){
			conv+="<tr>"
			conv+="<td>"+i.contacts+"</td>";
			conv+="<td>"+i.tel+"</td>";
			conv+="<td>"+i.address+"</td>";
			conv+="<td>";
			conv+="<button data-del='"+i.id+"' class='btn btn-xs btn-danger'>";
			conv+="<span class='glyphicon glyphicon-remove'></span>";
			conv+="<span class='hidden-xs'>移除</span>";
			conv+="</button>";
			conv+="</td>";
			conv+="</tr>"
		}
		$("#myAddressTab tbody").append(conv);
	})
	
	//删除收货地址
	$(document).on('click', 'button[data-del]', function() {
		if (confirm('确定删除收货地址？')) {
			$.get("",{"",$(this).attr("data-del")},function(flag){
				if(""){
					$(this).parents('tr').fadeOut('fast', function() {
						var $tbody = $(this).parent('tbody');
						$(this).remove();
						$('#addr-count').text($tbody.find('tr').length)
					})
				}
			})
		}
	})
	
	//添加收货地址
	$("#addAddressBtn").click(){
		$.post("",$("#form-add-address").serialize(),function(flag){
			
		})
	}
})