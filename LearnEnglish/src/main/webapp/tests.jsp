<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grow English Home</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Tùy chỉnh giao diện */
body, html {
	margin: 0;
	height: 100%;
	font-family: Arial, sans-serif;
}

.container-fluid {
	display: flex;
	flex-direction: row; /* Sidebar và nội dung chính nằm ngang */
	min-height: 100vh;
}

.sidebar {
	position: fixed;
	background-color: #FFF7E7;
	width: 350px; /* Độ rộng sidebar */
	padding: 4.5rem;
	display: flex;
	flex-direction: column;
	justify-content: flex-start; /* Dưới cùng chứa logo */
	left: 0;
}

.logo {
	font-weight: bold;
	font-size: 1.8rem;
	margin-bottom: 1.5rem;
}

.menu-item {
	display: flex;
	align-items: center;
	gap: 10px;
	margin: 25px 0;
	text-decoration: none;
	color: black;
}

.menu-item:hover {
	color: #ff9800;
}

.active {
	background-color: #ff9800;
	color: white;
	border-radius: 8px;
	padding: 10px;
}

img.icon {
	flex-shrink: 0;
	width: 24px;
	height: 24px;
}

.main-content {
	margin-left: 400px;
	padding-top: 50px;
}

.app-bar {
	position: fixed;
	top: 0;
	right: 0;
	width: calc(100% - 300px);
	/* Để app bar không phủ kín toàn bộ chiều rộng khi sidebar hiện diện */
	padding: 10px 20px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
	gap: 16px;
	z-index: 1000; /* Để đảm bảo app bar hiển thị trên các phần khác */
}

.icon-shop, .icon-chat, .icon-noti {
	width: 24px;
	height: 24px;
}

.button {
	background: #fb9400;
	border-radius: 50px;
	padding: 10px 24px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: white;
	font-weight: bold;
	text-decoration: none;
}

.btn-toggle {
	border: 1px solid #fb9400;
	background-color: white;
	color: #fb9400;
	font-weight: bold;
}

.btn-toggle.btn-orange {
	background-color: #fb9400;
	color: white;
}

.btn-icon img, .btn-search img {
	width: 24px;
	height: 24px;
}

.btn-search span {
	font-weight: bold;
}

.active {
	background-color: #fb9400;
	color: white;
	border-color: #fb9400;
}

.carousel-item {
	background-color: transparent; /* Xóa nền mặc định */
}

.carousel-inner {
	background-color: transparent; /* Xóa nền của container Carousel */
}

.carousel-item img {
	width: 100%;
	height: auto;
	display: block;
}

.container-fluid.p-0 {
	margin-left: 120px; /* Dịch chuyển container sang phải */
}

.container {
	margin-left: 120px;
}

.frame-70 {
	display: flex;
	align-items: center;
	justify-content: space-between;
	height: 334px;
	padding: 140px;
}
/* Đặt lại box-sizing cho toàn bộ phần tử */
.feature-section, .feature-section * {
	box-sizing: border-box;
}

/* Vùng chứa chính */
.feature-section {
	margin-top: -450px;
	height: 177px; /* Giảm 20% từ 222px */
	position: relative;
}

/* Mỗi khối tính năng */
.feature-item {
	width: 12.4%; /* Giảm 20% từ 15.5% */
	height: 100%;
	position: absolute;
}

/* Hình tròn nền */
.feature-background {
	background: #f3f3f3;
	border-radius: 50%;
	width: 64%; /* Giảm 20% từ 80% */
	height: 45.5%; /* Giảm 20% từ 57% */
	position: absolute;
	top: 0;
	left: 18%;
}

/* Icon của tính năng */
.feature-icon img {
	width: 22.8%; /* Giảm 20% từ 28.5% */
	height: 16.3%; /* Giảm 20% từ 20.34% */
	position: absolute;
	top: 15%;
	left: 38%;
	overflow: visible;
}

/* Văn bản mô tả tính năng */
.feature-text {
	color: #7b7d81;
	text-align: center;
	font-family: "Roboto-Regular", sans-serif;
	font-size: 16px; /* Giảm 20% từ 16px */
	line-height: 28px; /* Giảm 20% từ 28px */
	font-weight: 400;
	position: absolute;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<!-- Sidebar -->
		<div class="sidebar">
			<div class="logo">
				<img src="assets/images/GE.png" alt="Logo"
					style="width: 50px; height: auto;"> G - English
			</div>
			<nav>
				<a href="home.jsp" class="menu-item"> <img
					src="assets/images/Icon/home.svg" class="icon" alt="Trang chủ">
					Trang chủ
				</a> <a href="free-materials.jsp" class="menu-item active"> <img
					src="assets/images/Icon/tai lieu mien phi.svg" class="icon"
					alt="Tài liệu miễn phí"> Tài liệu miễn phí
				</a> <a href="paid-materials.jsp" class="menu-item"> <img
					src="assets/images/Icon/tai lieu tra phi.svg" class="icon"
					alt="Tài liệu trả phí"> Tài liệu trả phí
				</a> <a href="offline-courses.jsp" class="menu-item"> <img
					src="assets/images/Icon/khoa hoc online.svg" class="icon"
					alt="Khóa học offline"> Khóa học offline
				</a> <a href="tests.jsp" class="menu-item"> <img
					src="assets/images/Icon/News.svg" class="icon" alt="Bài kiểm tra">
					Bài kiểm tra
				</a> <a href="account.jsp" class="menu-item"> <img
					src="assets/images/Icon/quan ly tai khoan.svg" class="icon"
					alt="Quản lý tài khoản"> Quản lý tài khoản
				</a> <a href="chat.jsp" class="menu-item"> <img
					src="assets/images/Icon/Chat.svg" class="icon" alt="Nhắn tin">
					Nhắn tin
				</a> <a href="setting.jsp" class="menu-item"> <img
					src="assets/images/Icon/Seting.svg" class="icon" alt="Cài đặt">
					Cài đặt
				</a>
			</nav>
		</div>

		<!-- Thanh đăng nhập ngang hàng với sidebar -->
		<div class="app-bar">
			<img class="icon-shop" src="assets/images/Icon/Shop.svg"
				alt="Shop Icon"> <img class="icon-chat"
				src="assets/images/Icon/Chat.svg" alt="Chat Icon"> <img
				class="icon-noti" src="assets/images/Icon/Noti.svg"
				alt="Notification Icon"> <a href="#" class="button">Đăng
				nhập</a>
		</div>

		<!-- Nội dung chính -->
		<div class="main-content">
			<div class="d-flex align-items-center">
				<a href="#" class="btn btn-toggle btn-orange active mr-2">Tất cả
					khóa học</a> <a href="#" class="btn btn-toggle btn-outline-orange mr-2">Đã
					thanh toán</a>
				<button class="btn btn-icon btn-toggle btn-outline-orange mr-2">
					<img src="assets/images/Icon/Filter.svg" alt="filter" width="24"
						height="24">
				</button>
				<button class="btn btn-search btn-toggle ml-2" style="width: 750px;">
					<img src="assets/images/Icon/Search.svg" alt="search" width="24"
						height="24" class="mr-2"> <span>Tìm kiếm....</span>
				</button>
			</div>
		</div>

	</div>
	<!-- Footer Section -->
	<footer class="bg-light text-dark pt-4" style="margin-left: 300px;">
		<div class="container">
			<!-- Top Section: Logo and Contact -->
			<div class="row mb-4">
				<!-- Logo and Description -->
				<div class="col-md-6">
					<h3 class="fw-bold mb-1">G-Easy</h3>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetuer
						adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
						laoreet dolore magna aliquam erat volutpat.</p>
				</div>
				<!-- Contact Information -->
				<div class="col-md-6">
					<h5 class="fw-bold mb-2">Liên hệ</h5>
					<p class="text-muted">
						<i class="bi bi-geo-alt"></i> Địa chỉ: Trường Đại học Kinh tế,
						Đường Vương Thừa Vũ, Thanh Xuân, Hà Nội<br> <i
							class="bi bi-envelope"></i> Email: <a
							href="mailto:support@geasy.com">support@geasy.com</a><br> <i
							class="bi bi-telephone"></i> Điện thoại: +84 24 3836 8686
					</p>
				</div>
			</div>
			<!-- Bottom Section: Social Media and Links -->
			<div class="row">
				<div class="col-md-6">
					<p class="text-muted mb-0">&copy; 2024 G-Easy, Inc. Tất cả
						quyền được bảo lưu.</p>
				</div>
				<div class="col-md-6">
					<ul class="list-unstyled d-flex justify-content-end mb-0">
						<li><a href="#" class="text-muted mx-2"><i
								class="bi bi-facebook"></i></a></li>
						<li><a href="#" class="text-muted mx-2"><i
								class="bi bi-twitter"></i></a></li>
						<li><a href="#" class="text-muted mx-2"><i
								class="bi bi-instagram"></i></a></li>
						<li><a href="#" class="text-muted mx-2"><i
								class="bi bi-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
