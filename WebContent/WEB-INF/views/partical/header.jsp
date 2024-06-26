<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>

<body>
    <header id="page-header" class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href=".">TRANG CHỦ</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-categories">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar-categories">
                <div class="search-box-navbar" style="
    justify-content: space-between;
    width: 100%;">


    <c:if test="${not empty sessionScope.User}">    
					${sessionScope.User.role }
                    <!-- Nút user khi user đã đăng nhập -->
                    <div class="authenticated-user dropdown">
                        <div class="user-btn">
                            <i class="bi bi-person-fill"></i>
                        </div>
                        <ul class="dropdown-menu dropdown-menu-end">
                        <c:if test="${sessionScope.User.role eq 'Admin'}">
					        <li>
                                <a href="admin.htm" class="dropdown-item">
                                    <span style="color: red">Quản Lý</span>
                                </a>
                            </li>
					    </c:if>
                        
                        
                            <li>
                                <button type="button" data-bs-toggle="modal" data-bs-target="#logout-form-section"
                                    class="dropdown-item">
                                    <i class="bi bi-box-arrow-left"></i>
                                    <span>Đăng xuất</span>
                                </button>
                            </li>
                        </ul>
                    </div>
                    
                </c:if>

  <!--   <a href="/login" class="login-sign-up-btn" type="button">Đăng nhập / Đăng ký</a>-->

     
                    
                </div>
            </div>
        </div>

        <section class="search-filter-section" hidden>
            <div class="search-filter-modal"></div>
            <form id="search-filter-form" action="#" method="post">
                <div class="date-filter-groups">
                    <div class="filter-group">
                        <label for="start-date">Từ ngày:</label>
                        <input type="text" id="search-filter-start-date" placeholder="Chọn ngày bắt đầu..."
                            name="start-date">
                    </div>
                    <div class="filter-group">
                        <label for="end-date">Đến ngày:</label>
                        <input type="text" id="search-filter-end-date" placeholder="Chọn ngày kết thúc..."
                            name="end-date">
                    </div>
                </div>
                <div class="filter-group">
                    <label for="genre">Thể loại phim:</label>
                    <select id="search-filter-genre" name="genre">
                        <option value="all">Tất cả</option>
                        <option value="horror">Kinh dị</option>
                        <option value="romance">Lãng mạn</option>
                    </select>
                </div>
                <button class="submit-btn" type="submit">Lọc và tìm kiếm phim</button>
            </form>
        </section>
    </header>

    <section class="modal" id="logout-form-section" tabindex="-1">
        <form id="logout-form" class="modal-dialog" action="logout.htm" method="get">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận đăng xuất</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div>Bạn xác nhận sẽ đăng xuất?</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary cancel" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn confirm">Xác nhận</button>
                </div>
            </div>
        </form>
    </section>