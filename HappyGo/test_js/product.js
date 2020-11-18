$(function(){
	//首页低价商品
	$.get("",function(productListJSON){
		var conv = "";
		productListJSON.forEach(function(i,index){
			if(index==0||index==4){
				conv += "<div class='row'>";
			}
			conv += "<div class='col-sm-3 product-item'>";
			conv += "<div class='img-thumbnail'>";
			conv += "<div>";
			conv += "<a href='product.html'><img src='img/products/a.png' class='img-responsive img-rounded' /></a>";
			conv += "</div></div>";
			conv += "<div class='title'>";
			conv += "<a href='products.html'>"+i.title+"</a>";
			conv += "</div>";
			conv += "<div class='price'>";
			conv += "<span>￥</span>";
			conv += "<span>"+i.price+"</span>";
			conv += "</div></div>";
			if(index==3||index==7){
				conv += "</div>";
			}
		})
		//添加到列表
		$("").append(conv);
	})
	
	//搜索商品
	$("#searchProductBtn").click(function(){
		$.post("",{},function(data){
			
		})
	})
	
	
	//首页商品列表
	$.get("",function(categoryListJSON){
		var conv = "";
		categoryListJSON.forEach(function(i){
			if(i.parentId==""||i.parentId==null){
				conv+="<li class='dropdown'>";
				conv+="<a href='products.html' data-toggle='dropdown'>";
				conv+="<span>"+i.name+"</span>";
				conv+="<span class='caret'></span>";
				conv+="</a>";
				categoryListJSON.forEach(function(it){
					conv+="<ul class='dropdown-menu'>");
					conv+="<li><a href='products.html'>全部</a></li>";
					if(it.parentId==i.id){
						conv+="<li><a href='products.html'>"+it.name+"</a></li>";
					}
					conv+="</ul>";
				}
				conv+="</li>";
			}
		})
		//添加到列表
		$("").append(conv);
	})
})