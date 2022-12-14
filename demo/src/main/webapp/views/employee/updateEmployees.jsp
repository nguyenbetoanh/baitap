<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/14/2022
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cập nhật</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<form action="<%=request.getContextPath()%>/employee/update" method="post">

    <table class="table table-striped table-hover">
        <tr>

            <td>
                Mã nhân viên
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">@</span>
                    <input type="number" name="id" value="${employee.id}" class="form-control" placeholder="Username"
                           aria-label="Username" aria-describedby="basic-addon1" readonly>
                </div>
            </td>
        </tr>
        <tr>

            <td>
                Tên nhân viên
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon2">@</span>
                    <input type="text" name="employeeName" value="${employee.employeeName}" class="form-control"
                           placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                </div>
            </td>
        </tr>
        <tr>

            <td>
                <p>Ngày sinh nhân viên</p>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon3">@</span>
                    <input type="datetime-local" name="employeeDate" value="${employee.employeeDate}" class="form-control"
                           placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                Mô tả nhân viên
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon4">@</span>
                    <input type="text" name="employeeDescriptions" value="${employee.employeeName}" class="form-control"
                           placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                Trạng thái
                <div class="form-check">
                    <input class="form-check-input" type="radio"  name="employeeStatus"
                           value="true" id="flexRadioDefault1" ${employee.employeeStatus?"checked":""}>
                    <label class="form-check-label" for="flexRadioDefault1">
                        đang làm
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="employeeStatus" id="flexRadioDefault2"
                           value="false" ${employee.employeeStatus?"":"checked"} >
                    <label class="form-check-label" for="flexRadioDefault2">
                        nghỉ làm
                    </label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                    <button type="submit" value="update" class="btn btn-danger">Update</button>
                </div>
            </td>
        </tr>
    </table>
</form>

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
