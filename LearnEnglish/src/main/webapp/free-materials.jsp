<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grow English Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Style CSS */
        .main-content-container {
            margin-left: 450px; /* Độ rộng sidebar */
            padding: 3rem;
        }

        .main-content-container .content-buttons {
            display: flex;
            gap: 12px;
            align-items: center;
        }

        .main-content-container .button {
            padding: 10px 24px;
            border-radius: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .main-content-container .btn-orange {
            background-color: #fb9400;
            color: white;
        }

        .main-content-container .btn-outline-orange {
            background-color: #ecebe9;
            color: #4f4b45;
        }

        .main-content-container .btn-icon {
            background-color: #ecebe9;
            color: #4f4b45;
            border-radius: 50px;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .main-content-container .btn-icon .icon {
            width: 24px;
            height: 24px;
        }

        .main-content-container .search-bar {
            background-color: #eaeaea;
            border-radius: 500px;
            padding: 17px 25px;
            display: flex;
            align-items: center;
            flex-grow: 1;
            width: 100%;
            max-width: 400px; /* Tăng độ rộng tối đa của ô tìm kiếm */
        }

        .main-content-container .search-text {
            color: #9e988f;
            font-size: 14px;
            font-weight: 500;
            flex-grow: 1; /* Để văn bản bên trong chiếm không gian */
        }
    </style>
</head>
<body>
    <jsp:include page="Menu.jsp"></jsp:include>
    
    <div class="main-content-container">
        <div class="content-buttons">
            <div class="button btn-orange">
                <span class="btn-text">Tất cả tài liệu</span>
            </div>
            <div class="button btn-outline-orange">
                <span class="btn-text">Tài liệu đang học</span>
            </div>
            <div class="button btn-icon">
                <img src="assets/images/Icon/Filter.svg" class="icon" alt="filter" />
            </div>
            <div class="search-bar">
                <img src="assets/images/Icon/Search.svg" class="icon" alt="search" />
                <span class="search-text">Tìm kiếm....</span>
            </div>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
