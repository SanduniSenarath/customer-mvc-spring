<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="./base.jsp"%>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #C3DCF8 ;
    }
    .container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .btn {
        margin: 0 10px;
        font-size: 20px; /* Increase button size */
        text-align: center;
        text-decoration: none;
        display: inline-block;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }
    .btn-primary {
        background-color: #03274D;
        border-color: #007bff;
        color: #ffffff;
    }
    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .btn-warning {
        background-color: #595B03 ;
        border-color: #ffc107;
        color: #ffffff;
    }
    .btn-warning:hover {
        background-color: #d39e00;
        border-color: #d39e00;
    }
    h1, h2 {
        text-align: center;
    }
</style>
</head>
<body>
    <h2>${message}</h2>
    <h1>Client Management</h1>
    <div class="container">
        <a href="clientReport" class="btn btn-primary">Client List</a>
        <a href="addClient" class="btn btn-warning">Add New Client</a>
    </div>
</body>
</html>
