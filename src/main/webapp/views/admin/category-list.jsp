<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Categories list</title>
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>Categories List</h1>
        <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-primary">Add Category</a>
    </div>

    <table class="table table-bordered table-hover table-striped">
        <thead class="table-dark">
        <tr>
            <th style="text-align: center;">ID</th>
            <th style="text-align: center;">Image</th>
            <th class="text-center">Category Name</th>
            <th class="text-center">Status</th>
            <th class="text-center">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${categoryList}" var="cate" varStatus="STT">
            <tr>
                <td class="text-center">${STT.index+1}</td>
                <c:set var="imgUrl" value="${cate.image}"/>
                <c:if test="${cate.image.length() >= 5 && !cate.image.substring(0, 5).equals('https')}">
                    <c:url value="/image?filename=${cate.image}" var="imgUrl"></c:url>
                </c:if>
                <td class="text-center">
                    <img class="img-fluid" height="150" width="200" src="${imgUrl}" alt="Category Image"/>
                </td>
                <td class="text-center align-middle">${cate.categoryName}</td>
                <td class="text-center align-middle">
                    <!-- Hiển thị trạng thái dựa trên giá trị status -->
                    <c:choose>
                        <c:when test="${cate.status == 1}">
                            <span class="badge bg-success">Active</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge bg-danger">Locked</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="text-center align-middle">
                    <a href="<c:url value='/admin/category/edit?id=${cate.categoryId}'/>" class="btn btn-sm btn-warning me-2">Edit</a>
                    <a href="<c:url value='/admin/category/delete?id=${cate.categoryId}'/>" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Link to Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
