<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Basic Page Needs
================================================== -->
<title>gaeverything</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href= "<c:url value = '/resources/css/style.css'/>">
<link rel="stylesheet" href= "<c:url value = '/resources/css/colors/main.css'/>" id="colors">
<script type="text/javascript">
</script>
</head>

<body>
<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container
================================================== -->
<header id="header-container">
	<%@include file = 'header.jsp' %>
</header>
<div class="clearfix"></div>
<!-- Header Container / End -->


<!-- Banner
================================================== -->
<form action="/map/homeSearchResult" method="post">
<div class="main-search-container" data-background-image="/resources/images/main-search-background-03.jpg">
	<div class="main-search-inner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Find Nearby Attractions</h2>
					<h4>Explore top-rated dog cares, events and more!</h4>

					<div class="main-search-input">
						<div class="main-search-input-item">
							<input type="text" placeholder="What are you looking for?" name = "searchWord" value=""/>
						</div>
						
						<div class="main-search-input-item">
							<select data-placeholder="All Categories" class="chosen-select" name="searchOption">
								<option value="1">Name</option>
								<option value="2">Location</option>
							</select>
						</div>

						<button class="button">Search</button>
					</div>
					<div class="main-search-input" style="margin-top: 10px;width: 518px;">
						<div class="panel-dropdown-content checkboxes categories" style="padding-top: 0px; padding-bottom: 0px; padding-left: 0px;font-size:16px;">
							<span style="padding-right: 10px;padding-left: 20px;">Categories : </span>  
							<input id="check-1" type="checkbox" name="check" checked="checked" value="5 449 776">
							<label for="check-1">Hospital</label>
	
							<input id="check-2" type="checkbox" name="check">
							<label for="check-2">Event</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>

<!-- Content
================================================== -->
<div class="container">
	<div class="row">

		<div class="col-md-12">
			<h3 class="headline centered margin-top-75">
				Browse Categories
			</h3>
		</div>

	</div>
</div>

<!-- Category Boxes -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="categories-boxes-container margin-top-5 margin-bottom-30">
				
				<!-- Box -->
				<a href="/map/viewMapList" class="category-small-box">
					<i class="im im-icon-Clinic"></i>
					<h4>Care</h4>
				</a>

				<!-- Box -->
				<a href="/event/viewEventList" class="category-small-box">
					<i class="im im-icon-Clown"></i>
					<h4>Event</h4>
				</a>

				<!-- Box -->
				<a href="/review/viewReviewList" class="category-small-box">
					<i class="im im-icon-Bulleted-List"></i>
					<h4>Review</h4>
				</a>
				
								<!-- Box -->
				<a href="/mypage/calendar/viewCalendar" class="category-small-box">
					<i class="im im-icon-Calendar"></i>
					<h4>Calendar</h4>
				</a>

				

			</div>
		</div>
	</div>
</div>
<!-- Category Boxes / End -->

<!-- Fullwidth Section1: 가장 리뷰 수 많은 곳 -->
<section class="fullwidth  padding-top-75 padding-bottom-70" data-background-color="#f8f8f8">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					Most Reviewed Places
					<span>Discover most-reviewed local places</span>
				</h3>
			</div>

			<div class="col-md-12">
				<div class="sim" id="mostReviewed">
				<!-- Listing Item -->
				<!-- Listing Item / End -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Fullwidth Section / End -->


<!-- Fullwidth Section2: 가장 별점 많이 받은 곳 -->
<section class="fullwidth padding-bottom-70" data-background-color="#f8f8f8">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					Most Rated Places
					<span>Discover most-rated local places</span>
				</h3>
			</div>
		
			 <div class="col-md-12">
				 <div class="mostRated" id="mostRated">
				<!-- Listing Item -->
				<!-- Listing Item / End -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Fullwidth Section / End -->

<!-- Fullwidth Section3: 가장 북마크수 많은 곳 -->
<section class="fullwidth padding-bottom-70" data-background-color="#f8f8f8">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					Most Reviewed Places
					<span>Discover most-reviewed local places</span>
				</h3>
			</div>

			<div class="col-md-12">
				<div class="sim" id="mostBookmarked">
				<!-- Listing Item -->
				<!-- Listing Item / End -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Fullwidth Section / End -->

<!-- Section4: 최신 리뷰 순 -->
<section class="fullwidth border-top padding-top-75 padding-bottom-75" data-background-color="#fff">
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h3 class="headline centered margin-bottom-45">
					From The Review
				</h3>
			</div>
		</div>

		<div class="row" id = "reviews">
			<!-- Blog Post Item -->
			<!-- Blog post Item / End -->
		</div>
		<div class="col-md-12 centered-content">
			<a href="/review/viewReviewList" class="button border margin-top-10">View Blog</a>
		</div>

	</div>
</section>
<!-- Recent Blog Posts / End -->


<!-- Footer
================================================== -->
<%@include file = "footer.jsp" %>
<!-- Footer / End -->


<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>


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
<script type="text/javascript" src="<c:url value = '/resources/scripts/home-list.js'/>"></script>
<script type="text/javascript" src="<c:url value = '/resources/jQuery.dotdotdot-master/src/jquery.dotdotdot.js'/>"></script>


<script>

$(document).ready(function(){
	mostReviewed();
	mostRated();
	newestReview();
	$('.preview_box').dotdotdot({
		ellipis : '...',
		wrap    : 'word',
		height  : '100px',
		callback	: function( isTruncated, orgContent ) {},
		lastCharacter : {
			remove : ['','.',';','!','?'],
			noEllipis: []
		}
	});
	//starRating('.star-rating');
});



</script>
</body>
</html>
