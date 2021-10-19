
	$(function (){

		var rotateTimeOut = function (){
			$('#rotate').rotate({
				angle:0,
				animateTo:2160,
				duration:8000,
				// callback:function (){
				// 	alert('Kiến Tường，Chúc mừng bạn！');
				// }
			});
			//return(so.html);
		};

		var bRotate = false;

		var rotateFn = function (awards, angles, img,imggif){
			bRotate = !bRotate;
			$('#rotate').stopRotate();
			$('#rotate').rotate({
				angle:0,
				animateTo:angles+1800,
				duration:10000,
				callback:function (){
				Swal.fire({
				html:
				'<img src="/images/Icon Gif.gif" style="margin-top:-34em;padding-left:20em;width:31em">',
				  imageUrl:img,
				width: 600,
			  
			   // imageUrl: '/images/phaohoachumung.gif',
			 
			  padding: '3em',
				
			 backdrop: `
				rgba(0,0,123,0.4)
				
				url("/images/phaohoachumung.gif")
				 
				 
				 space
				  
			  `
			  
			})
					
				
					bRotate = !bRotate;
				}
			})
		};

		$('.pointer').click(function (){

			if(bRotate)return;
			var item = rnd(0,7);
			$("#sss").html(item);
			switch (item) {
			case 0: 
				//var angle = [26, 88, 137, 185, 235, 287, 337];
					rotateFn(0,337, 'images/Qua_May_Man.jpg' );
					 
					
					break;
			case 1:
					//var angle = [26, 88, 137, 185, 235, 287, 337];
					rotateFn(0,337, 'images/Qua_May_Man.jpg' );
					 
					
					break;
				case 2:
					//var angle = [88, 137, 185, 235, 287];
					//ĐÚNG VỊ TRÍ
					rotateFn(1, 26, 'images/Qua_Vang_Mo.jpg' );
					
					break;
				case 3:
					//var angle = [137, 185, 235, 287];
					//màu hồng đã đúng vị trí số 2 
					rotateFn(2, 88, 'images/Qua_Hong_Mo.jpg');
					break;
				case 4:
					//var angle = [137, 185, 235, 287];
					rotateFn(3, 137, 'images/Qua_Cam_Mo.jpg');
					break;
				case 5:
					//var angle = [185, 235, 287];
					rotateFn(4, 185, 'images/Qua_Xanh_La_Mo.jpg' );
					
					break;
				case 6:
					//var angle = [185, 235, 287];
					//ĐÚNG VỊ TRÍ 
					rotateFn(5, 235, 'images/Qua_Xanh_Duong_Mo.jpg' );
				
					break;
				case 7:
					//var angle = [235, 287];
					// ĐÚNG VỊ TRÍ
					rotateFn(7, 287, 'images/Qua_Tim_Mo.jpg');
					
					break;
					
					
			}

			console.log(item);
		});
	});
	<!--function rnd(n, m){-->

	<!--return Math.floor(Math.random(200)*(m-n+1)+n)-->
	<!--}-->

	function rnd(n, m){
	x= Math.floor(Math.random(100)*(m-n+1)+n);
	if(x==2 ||x==3){
		x-=1;
		return x;
	}if(x==4){
		
		return x-3;
	}if(x==6){
		return x+1;
	}if(x==5){
		return x+2;
	}
	return x;
	}
