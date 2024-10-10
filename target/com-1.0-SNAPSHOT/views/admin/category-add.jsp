<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Add Category</h2>
    <form role="form" action="${pageContext.request.contextPath}/admin/category/insert" method="post" enctype="multipart/form-data">

        <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Please enter category name" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Status</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="active" name="status" value="1">
                <label class="form-check-label" for="active">Active</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="lock" name="status" value="0">
                <label class="form-check-label" for="lock">Locked</label>
            </div>
        </div>

        <div class="mb-3">
            <label for="image-link" class="form-label">Import Image Using Link</label>
            <input type="text" class="form-control" id="image-link" name="imageLink" placeholder="Enter image URL">
        </div>

        <div class="mb-3">
            <label for="image-file" class="form-label">Import Image Using File</label>
            <input class="form-control" type="file" id="image-file" name="image" accept="image/*"/>
        </div>

        <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary me-2">Add</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
