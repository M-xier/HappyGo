$(function(){
	/*
		添加商品类别表单id : form-add-category
		添加商品模态框添加按钮id : form-add-category-btn
		-----------------
		编辑商品主类别模态框id : modal-edit-primary-category
		修改商品主类别模态框修改按钮id : modal-edit-primary-category-btn
		-----------------
		编辑商品子类别模态框id : modal-edit-category
		修改商品子类别模态框修改按钮id : modal-edit-category-btn
	*/
	//查询商品信息类别
	$.get("",function(categoryListJSON){
		var conv = "";
		categoryListJSON.forEach(function(i,index){
			conv+="<div class='panel panel-default'>";
			conv+="<div class='panel-heading'>";
			conv+="<div class='panel-title'>";
			conv+="<span class='glyphicon glyphicon-th-large'></span>";
			conv+="<label>"+i.name+"</label>";
			conv+="<div class='pull-right'>";
			conv+="<a href='#category-"+index+"' class='btn btn-xs btn-default' data-toggle='collapse'>";
			conv+="<span>所属子分类</span>";
			conv+="<span class='caret'></span>";
			conv+="</a>";
			conv+="<a href='javascript:toupd1("+i.id+")' class='btn btn-xs btn-default' data-toggle='modal'>修改</a>";
			conv+="<a href='javascript:categorydel("+i.id+")' class='btn btn-xs btn-danger' data-del=''>移除</a>";
			conv+="</div>";
			conv+="</div>";
			conv+="</div>";
			conv+="<div id='category-"+index+"' class='collapse in active'>";
			conv+="<div class='panel-body'>";
			conv+="<div class='list-group'>";
			//子类别
			categoryListJSON.forEach(function(it){
				if(it.parentId==i.id){
					conv+="<div class='list-group-item'>";
					conv+="<span class='glyphicon glyphicon-th'></span>";
					conv+="<label>"+it.name+"</label>";
					conv+="<div class='pull-right'>";
					conv+="<a href='javascript:toupd1("+it.id+")' class='btn btn-xs btn-default' data-toggle='modal'>修改</a>";
					conv+="<a href='javascript:categorydel("+it.id+")' class='btn btn-xs btn-danger' data-del=''>移除</a>";
					conv+="</div>";
					conv+="</div>";
				}
			}
			conv+="</div>";
			conv+="</div>";
			conv+="</div>";
			conv+="</div>";
		})
	}

	//添加商品类别
	$("#form-add-category-btn").click(function(){
		$.post("",$("#form-add-category").serialize(),function(flag){
			//判断是否成功
	})
	
	//修改商品主类别
	$("#modal-edit-primary-category-btn").click(function(){
		$.post("",$("#modal-edit-primary-category").serialize(),function(flag){
			//判断是否成功
		}) 
	})
	
	//修改商品子类别
	$("#modal-edit-category-btn").click(function(){
		$.post("",$("#modal-edit-category").serialize(),function(flag){
			//判断是否成功
		})
	})
})
//主类别
function toupd1(id){
	$.get(""，{"":id},function(categoryJSON){
		$('#modal-edit-primary-category').modal('show');
	})
}
//子类别
function toupd2(id){
	$.get(""，{"":id},function(categoryJSON){
		$('#modal-edit-category').modal('show');
	})
//删除类别
function categorydel(id){
	if(confirm("确认删除信息？")){
		$.get(""，{"":id},function(flag){
			//判断是否成功
		})
	}
}