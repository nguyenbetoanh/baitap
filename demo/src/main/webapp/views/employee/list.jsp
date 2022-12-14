<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/14/2022
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Danh sách nhân viên </title>
</head>
<body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm mới
</button>
<table class="table table-striped table-hover">
    <thead>
    <tr>
        <th>Mã nhân viên</th>
        <th>Tên nhân viên</th>
        <th>Ngày sinh</th>
        <th>Mô tả</th>
        <th>Trạng thái</th>
        <th colspan="2">Chỉnh sửa</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listEmployee}" var="em">
        <tr>
            <td>${em.id}</td>
            <td>${em.employeeName}</td>
            <td><fmt:formatDate value="${em.employeeDate}" pattern="dd/MM/yyyy"/> </td>
            <td>${em.employeeDescriptions}</td>
            <td>${em.employeeStatus?"Đang làm":"Nghỉ"}</td>
            <td><a href="<%=request.getContextPath()%>/employee/update?id=${em.id}">
                <i class="bi bi-pencil-square"></i>
            </a></td>
            <td><a href="<%=request.getContextPath()%>/employee/delete?id=${em.id}">
                <i class="bi bi-trash"></i>
            </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<%=request.getContextPath()%>/employee/create" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm mới nhân viên</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">


                    <table class="table table-striped table-hover">
                        <tr>
                            <td>Tên nhân viên</td>
                            <td>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">@</span>
                                    <input type="text" name="employeeName" class="form-control" placeholder="Username"
                                           aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Ngày sinh nhân viên</td>
                            <td>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon2">@</span>
                                    <input type="date" name="employeeDate" class="form-control" placeholder="Username"
                                           aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Mô tả</td>
                            <td>
                                <div class="input-group">
                                    <span class="input-group-text">With textarea</span>
                                    <textarea name="employeeDescriptions" class="form-control"
                                              aria-label="With textarea"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Trạng thái</td>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="true" name="employeeStatus"
                                           id="flexRadioDefault1" checked>
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Đang làm
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="false" name="employeeStatus"
                                           id="flexRadioDefault2" >
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Nghỉ làm
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </table>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="submit" value="create" class="btn btn-primary">Tạo mới</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
