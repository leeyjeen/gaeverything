<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Basic Page Needs
================================================== -->
<title>gaverything</title>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet"
	href="<c:url value = '/resources/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value = '/resources/css/colors/main.css'/>" id="colors">

</head>

<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header Container
================================================== -->
		<header id="header-container" class="fixed fullwidth"> <%@include
			file="../header.jsp"%> </header>
		<div class="clearfix"></div>
		<!-- Header Container / End -->


		<!-- Content
================================================== -->
		<div class="fs-container">
			<div class="fs-inner-container content">
				<div class="fs-content">
				<input type="hidden" id = "memberEmail" value = "${member.email}">
				
					<!-- Search -->
					<section class="search">
					<div class="row">
						<div class="col-md-12">

							<!-- Row With Forms -->
							<div class="row with-forms">

								<!-- Main Search Input -->
								<div class="col-fs-3">
									<select class="chosen-select" name="searchOption" id="searchOption">
										<option value="1" selected="selected" ${option==1?'selected="selected"':''}>Title</option>
										<option value="2" ${option==2?'selected="selected"':''}>Location</option>
									</select>
								</div>

								<!-- Main Search Input -->
								<div class="col-fs-6">															
									<div class="input-with-icon">
										<i class="sl sl-icon-magnifier"></i>
										 <input type="text" placeholder="What are you looking for?" value="" id="searchStr"/>
									</div>
								</div>	
								<div class="col-fs-3" style="text-align:center">
									<button class="button" id = "search"  style="margin: auto; width: 130px;" >search</button>			
								</div>
							</div>
						</div>
					</div>	
					<div class="col-fs-12">
						<div class="panel-dropdown-content checkboxes categories" style="padding-top: 0px; padding-bottom: 0px; padding-left: 0px;">
							<span style="padding-right: 10px;">Categories : </span>  
							<input id="check-1" type="checkbox" name="check" checked="checked" value="5 449 776">
							<label for="check-1">Fair</label>
	
							<input id="check-2" type="checkbox" name="check">
							<label for="check-2">Festival</label>
						</div>
					</div>
					</section>
					<!-- Search / End -->

					<section class="listings-container margin-top-30" id="menu_wrap">
					<!-- Sorting / Layout Switcher -->
					<div class="row fs-switcher">

						<div class="col-md-6">
							<!-- Showing Results -->
							<p class="showing-results" id="ResultsFound"></p>
						</div>
					</div>

					<!-- Listings(ul) -->
					<div class="row fs-listings" id="eventList">
						<!-- Listing Item -->
						
						<!-- Listing Item / End -->
					</div>
					<!-- Listings Container / End --> <!-- Pagination Container -->
					<div class="row fs-listings">
						<div class="col-md-12">

							<!-- Pagination -->
							<div class="clearfix"></div>
							<div class="row">
								<div class="col-md-12">
									<!-- Pagination -->
									<div
										class="pagination-container margin-top-15 margin-bottom-40">
										<nav class="pagination">
										<ul id="pagination">
										</ul>
										</nav>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<!-- Pagination / End -->

							<!-- Copyrights -->
							<div class="copyrights margin-top-0">© 2017 gaeverything. All
								Rights Reserved.</div>

						</div>
					</div>
					<!-- Pagination Container / End --> </section>

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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebfbfbd7a5ec71c10c63936dd90beb22&libraries=clusterer"></script>
	
	<script>
////하.........................................
	
	//1. 기본 지도 보이기
	var container = document.getElementById("map"), //지도띄울 div
	options = {
		center : new daum.maps.LatLng(37.6646797, 126.7421222), //지도 시작 시 좌표
		level : 12
	//확대, 축소정도
	};
	var map = new daum.maps.Map(container, options);
	/////////////////////////////////////////////////////////////////

	var markers = [];
	var eventData = [];
	var points = [];
	var overlay = new daum.maps.CustomOverlay();
	var listPage = 0;
	
	//시작 시 
	$(document).ready(function(){
		listAll(listPage);
	});

	
	function pageClickEvent(page) {
		var stringEventData = JSON.stringify(eventData);
		listPage = page;
		$.ajax({
			url 	 : "/event/getPagingData?page="+page,
			data	 : {"data": stringEventData},
			type 	 : 'post',
			dataType : "json",
			success  : function(data) {
				//eventList(data);
				
				displayEvent(data.pList, data.infoList, data.events, listPage);
				createMarker(data.events);

			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"+ request.responseText + "\n" + "error:"+ error);
			}
		});
	}
	
	function listAll(listPage) {
		$.ajax({
			url		 : "/event/getAllEvents",
			dataType : "json",
			type 	 : 'post',
			success  : function(data) {
				eventData = data.events; //전체이벤트리스트
				//data : 맵형식 -> 이벤트리스트, 페이징리스트, 
				var numOfData = data.events.length ;
				var foundResult = numOfData + ' Results Found';
				$('#ResultsFound').text(foundResult);
				//eventList(data);
				
				displayEvent(data.pList, data.infoList, data.events, listPage);
				createMarker(data.events);
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"+ request.responseText + "\n" + "error:"+ error);
			}
		});
	}
	//이벤트 검색
	$(document).ready(function(){
		$('#search').click(function(){
			//서치버튼을 클릭하면
			var searchStr = $('#searchStr').val();
			//스트링밸류와
			var opt = $('select[name="searchOption"]').val();
			//선택옵션 밸류를 받아서
			$.ajax({
				url  	 : "/event/searchEvent?opt="+opt+"&str="+searchStr, //쿼리스트링으로 보내줌 
				dataType : 'json',
				type	 : 'POST',
				success  : function(data){
					
						if(data.events.length == 0){
							alert("이벤트 검색 결과가 없습니다.");
							createMarker(data.events); //마커같이만듦
						}
						displayEvent(data.pList, data.infoList, data.events, listPage);
						createMarker(data.events); //마커같이만듦
						var numOfData = data.events.length ;
						var foundResult = numOfData + ' Results Found';
						$('#ResultsFound').text(foundResult);
				}
				
			});
			
		});
	});
		
	 //좋아요 클릭 핸들러
	function like_clicked(eventNo){
		var ele = document.getElementById("like"+eventNo); //어떤 이벤트에 라이크를 눌렀는지 해당 이벤트번호 같이 가져옴
		var class_name = ele.className; //로그인했으면 클래스가 like-icon 좋아요했으면 클래스가 like-icon clicked
		var email = document.getElementById("memberEmail").value;
		var url = "/review/updateEventLike?like="+class_name+"&eventNo="+eventNo+"&email="+email;
		$.ajax({
			url 	 : url,
			dataType : 'json',
			tyoe 	 : 'POST',
			success  : function(data){
				pageClickEvent(listPage);
			}
		});
	}
	  
	function no_login_like(){
		alert("로그인을 해주세요!");
		location.href = "/viewLogin?uri=/event/viewEventList";
	}

	function displayEvent(pList, infoList, events, listPage) {
		closeOverlay();
		clearMarkers();
		//좌측 리스트 붙일 태그
		var listEl = document.getElementById("eventList"), 
			menuEl = document.getElementById("menu-wrap"), 
			fragment = document.createDocumentFragment();
		
		//페이징만들기
		var pageList = document.getElementById("pagination");
			pageList.innerHTML = pList;
		
			removeAllChildNods(listEl);

		//좌측 리스트 만들기(페이징 당 갯수대로)
		for (var i=0; i<infoList.length; i++) {
			itemEl = eventItems(infoList[i]); //좌측 리스트 한덩어리
			fragment.appendChild(itemEl);
			mouseEvent(infoList[i]);
		}//for 
		
		listEl.appendChild(fragment);
		starRating('.star-rating');
	}
	
 	function mouseEvent(event){
 		(function(event){
			itemEl.onmouseover = function() {
				setOverlay(event); 		
				panTo(event);
			};
			 itemEl.onmouseout = function() {
				closeOverlay(); 			
			}; 
		})(event);
	} 
 	
 	function panTo(event) {
 	    var moveLatLon = new daum.maps.LatLng(event.latitude, event.longitude);
 	    map.panTo(moveLatLon);            
 	}  
	
	//좌측리스트
	function eventItems(event) {
		var el = document.createElement("div");
		var itemStr =  '	<div class="listing-item-container" data-marker-id="1">'
				+ '	   			<div class="listing-item">' 
				+ '					<img src="/resources/images/event/'+event.thumbnail+'" alt="">'
				+ '				<a href = "/event/detail/view?no='+event.eventNo + '">';
				
				if(event.eventName.match("KBC") || event.eventName.match("펫산업박람회")){
					itemStr += '<div class="listing-badge now-closed">Closed</div>';
				}else{
					itemStr += '<div class="listing-badge now-open">Coming Soon</div>';
				}
				itemStr += '					<div class="listing-item-content">';
				
				if(event.eventName.match("축제")||event.eventName.match("페스티벌")){
					itemStr += 			'<span class="tag" style="background: #f91942;">Festival</span>' ;
				}else{
					itemStr +=  		'<span class="tag" style="background: #f91942;">Fair</span>' ;
				}
			itemStr += '				<h3>'+ event.eventName + '</h3><br>'
				+ '						<span><i class="fa fa-map-marker"></i>  '+ event.address+ '</span><br>'
				+ '						<span><i class="fa fa-calendar-check-o"></i>  '+ event.startDate+ '  ~  '+ event.endDate	+ '</span><br>'
				+ '						<span><i class="fa fa-won"></i>  '+ event.fee+ '   <i class="fa fa-check"></i>  '+ event.discountInfo+ '</span>'
				+ '					</div>'
				+ '				</a>';
				
				if(event.userLikeStatus == null){
					itemStr += 		   '<span class="like-icon" id="like" onclick="no_login_like()"></span>	';
				}else{	
					itemStr +=         '<span class="'+event.userLikeStatus+'" id="like'+event.eventNo+'" onclick="like_clicked('+event.eventNo+')"></span>	';
				}
				
				itemStr += '			</div>'
				+		   '			<div class="star-rating" id="star-rating" data-rating="'+event.averageRatings+'">'
				+		   '           		<div class="rating-counter">'+ event.countReview+' reviews</div> '
				+		   '           		<span><i class="sl sl-icon-heart" style="color: #f91942"></i> '+event.countLike  +'</span> '
				+		   '           		<span><i class="sl sl-icon-bubble" style="color: #f91942"></i> '+event.countReplies+'</span> '
			 	+		   ' 			</div>';
		el.innerHTML = itemStr;
		el.className = 'col-lg-6 col-md-12';
		
		return el;
	}
	
	//2. 우측 마커+오버레이 만들기
	function createMarker(events) {
		var bounds = new daum.maps.LatLngBounds();    
		
		for(var i=0; i<events.length; i++){
			//1) 마커이미지 셋팅
			var imgSrc = 'http://icon-park.com/imagefiles/location_map_pin_red5.png', 
				imgSize = new daum.maps.Size(24, 36), 
				imgOption = { offset : new daum.maps.Point(27, 69)
			};
			//2) 마커이미지 셋팅값 넣어주기
			var markerImg = new daum.maps.MarkerImage(imgSrc, imgSize,imgOption);
			//3) 마커만들기(이미지, 위치)
			var markerPostion = new daum.maps.LatLng(events[i].latitude, events[i].longitude); 
			var marker = new daum.maps.Marker({
				position : markerPostion,
				image 	 : markerImg
			});
			
			//4)마커클릭이벤트
			markerClick(events[i], marker);
			//5)마커 지도에 배치
			marker.setMap(map);	
			//6)검색결과 마커에 따른 바운더리 값 지정
			bounds.extend(markerPostion);
			//7)마커 배열에 추가
			markers.push(marker);
		} 
		map.setBounds(bounds);
	}
	
	function markerClick(event, marker) {
		daum.maps.event.addListener(marker, 'click', function() {
			setOverlay(event);
			overlay.setMap(map);
		}); 
	}

	function createOverlay(event) {    
        var contentStr = 
        '<div class="wrap">' + 
           '    <div class="info">' + 
           '        <div class="title">' +event.eventName+ 
           '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
           '        </div>' + 
           '        <div class="body">' + 
           '            <div class="img">' +
           '                <img src="/resources/images/event/'+event.thumbnail+'" width="73" height="70">' +
           '           </div>' + 
           '            <div class="desc">' + 
           '                <div class="ellipsis">'+event.address+'</div>' + 
           '                <div class="jibun ellipsis">'+ event.startDate+ '  ~  '+ event.endDate	+ '</div>' + 
           '				<div class="star-rating" data-rating="'+event.averageRatings+'">'+
		   '					<div class="rating-counter"  style="font-size: 13px;padding-left: 0px;">'+event.countReview+' reviews '+ '<i class="im im-icon-Heart" style="color: #f91942"></i>'+event.countLike+' <i class="im im-icon-Speach-Bubble" style="color: #f91942"></i>'+event.countReplies+'</div>'+
		   '						</div>'+
           '                <div><a href="'+event.link+'" target="_blank" class="link">홈페이지</a></div>' + 
           '            </div>' + 
           '        </div>' + 
           '    </div>' +    
           '</div>';

	//2)오버레이 찍을 위치
	var overlayPosition = new daum.maps.LatLng(event.latitude, event.longitude)		
	//3) 오버레이 생성
	overlay.setContent(contentStr);
	overlay.setPosition(overlayPosition);
	}

	 function closeOverlay(){
		overlay.setMap(null);
	}   

	function clearMarkers(){
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
		markers = [];
		
	} 
	
	function removeAllChildNods(el) {
		while (el.hasChildNodes()) {
			el.removeChild(el.lastChild);
		}
	}
	
	function setOverlay(event){
		createOverlay(event);
    	overlay.setMap(map);
    }

	

	</script>
	
</body>
</html>