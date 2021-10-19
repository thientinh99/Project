$(document).ready(function() {

	$(".add-to-cart-btn").click(function() {
		var number = $(this).closest("div").find(".qty-input").text();
		var bookImage = $("#bookImage").text();
		var bookName = $("#bookName").text();
		var bookId = $("#bookName").attr("data-bookId");
		var bookPrice = $("#bookPrice").attr("data-value");

		$.ajax({
			url: "/BookShop/api/addToCart",
			type: "GET",
			data: {
				booId: bookId,
				bookName: bookName,
				bookImage: bookImage,
				number: number,
				bookPrice: bookPrice,
			},
			success: function(value) {

			}
		}).done(function() {
			$.ajax({
				url: "/BookShop/api/NumberOfCart",
				type: "GET",
				success: function(value) {
					$(".minicart-contain").html("<i>" + "<span" > + value + "</span>" + "<i>");
				}
			});
		});
	});


});
