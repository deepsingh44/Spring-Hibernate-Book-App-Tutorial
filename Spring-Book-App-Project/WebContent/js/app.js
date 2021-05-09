$(document).ready(function() {

	$("#btn").click(function() {
		var bname = $("#name").val();
		var bprice = $("#price").val();
		var bauthor = $("#author").val();
		var bdate = $("#date").val();
		var bcategory = $("#category").val();
		
		$.post("add",{
			name:bname,
			price:bprice,
			author:bauthor,
			date:bdate,
			category:bcategory,
		},function(response){
			alert(response);
		});
	});

});