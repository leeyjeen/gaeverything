var wheelHandler = function zoomHandler(){
	    // 지도의 현재 레벨을 얻어옵니다
		listPage = 0;
	    var eLevel = map.getLevel();
	    var center = map.getCenter(); 
	    latitude = center.getLat();
	    longitude = center.getLng();
		var categories = "";
		$('input[name="check"]:checked').each(function() {
			categories+= $(this).val()+",";
		 });
		
		
	    var url = '/map/getSearchLocationData?searchWord='+searchWord+'&categories='+categories+'&level='+eLevel+'&lat='+latitude+'&lon='+longitude+'&option='+option;
	   	$.ajax({
			url : url,
			dataType : 'json',
			type:"POST",
			success : function(data) {
				locData = data.places;
				var length = data.places.length;
				var result = length+' Results Found';
				$('#resultCount').text(result);
				
				displayPlaces(data.places);
				displayInfoList(data.pList, data.infoList, 5, 0);
				clusterer.clear();
				clusterer.addMarkers(markers);
			},
			error : function(request, status, error) {
				 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
           }
		});
	};
	
	function wheelEventAdd(){
		daum.maps.event.addListener(map, 'zoom_changed', wheelHandler);
	}
	
	function wheelEventRemove(){
		daum.maps.event.removeListener(map, 'zoom_changed', wheelHandler);
	}
	
	function moveEventAdd(){
		daum.maps.event.addListener(map, 'dragend', wheelHandler);
	}
	
	function moveEventRemove(){
		daum.maps.event.removeListener(map, 'dragend', wheelHandler);
	}
	
	