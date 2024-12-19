<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IELTS Intermediate</title>
<link rel="stylesheet" href="styles.css">
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
.active {
	background-color: #ff9800;
	color: white;
	border-radius: 8px;
	padding: 10px;
}

.main-content {
	margin-left: 400px;
	padding-top: 50px;
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
.container-fluid.p-0 {
	margin-left: 120px; /* Dịch chuyển container sang phải */
}

.container {
	margin-left: 120px;
}

.cta-button {
	display: block;
	width: 200px;
	text-align: center;;
	background-color: #ff9800;
	color: white;
	padding: 10px;
	margin: 20px auto;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	margin-left: auto;
	margin-right: 0;
}

.cta-button.active, .cta-button:hover {
	background-color: #ff1234; /* Màu cam khi chọn */
	color: #fff;
}

/* Navigation Buttons */
.nav-buttons {
	display: flex;
	justify-content: center;
	margin: 20px 0;
}

.tab {
	background-color: #e0e0e0;
	border: none;
	padding: 10px 20px;
	margin: 0 10px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1rem;
	transition: background-color 0.3s;
}

.tab.active, .tab:hover {
	background-color: #ff9800; /* Màu cam khi chọn */
	color: #fff;
}

.header-image img {
	width: 100%;
	height: 300px;
	position: relative;
	overflow: hidden;
}

.buttons-container button:hover {
	background-color: #f1b800;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<!-- Sidebar -->
		<jsp:include page="Menu.jsp"></jsp:include>

		<!-- Nội dung chính -->
		<div class="main-content">


			<!-- Main Section -->
			<section class="header-section">
				<div class="header-content">
					<div class="header-image">
						<img src="assets/images/banner1.png" alt="Student Image">
					</div>
				</div>
			</section>

			<!-- Navigation Buttons -->
			<div class="nav-buttons">
				<button class="tab active" onclick="selectTab(this)">Thông
					tin khóa học</button>
				<button class="tab" onclick="selectTab(this)">Lịch học</button>
				<button class="tab" onclick="selectTab(this)">Lộ trình học
					tập</button>
				<button class="tab" onclick="selectTab(this)">Cam kết sau
					khóa học</button>
			</div>

			<!-- Content Section -->
			<section class="content-section">
				<h2>Xây dựng và phát triển vốn từ vựng cần thiết tương đương
					trình độ B2</h2>
				<ul>
					<li>Nắm vững và làm chủ nền tảng kiến thức</li>
					<li>Nắm vững các cấu trúc từ vựng quan trọng để làm tốt các kỹ
						năng Reading và Listening</li>
					<li>Tăng cường khả năng tự học và đánh giá khả năng tiếng Anh</li>
					<li>Làm quen với các dạng bài thi mới nhất IELTS Computer Test</li>
				</ul>

				<!-- Repeated Student Image Cards -->
				<div class="student-cards">
					<img src="assets/images/banner1.png" alt="Student Image"
						style="width: 18%; height: auto;"> <img
						src="assets/images/banner1.png" alt="Student Image"
						style="width: 18%; height: auto;"> <img
						src="assets/images/banner1.png" alt="Student Image"
						style="width: 18%; height: auto;"> <img
						src="assets/images/banner1.png" alt="Student Image"
						style="width: 18%; height: auto;"> <img
						src="assets/images/banner1.png" alt="Student Image"
						style="width: 18%; height: auto;">
				</div>

				<p>
					Khóa học này dành cho học viên đã có nền tảng tiếng Anh vững chắc.
					Ví dụ, học viên đã có thể trình bày những câu đủ khiến cho người
					đọc/ nghe hiểu. <br>Về Listening, Reading và Writing, học viên
					tham gia khóa này cần nẳm rõ các dạng câu hỏi của IELTS. <br>Về
					Speaking, khóa IELTS Intermediate đòi hỏi học viên khả năng trả lời
					trôi chảy mọi câu hỏi Part 1. <br>Tất cả những khả năng trên
					học viên sẽ đạt được nếu đã hoàn thành khóa IELTS Beginner.Khóa học
					này dành cho học viên đã có nền tảng tiếng Anh vững chắc. Ví dụ,
					học viên đã có thể trình bày những câu đủ khiến cho người đọc/ nghe
					hiểu. <br>Về Listening, Reading và Writing, học viên tham gia
					khóa này cần nẳm rõ các dạng câu hỏi của IELTS. <br>Về
					Speaking, khóa IELTS Intermediate đòi hỏi học viên khả năng trả lời
					trôi chảy mọi câu hỏi Part 1. <br>
					<br>Tất cả những khả năng trên học viên sẽ đạt được nếu đã
					hoàn thành khóa IELTS Beginner.

				</p>

				<p class="price">Học phí: 6.250.000 VND / 3 tháng. Phí này đã
					gồm tài liệu. Các bài sửa Writing do giảng viên Writing 8.5 chấm
					dựa chính xác vào tiêu chí chấm thi. Ngoài ra, chúng tôi cũng hỗ
					trợ tư vấn không giới hạn mọi thứ về IELTS.</p>
				<button class="cta-button">Đăng ký ngay</button>
			</section>

		</div>
	</div>

	<!-- mau khi chọn -->
	<script>
        // Function to change active button
        function selectTab(selectedButton) {
            document.querySelectorAll('.tab').forEach(button => {
                button.classList.remove('active');
            });
            selectedButton.classList.add('active');
        }
    </script>


	<!-- Footer Section -->
	<jsp:include page="footer.jsp"></jsp:include>



	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>