$(function(){
	//ajax请求获得新闻列表
	$.get("",function(newsListJSON){
		var items = "";
		//循环拼接新闻
		newsListJSON.forEach(function(i){
			items +="<li><a href='news.html'><span class='pull-left'>"+i.title+"</span><span class='pull-right'>"+i.creaDate+"</span></a></li>";
		});
		//添加到页面
		$("#news").append(items);
	});
	
	
})