<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Update Category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Update Category</h2>
    <form role="form" action="${pageContext.request.contextPath}/admin/category/edit" method="post" enctype="multipart/form-data">
        <input type="text" name="categoryId" hidden="hidden" value="${category.categoryId}">

        <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Please enter category name" value="${category.categoryName}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Status</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="active" name="status" value="1" ${category.status == 1 ? 'checked="checked"' : ''}>
                <label class="form-check-label" for="active">Active</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="lock" name="status" value="0" ${category.status == 0 ? 'checked="checked"' : ''}>
                <label class="form-check-label" for="lock">Locked</label>
            </div>
        </div>

        <div class="mb-3">
            <span class="form-label">Current Image</span>
           <div>
               <c:set var="imgUrl" value="${category.image}"/>
               <c:if test="${category.image.length() >= 5 && !category.image.substring(0, 5).equals('https')}">
                   <c:url value="/image?filename=${category.image}" var="imgUrl"></c:url>
               </c:if>
               <img class="img-fluid" height="150" width="200" src="${imgUrl}" alt="Category Image"/>
           </div>
        </div>

        <div class="mb-3">
            <label for="image-link" class="form-label">Change Image with URL</label>
            <input type="text" class="form-control" id="image-link" name="imageLink" placeholder="Enter image URL">
        </div>

        <div class="mb-3">
            <label class="form-label">Change Image with File</label>
            <input class="form-control" type="file" name="image" accept="image/*"/>
        </div>

        <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary me-2">Edit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
