<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Recruitment - FindJOB</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Roboto Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&display=swap"
	rel="stylesheet">

<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">

<!-- main css -->
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>

<body>
	<div class="container-fluid login-fluid clear-left clear-right">
		<div class="login-container">
			<!-- login header -->
			<div class="login-header">
				<div class="w-login m-auto">
					<div class="login-logo">
						<h3>
							<!-- <a href="#">Tech<span class="txb-logo">Jobs.</span></a> -->
							<a href="#"> <img src="resources/img/fast-logo.png"
								alt="FastJobs">
							</a>
						</h3>
						<span class="login-breadcrumb"><em>/</em> Recruitment</span>
					</div>
					<div class="login-right">
						<a href="${pageContext.request.contextPath}/loginSuccess" class="btn btn-return">Quay lại Dashboard</a>
					</div>
				</div>
			</div>
			<!-- (end) login header -->

			<div class="clearfix"></div>

			<div class="padding-top-90"></div>

			<!-- login main -->
			<div class="login-main">
				<div class="w-login m-auto">
					<div class="row">
						<!-- login main descriptions -->
                        <div class="col-md-5 col-sm-12 col-12 login-main-left">
                            <img src="resources/img/banner-login.png">
                        </div>
						<!-- login main form -->
						<div class="col-md-7 col-sm-12 col-12 login-main-right">

							<form:form class="login-form reg-form" id="form-recruitment"
								action="recruitment?username=${username }"
								method="POST" modelAttribute="jobCompany" accept-charset="UTF-8">
								<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
								<c:if test="${not empty success }">
	                        		<h3 style="color:green">${success}</h3>
	                        	</c:if>
								<c:if test="${not empty error }">
									<p style="color: red">${error}</p>
								</c:if>
								<div class="login-main-header">
									<h3>Đăng tin tuyển dụng</h3>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Tiêu
										đề<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:input type="text" id="title" path="title" class="form-control"
											placeholder="Nhập tiêu đề" onchange="changeTiltleBorderColor()"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Số lượng cần tuyển<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:input type="number" id="quantity" path="quantity" min="1" value="1" class="form-control" placeholder="Nhập số lượng" onchange="changeQuantityBorderColor()"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Lương thấp nhất
									<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:input type="text" id="min-salary" path="min_salary" class="form-control" 
											placeholder="Nhập bằng số" onchange="changeMinsalaryBorderColor()"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Lương cao nhất
									<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:input type="text" id="max-salary" path="max_salary" class="form-control"
											placeholder="Nhập bằng số" onchange="changeMaxSalaryBorderColor()"/>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Mô
										tả công việc<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:textarea class="form-control" id="description" path="description"
											placeholder="Nhập mô tả công việc" rows="5" onchange="changeDescriptionBorderColor()"></form:textarea>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Yêu
										cầu công việc<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:textarea class="form-control" id="require" path="job_require"
											placeholder="Nhập yêu cầu công việc" rows="5" onchange="changeRequireBorderColor()"></form:textarea>
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Quyền
										lợi<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:textarea class="form-control" id="interest" path="interest"
											placeholder="Quyền lợi công việc" rows="5" onchange="changeInterestBorderColor()"></form:textarea>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Ngành nghề
									<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:select id="profession" path="profession" class="form-control" onchange=" changeProfessionBorderColor()">
											<option selected="selected" value="">Chọn ngành nghề</option>
											<option value="32">Kinh doanh</option>
											<option value="10">Bán hàng</option>
											<option value="21">Chăm sóc khách hàng</option>
											<option value="47">Tài chính/Kế toán/Kiểm toán</option>
											<option value="29">Hành chính/Thư ký/Trợ lý</option>
											<option value="33">Lao động phổ thông</option>
											<option value="16">Cơ khí/Kĩ thuật ứng dụng</option>
											<option value="35">Sinh viên/Mới tốt nghiệp/Thực tập</option>
											<option value="22">Điện/Điện tử/Điện lạnh</option>
											<option value="12">Báo chí/Biên tập viên</option>
											<option value="20">Bảo vệ/Vệ sĩ/An ninh</option>
											<option value="13">Bất động sản</option>
											<option value="14">Biên dịch/Phiên dịch</option>
											<option value="15">Bưu chính viễn thông</option>
											<option value="17">Công nghệ thông tin</option>
											<option value="18">Dầu khí/Địa chất</option>
											<option value="19">Dệt may</option>
											<option value="23">Du lịch/Nhà hàng/Khách sạn</option>
											<option value="24">Dược/Hóa chất/Sinh hóa</option>
											<option value="25">Giải trí/Vui chơi</option>
											<option value="26">Giáo dục/Đào tạo/Thư viện</option>
											<option value="27">Giao thông/Vận tải/Thủy lợi/Cầu
												đường</option>
											<option value="28">Giày da/Thuộc da</option>
											<option value="55">Khác</option>
											<option value="30">Kho vận/Vật tư/Thu mua</option>
											<option value="58">Khu chế xuất/Khu công nghiệp</option>
											<option value="31">Kiến trúc/Nội thất</option>
											<option value="59">Làm đẹp/Thể lực/Spa</option>
											<option value="34">Luật/Pháp lý</option>
											<option value="36">Môi trường/Xử lý chất thải</option>
											<option value="37">Mỹ phẩm/Thời trang/Trang sức</option>
											<option value="38">Ngân hàng/Chứng khoán/Đầu tư</option>
											<option value="39">Nghệ thuật/Điện ảnh</option>
											<option value="56">Ngoại ngữ</option>
											<option value="40">Nhân sự</option>
											<option value="41">Nông/Lâm/Ngư nghiệp</option>
											<option value="64">PG/PB/Lễ tân</option>
											<option value="65">Phát triển thị trường</option>
											<option value="66">Phục vụ/Tạp vụ/Giúp việc</option>
											<option value="42">Quan hệ đối ngoại</option>
											<option value="44">Quản lý điều hành</option>
											<option value="45">Quảng cáo/Marketing/PR</option>
											<option value="46">Sản xuất/Vận hành sản xuất</option>
											<option value="60">Tài xế/Lái xe/Giao nhận</option>
											<option value="43">Thẩm định/Giám định/Quản lý chất
												lượng</option>
											<option value="48">Thể dục/Thể thao</option>
											<option value="49">Thiết kế/Mỹ thuật</option>
											<option value="50">Thời vụ/Bán thời gian</option>
											<option value="51">Thực phẩm/DV ăn uống</option>
											<option value="61">Trang thiết bị công nghiệp</option>
											<option value="62">Trang thiết bị gia dụng</option>
											<option value="63">Trang thiết bị văn phòng</option>
											<option value="11">Tư vấn bảo hiểm</option>
											<option value="52">Xây dựng</option>
											<option value="53">Xuất-Nhập khẩu/Ngoại thương</option>
											<option value="54">Y tế</option>
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Nơi làm việc
									<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:select id="city" path="city" class="form-control" onchange="changeCityBorderColor()">
											<option value="1">Hồ Chí Minh</option>
											<option value="2">Hà Nội</option>
											<option value="3">An Giang</option>
											<option value="4">Bạc Liêu</option>
											<option value="5">Bà Rịa-Vũng Tàu</option>
											<option value="6">Bắc Cạn</option>
											<option value="7">Bắc Giang</option>
											<option value="8">Bắc Ninh</option>
											<option value="9">Bến Tre</option>
											<option value="10">Bình Dương</option>
											<option value="11">Bình Định</option>
											<option value="12">Bình Phước</option>
											<option value="13">Bình Thuận</option>
											<option value="14">Cao Bằng</option>
											<option value="15">Cà Mau</option>
											<option value="16">Cần Thơ</option>
											<option value="17">Đà Nẵng</option>
											<option value="18">Đắk Lắk</option>
											<option value="19">Đắk Nông</option>
											<option value="20">Điện Biên</option>
											<option value="21">Đồng Nai</option>
											<option value="22">Đồng Tháp</option>
											<option value="23">Gia Lai</option>
											<option value="24">Hà Giang</option>
											<option value="25">Hà Nam</option>
											<option value="27">Hà Tĩnh</option>
											<option value="28">Hải Dương</option>
											<option value="29">Hải Phòng</option>
											<option value="30">Hậu Giang</option>
											<option value="31">Hòa Bình</option>
											<option value="32">Hưng Yên</option>
											<option value="33">Khánh Hòa</option>
											<option value="34">Kiên Giang</option>
											<option value="35">Kon Tum</option>
											<option value="36">Lai Châu</option>
											<option value="37">Lạng Sơn</option>
											<option value="38">Lào Cai</option>
											<option value="39">Lâm Đồng</option>
											<option value="40">Long An</option>
											<option value="41">Nam Định</option>
											<option value="42">Nghệ An</option>
											<option value="43">Ninh Bình</option>
											<option value="44">Ninh Thuận</option>
											<option value="45">Phú Thọ</option>
											<option value="46">Phú Yên</option>
											<option value="47">Quảng Bình</option>
											<option value="48">Quảng Nam</option>
											<option value="49">Quảng Ngãi</option>
											<option value="50">Quảng Ninh</option>
											<option value="51">Quảng Trị</option>
											<option value="52">Sóc Trăng</option>
											<option value="53">Sơn La</option>
											<option value="54">Tây Ninh</option>
											<option value="55">Thái Bình</option>
											<option value="56">Thái Nguyên</option>
											<option value="57">Thanh Hóa</option>
											<option value="58">Thừa Thiên-Huế</option>
											<option value="59">Tiền Giang</option>
											<option value="60">Trà Vinh</option>
											<option value="61">Tuyên Quang</option>
											<option value="62">Vĩnh Long</option>
											<option value="63">Vĩnh Phúc</option>
											<option value="64">Yên Bái</option>
											<option value="65">Toàn quốc</option>
											<option value="66">Nước ngoài</option>
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 col-form-label text-right label">Hạn
										nộp hồ sơ<span style="color: red" class="pl-2">*</span>
									</label>
									<div class="col-sm-9">
										<form:input type="date" id="due-date" path="due_date" class="form-control" onchange="changeDueDateBorderColor()"/>
									</div>
								</div>
								<br/>
								<input type="submit"
									class="btn btn-primary float-right btn-login d-block w-100" onclick="recruitment(event)"
									value="Lưu tin">
								<div class="form-group d-block w-100 mt-5">
									<div class="text-or text-center"></div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<!-- (end) login main -->
		</div>
	</div>
	<footer class="login-footer">
		<div class="w-login m-auto">
			<div class="row">
				<!-- login footer left -->
				<div class="col-md-6 col-sm-12 col-12 login-footer-left">
					<div class="login-copyright">
						<p>
							Copyright © 2023 <a href="#"> FindJob</a>. All Rights Reserved.
						</p>
					</div>
				</div>
				<!-- login footer right -->
				<div class="col-md-6 col-sm-12 col-12 login-footer-right">
					<ul>
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/js/jquery-3.4.1.slim.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/form.js"></script>

	<script type="text/javascript" src="resources/js/main.js"></script>
</body>

</html>