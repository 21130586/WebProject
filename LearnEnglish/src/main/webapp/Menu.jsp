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
</style>
</head>
<body>
	<div class="sidebar">
		<div class="logo">
			<img src="assets/images/GE.png" alt="Logo"
				style="width: 50px; height: auto;"> G - English
		</div>
		<nav>
			<a href="home.jsp" class="menu-item active"> <img
				src="assets/images/Icon/home.svg" class="icon" alt="Trang chủ">
				Trang chủ
			</a> <a href="free-materials.jsp" class="menu-item"> <img
				src="assets/images/Icon/tai lieu mien phi.svg" class="icon"
				alt="Tài liệu miễn phí"> Tài liệu miễn phí
			</a> <a href="paid-materials.jsp" class="menu-item"> <img
				src="assets/images/Icon/tai lieu tra phi.svg" class="icon"
				alt="Tài liệu trả phí"> Tài liệu trả phí
			</a> <a href="online-courses.jsp" class="menu-item"> <img
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
	
</body>
</html>