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
	background-color: #FFF4E5;
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
	margin-left: 300px;
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

.rectangle-170 {
	width: 40%;
	max-width: 400px;
	border-radius: 48px;
	object-fit: cover;
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
	<!-- Sidebar -->
	<jsp:include page="Menu.jsp"></jsp:include>
	<div class="container-fluid">
		<!-- Nội dung chính -->
		<!-- Banner Section -->
		<div class="main-content">
			<div class="container-fluid p-0">
				<div id="carouselExample" class="carousel slide"
					data-bs-ride="carousel">
					<!-- Các slide (các ảnh banner) -->
					<div class="carousel-inner">
						<!-- Slide 1 -->
						<div class="carousel-item active">
							<img src="assets/images/banner1.png"
								class="d-block w-100 mx-auto" alt="Banner 1">
							<div
								class="carousel-caption position-absolute top-50 start-50 translate-middle text-white text-center">
								<h1 class="fw-bold"></h1>
								<p class="lead"></p>
								<a href="signup.jsp" class="btn btn-warning btn-lg">Bắt đầu
									ngay</a>
							</div>
						</div>

						<!-- Slide 2 -->
						<div class="carousel-item">
							<img src="assets/images/banner2.png"
								class="d-block w-100 mx-auto" alt="Banner 2">
							<div
								class="carousel-caption position-absolute top-50 start-50 translate-middle text-white text-center">
							</div>
						</div>

						<!-- Slide 3 -->
						<div class="carousel-item">
							<img src="assets/images/banner3.png"
								class="d-block w-100 mx-auto" alt="Banner 3">
							<div
								class="carousel-caption position-absolute top-50 start-50 translate-middle text-white text-center">
							</div>
						</div>
					</div>

					<!-- Mũi tên điều hướng -->
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExample" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExample" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="frame-70" style="margin-top: -170px;">
				<div class="null">
					<h2>About us</h2>
					<p>G-Easy is a promising and rapidly growing educational
						technology startup in Vietnam. It is an English learning software
						from basic to advanced to help learners easily approach English.
						It currently has more than 13 million users in 101 countries
						around the world, and has offices in Portugal, Vietnam, India,
						Indonesia, and Japan.</p>
					<a href="signup.jsp" class="btn btn-warning btn-lg">Xem chi
						tiết</a>
				</div>
				<img class="rectangle-170" src="assets/images/Rectangle 170.png"
					alt="About Us Image">
			</div>
			<div class="container-fluid p-0">
				<div class="d-flex flex-column justify-content-center text-center"
					style="margin-top: -500px;">
					<div class="logo">Grow English</div>
					<div class="font-weight-bold">Lorem ipsum dolor sit amet,
						consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat.</div>
				</div>
			</div>
			<div class="feature-section">
				<!-- Tính năng 1 -->
				<div class="feature-item" style="left: 10%;">
					<div class="feature-text">
						Tài liệu<br />Miễn phí
					</div>
					<div class="feature-background"></div>
					<div class="feature-icon">
						<img src="assets/images/Icon/tai lieu mien phi.svg"
							alt="Tài liệu miễn phí" />
					</div>
				</div>

				<!-- Tính năng 2 -->
				<div class="feature-item" style="left: 28.63%;">
					<div class="feature-text">
						Tài liệu<br />Trả phí
					</div>
					<div class="feature-background"></div>
					<div class="feature-icon">
						<img src="assets/images/Icon/tai lieu tra phi.svg"
							alt="Tài liệu trả phí" />
					</div>
				</div>

				<!-- Tính năng 3 -->
				<div class="feature-item" style="left: 47.26%;">
					<div class="feature-text">
						Khóa học<br />Online
					</div>
					<div class="feature-background"></div>
					<div class="feature-icon">
						<img src="assets/images/Icon/khoa hoc online.svg"
							alt="Khóa học Online" />
					</div>
				</div>

				<!-- Tính năng 4 -->
				<div class="feature-item" style="left: 65.89%;">
					<div class="feature-text">
						Quản lý<br />Tài khoản
					</div>
					<div class="feature-background"></div>
					<div class="feature-icon">
						<img src="assets/images/Icon/quan ly tai khoan.svg"
							alt="Quản lý tài khoản" />
					</div>
				</div>

				<!-- Tính năng 5 -->
				<div class="feature-item" style="left: 84.54%;">
					<div class="feature-text">
						Tư vấn<br />Miễn phí
					</div>
					<div class="feature-background"></div>
					<div class="feature-icon">
						<img src="assets/images/Icon/Chat.svg" alt="Tư vấn miễn phí" />
					</div>
				</div>
			</div>
			<div class="frame-70">
				<div class="null">
					<h2>Làm bài kiểm tra thử</h2>
					<p>G-Easy helps you check your English level from there to have
						a good orientation for yourself</p>
					<a href="signup.jsp" class="btn btn-warning btn-lg">Xem chi
						tiết</a>
				</div>
				<img class="rectangle-170" src="assets/images/Rectangle 170.png"
					alt="About Us Image">
			</div>


		</div>
	</div>

	<!-- Footer Section -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
