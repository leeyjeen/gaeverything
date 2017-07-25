<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Basic Page Needs
================================================== -->
<title>Gaverything</title>
<style type="text/css">
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href= "<c:url value = '/resources/css/style.css'/>">
<link rel="stylesheet" href= "<c:url value = '/resources/css/colors/main.css'/>" id="colors">

</head>

<body>

<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container" class="fixed fullwidth">
<%@include file = "../header.jsp" %>
</header>
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Content
================================================== -->
<div class="fs-container">

	<div class="fs-inner-container content">
		<div class="fs-content">

			<!-- Search -->
			<section class="search">

				<div class="row">
					<div class="col-md-12">

							<!-- Row With Forms -->
							<div class="row with-forms">

								<!-- Main Search Input -->
								<div class="col-fs-6">
									<div class="input-with-icon">
										<i class="sl sl-icon-magnifier"></i>
										<input type="text" placeholder="What are you looking for?" value=""/>
									</div>
								</div>

								<!-- Main Search Input -->
								<div class="col-fs-6">
									<div class="input-with-icon location">
							
										<input type="text" placeholder="Destination, city, address" value=""/>
										<a href="#"><i class="fa fa-dot-circle-o"></i></a>
									</div>
								</div>
						

								<!-- Filters -->
								<div class="col-fs-12">

									<!-- Panel Dropdown / End -->
									<div class="panel-dropdown">
										<a href="#">Categories</a>
										<div class="panel-dropdown-content checkboxes categories">
											
											<!-- Checkboxes -->
											<div class="row">
												<div class="col-md-6">
													<input id="check-1" type="checkbox" name="check" checked class="all">
													<label for="check-1">All Categories</label>

													<input id="check-2" type="checkbox" name="check">
													<label for="check-2">Shops</label>

													<input id="check-3" type="checkbox" name="check">
													<label for="check-3">Hotels</label>
												</div>	

												<div class="col-md-6">
													<input id="check-4" type="checkbox" name="check" >
													<label for="check-4">Eat & Drink</label>

													<input id="check-5" type="checkbox" name="check">
													<label for="check-5">Fitness</label>	

													<input id="check-6" type="checkbox" name="check">
													<label for="check-6">Events</label>
												</div>
											</div>
											
											<!-- Buttons -->
											<div class="panel-buttons">
												<button class="panel-cancel">Cancel</button>
												<button class="panel-apply">Apply</button>
											</div>

										</div>
									</div>
									<!-- Panel Dropdown / End -->

									<!-- Panel Dropdown -->
									<div class="panel-dropdown wide">
										<a href="#">More Filters</a>
										<div class="panel-dropdown-content checkboxes">

											<!-- Checkboxes -->
											<div class="row">
												<div class="col-md-6">
													<input id="check-a" type="checkbox" name="check">
													<label for="check-a">Elevator in building</label>

													<input id="check-b" type="checkbox" name="check">
													<label for="check-b">Friendly workspace</label>

													<input id="check-c" type="checkbox" name="check">
													<label for="check-c">Instant Book</label>

													<input id="check-d" type="checkbox" name="check">
													<label for="check-d">Wireless Internet</label>
												</div>	

												<div class="col-md-6">
													<input id="check-e" type="checkbox" name="check" >
													<label for="check-e">Free parking on premises</label>

													<input id="check-f" type="checkbox" name="check" >
													<label for="check-f">Free parking on street</label>

													<input id="check-g" type="checkbox" name="check">
													<label for="check-g">Smoking allowed</label>	

													<input id="check-h" type="checkbox" name="check">
													<label for="check-h">Events</label>
												</div>
											</div>
											
											<!-- Buttons -->
											<div class="panel-buttons">
												<button class="panel-cancel">Cancel</button>
												<button class="panel-apply">Apply</button>
											</div>

										</div>
									</div>
									<!-- Panel Dropdown / End -->

									<!-- Panel Dropdown -->
									<div class="panel-dropdown">
										<a href="#">Distance Radius</a>
										<div class="panel-dropdown-content">
											<input class="distance-radius" type="range" min="1" max="100" step="1" value="50" data-title="Radius around selected destination">
											<div class="panel-buttons">
												<button class="panel-cancel">Disable</button>
												<button class="panel-apply">Apply</button>
											</div>
										</div>
									</div>
									<!-- Panel Dropdown / End -->
									
								</div>
								<!-- Filters / End -->
	
							</div>
							<!-- Row With Forms / End -->

					</div>
				</div>

			</section>
			<!-- Search / End -->


		<section class="listings-container margin-top-30">
			<!-- Sorting / Layout Switcher -->
			<div class="row fs-switcher">

				<div class="col-md-6">
					<!-- Showing Results -->
					<p class="showing-results">14 Results Found </p>
				</div>

			</div>


			<!-- Listings -->
			<div class="row fs-listings" id="eventList">
				
				<!-- Listing Item -->
				<div class="col-lg-6 col-md-12" id="menu-wrap">
					<a href="listings-single-page.html" class="listing-item-container" data-marker-id="1">
						<div class="listing-item">
							<img src="/resources/images/listing-item-01.jpg" alt="">

							<div class="listing-badge now-open">Now Open</div>
							
							<div class="listing-item-content">
								<span class="tag">Eat & Drink</span>
								<h3>Tom's Restaurant</h3>
								<span>964 School Street, New York</span>
								<span>17/7/20 - 17/7/30</span>
							</div>
							<span class="like-icon"></span>
						</div>
						<div class="star-rating" data-rating="3.5">
							<div class="rating-counter">(12 reviews)</div>
						</div>
					</a>
				</div>
				<!-- Listing Item / End -->
			</div>
			<!-- Listings Container / End -->


			<!-- Pagination Container -->
			<div class="row fs-listings">
				<div class="col-md-12">

					<!-- Pagination -->
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12">
							<!-- Pagination -->
							<div class="pagination-container margin-top-15 margin-bottom-40">
								<nav class="pagination">
									<ul>
										<li><a href="#" class="current-page">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="sl sl-icon-arrow-right"></i></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<!-- Pagination / End -->
					
					<!-- Copyrights -->
					<div class="copyrights margin-top-0">© 2017 Listeo. All Rights Reserved.</div>

				</div>
			</div>
			<!-- Pagination Container / End -->
		</section>

		</div>
	</div>
	<div class="fs-inner-container map-fixed">

		<!-- Map -->
		<div id="map-container">
		    <div id="map" data-map-zoom="9" data-map-scroll="true">
		        <!-- map goes here -->
		    </div>
		</div>

	</div>
</div>


</div>
<!-- Wrapper / End -->


<!-- Scripts
================================================== -->
<script type="text/javascript" src="<c:url value = '/resources/scripts/jquery-2.2.0.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/jpanelmenu.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/chosen.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/slick.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/rangeslider.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/magnific-popup.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/waypoints.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/counterup.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/jquery-ui.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/tooltips.min.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/scripts/custom.js'/>"></script>

<!-- Maps -->
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=fa1e9654d15cae4c8c5f39d8b36f7984&libraries=clusterer"></script>
<script>
	
	//1. 기본 지도 보이기
	var container = document.getElementById("map"), //지도띄울 div
		options = {
			center :  new daum.maps.LatLng(37.6646797, 126.7421222), //지도 시작 시 좌표
			level  : 11 //확대, 축소정도
		};
	var map = new daum.maps.Map(container, options);
	/////////////////////////////////////////////////
		
	var markers = [];
	var makerPostions = [];
	var overlays = [];
		
	$(document).ready(function() {
		$.ajax ({
			url : "/event/getAllEvents",
			dataType : "json",
			type : 'post',
			success : function(data){
 				createMarkers(data);
 				createOverlays(data);
 				setMarkers(map);
 				
			},
			error : function(request, status, error) {
				 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
          }
		});
		
	});
		
	function createMarkers(data){
		for(i=0; i<data.length; i++){
			//1) 마커위치
			var markerPostion = new daum.maps.LatLng(data[i].latitude, data[i].longitude);
			//2) 마커이미지 셋팅
			var imgSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',
				imgSize = new daum.maps.Size(24, 36),
				imgOption = {offset: new daum.maps.Point(27,69)};
			
			//3) 마커이미지 셋팅값 넣어주기
			var markerImg = new daum.maps.MarkerImage(imgSrc, imgSize, imgOption);
			//4) 마커만들기(이미지, 위치)
			var marker = new daum.maps.Marker({
				position: markerPostion,
				image : markerImg
			});	
			//만든 마커를 배열에 추가
			markers.push(marker);
		}//for문 끝
		
	 }
	
	function createOverlays(data){
		for(i=0; i<data.length; i++){
			var content = '<div class="wrap">'+
			'	<div class="info">' + 
			'		<div class="title">' + data[i].eventName + 
			'			<div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
			'		</div>	' + 
			'		<div class="body">' + 
			'			<div class="img">' + 
			'				<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
			'				</div>' + 
			'			<div class="desc">' + 
			'				<div class="ellipsis">'+data[i].address+'</div>' +
			'				<div><a href="'+data[i].link+ '" target="_blank" class="link">홈페이지</a></div>' +
			'			</div>'+
			'		</div>'+
			'	</div>' + 
			'</div>';
			
			var overlayPosition =new daum.maps.LatLng(data[i].latitude, data[i].longitude);
			//3) 마커에 오버레이 표시
			var overlay = new daum.maps.CustomOverlay({
				content	 : content, //보여줄 내용 
				map 	 : map, 	//뿌릴 맵
				position : overlayPosition
			});
		}
		overlays.push(overlay);
		}//for
		
	// 배열에 추가된 마커들을 지도에 표시
	function setMarkers(map) {
	    for(i= 0; i<markers.length; i++) {
	        markers[i].setMap(map);
	    }            
	}	

		
		
	/* //3) 마커에 오버레이 표시
	var overlay = new daum.maps.CustomOverlay({
		content	 : content,
		map 	 : map,
		position : marker[i].getPosition()
	});
	
	//마커에 클릭이벤트 등록
	daum.maps.event.addListener(marker, 'click', function(){
		overlay.setMap(map);
	});
	
	function closeOverlay(){
		overlay.setMap(null);
	}
	 */
			


	
	//마커 뿌릴 데이터 가져오기
		/* $.ajax ({
			url : "event/getAllEvents",
			dataType : "json",
			type : 'post',
			success : function(data){
				//data: 10개 이벤트의 리스트가 옴 
				//마커 10개 생성(1개당 : 마커위치, 오버레이, 마커에 오버레이 셋팅 * 10번)
				var markers = [];
		
				for(i=0; i<data.length; i++){
					
					//1) 마커위치
					markerPostion = new daum.maps.LatLng(data[i].latitude, data[i].longtitude);
					marker = new daum.maps.Marker({
						position: markerPostion, 
						map		: map,
						image	: markerImg,
						clickable: true
					});	
				
					//2) 오버레이 내용
					var content = '<div class="wrap">'+
									'	<div class="info">' + 
									'		<div class="title">' + data.eventName + 
									'			<div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
									'		</div>	' + 
									'		<div class="body">' + 
									'			<div class="img">' + 
									'				<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
									'				</div>' + 
									'			<div class="desc">' + 
									'				<div class="ellipsis">'+data.address+'</div>' +
									'				<div><a href="'+data.link+'" target="_blank" class="link">홈페이지</a></div>' +
									'			</div>'+
									'		</div>'+
									'	</div>' + 
									'</div>';
								
					//3) 마커에 오버레이 표시
					var overlay = new daum.maps.CustomOverlay({
						content	 : content,
						map 	 : map,
						position : marker[i].getPosition()
					});
					
					//마커에 클릭이벤트 등록
					daum.maps.event.addListener(marker, 'click', function(){
						overlay.setMap(map);
					});
					
					function closeOverlay(){
						overlay.setMap(null);
					}
				add.markers[marker];
				}//for문
			}//success
		}) */
		

	
	
</script>


</body>
</html>