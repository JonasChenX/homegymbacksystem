<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>厝動HomeGym 後台系統</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

  <section class="staff_Backend">
      <div class="container-fluid">
          <div class="row">
              <!-- 側邊欄 -->
              <div class="col-2 p-0 vh-100">
                <div class="sidebar bg-dark h-100 d-flex flex-column">
                  <div class="list-group-item border-dark mb-3 p-4 border-0 border-end border-5 text-center">
                    <figure class="text-center">
                      <blockquote class="blockquote">
                        <p>Jonas 您好</p>
                      </blockquote>
                      <figcaption class="blockquote-footer">
                        目前任職2年，經理
                      </figcaption>
                    </figure>                      
                  </div>
                  <div class="list-group rounded-0 p-4">
                    <a href="./OrderBackend.html" class="rounded-3 list-group-item list-group-item-action mb-3 p-4 fs-5 text-center">訂單管理</a>
                    <a href="./courseList.html" class="rounded-3 list-group-item list-group-item-action mb-3 p-4 fs-5 text-center">課程管理</a>
                    <a href="./MemberBackend.html" class="rounded-3 list-group-item list-group-item-action mb-3 p-4 fs-5 text-center">會員管理</a>
                    <a href="<c:url value='/queryMember.do' />" class="rounded-3 list-group-item list-group-item-action mb-3 p-4 fs-5 text-center">後台權限管理</a>
                  </div>
                  <a href="#" class="rounded-0 list-group-item list-group-item-action mb-3 fs-5 text-center mt-auto border-end-0 mb-5">登出</a>
                </div>
              </div>


              <div class="col-10 p-0">
                <!-- 導覽列 -->
                <nav class="navbar border-bottom shadow-sm">
                  <div class="container-fluid d-flex  justify-content-end ">
                      <div class="navbar-brand d-flex py-0">
                          <img class="me-3" style="height: 80px;" src="./image/logo5.jpg" alt="">
                          <h2 class=" d-flex  align-items-center ">後台系統</h2>
                      </div>
                  </div>
                </nav>

                <!-- 次導覽列 -->
                <nav class="nav_second mb-4 mt-3"> 
                  <div class="nav d-flex align-items-center flex-row-reverse border-bottom mb-4">
                    <div class="btn btn-outline-dark m-3" data-bs-toggle="modal" data-bs-target="#employeeRegistration">
                        <span>新進員工報到</span>
                    </div>
                      
                  </div>
                </nav>

                <!-- 查詢列 -->
                  <div class="row row-cols-2 ps-5 pe-5">
                      <div class="col mb-3">
                        <div class="d-flex">
                          <div class="col-auto">
                            <label for="inputOrderId" class="col-form-label me-2">員工編號</label>
                          </div>
                          <input class="form-control me-2" id="inputOrderId" type="text" placeholder="Search" aria-label="Search">
                          <button class="btn btn-outline-primary col-auto" type="submit">查詢</button>
                        </div>
                      </div>
                      <div class="col mb-3">
                        <div class="d-flex">
                          <div class="col-auto">
                            <label for="inputMemberName" class="col-form-label me-2">員工名稱</label>
                          </div>
                          <input class="form-control me-2" id="inputMemberName" type="text" placeholder="Search" aria-label="Search">
                          <button class="btn btn-outline-primary col-auto" type="submit">查詢</button>
                        </div>
                      </div>
                      <div class="col mb-3">
                        <div class="d-flex">
                          <div class="col-auto">
                            <label for="inputMemberPhone" class="col-form-label me-2">員工電話</label>
                          </div>
                          <input class="form-control me-2" id="inputMemberPhone" type="text" placeholder="Search" aria-label="Search">
                          <button class="btn btn-outline-primary col-auto" type="submit">查詢</button>
                        </div>
                      </div>
                      <div class="col mb-3">
                        <div class="d-flex">
                          <div class="col-auto">
                            <label for="inputOrderTime" class="col-form-label me-2">報到日期</label>
                          </div>
                          <input class="form-control me-2" id="inputOrderTime" type="date" placeholder="Search" aria-label="Search">
                          <button class="btn btn-outline-primary col-auto" type="submit">查詢</button>
                        </div>
                      </div>
                  </div>
                  <!-- 表格 -->
                  <table class="table table-striped align-middle mt-4 text-center" >
                      <thead>
                        <tr>
                          <th scope="col">員工編號 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i>
                          </th>
                          <th scope="col">員工姓名 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
                          <th scope="col">員工職稱 <i class="fa fa-sort-amount-asc" aria-hidden="true"></i></th>
                          <th scope="col">員工電話 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
                          <th scope="col">員工生日 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
                          <th scope="col">報到日期 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
                          <th scope="col">員工狀態 <i class="fa fa-sort-amount-desc" aria-hidden="true"></i></th>
                          <th scope="col"></th>
                        </tr>
                      </thead>
                      <tbody>
                        <!-- 訂單項目 -->
                        <c:forEach var="staff"  items="${staff}" > 
	                       <tr>
	                         <td>${staff.id}</td>
	                         <td>${staff.staffName}</td>
	                         <td>${staff.staffPosition}</td>
	                         <td>${staff.staffPhone}</td>
	                         <td>${staff.staffBirthday}</td>
	                         <td>${staff.staffCheckInDay}</td>
	                         <td>${staff.staffStatus}</td>
	                         <td><div class="btn btn-outline-dark">修改</div></td>
	                       </tr>
                        </c:forEach>
                        
                        
                        
                      </tbody>
                    </table>
                    <!-- 分頁 -->
                    <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-4 mb-4">
                      <ul class="pagination">
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                          </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                          </a>
                        </li>
                      </ul>
                    </nav>
              </div>
          </div>
      </div>
  </section>

<!-- 註冊畫面彈跳視窗 -->
  <div class="modal fade" id="employeeRegistration" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="employeeRegistrationLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="employeeRegistrationLabel">員工報到畫面</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="row row-cols-2">
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">員工姓名</label>
                      </div>
                      <input class="form-control me-2" id="inputMemberName" type="text" placeholder="" aria-label="Search">
                    </div>
                </div>
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">員工電話</label>
                      </div>
                      <input class="form-control me-2" id="inputMemberName" type="text" placeholder="" aria-label="Search">
                    </div>
                </div>
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">員工生日</label>
                      </div>
                      <input class="form-control me-2" id="inputMemberName" type="date" placeholder="" aria-label="Search">
                    </div>
                </div>
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">員工職稱</label>
                      </div>
                      <select class="form-select me-3" aria-label="Default select example">
                        <option value="1">新進員工</option>
                        <option value="2">主管</option>
                        <option value="2">經理</option>
                      </select>     
                    </div>
                </div>
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">員工密碼</label>
                      </div>
                      <input class="form-control me-2" id="inputMemberName" type="password" placeholder="" aria-label="Search">
   
                    </div>
                </div>
                <div class="col mb-3">
                    <div class="d-flex">
                      <div class="col-auto">
                        <label for="inputMemberName" class="col-form-label me-2">確認密碼</label>
                      </div>
                      <input class="form-control me-2" id="inputMemberName" type="password" placeholder="" aria-label="Search">
   
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary">註冊</button>
        </div>
      </div>
    </div>
  </div>





</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>