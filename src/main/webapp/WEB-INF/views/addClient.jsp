<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Client Form</title>
    <%@include file="./base.jsp"%>
    
    <style>
        /* Additional styles specific to your form can be added here */
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #CAE1FA;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        .form-group label {
            font-weight: bold;
            color :#04416A;
        }
        .btn-warning {
            background-color: #6A6304;
            border-color: #6A6304;
            color:#ffffff;
        }
        .btn-warning:hover {
            background-color: darkorange;
            border-color: darkorange;
        }
        .btn-primary {
            background-color: #04206A;
            border-color: #04206A;
        }
        .btn-primary:hover {
            background-color: darkblue;
            border-color: darkblue;
        }
    </style>
</head>
<body>

<div class="container mt-3">

    <h1>Add Client Form</h1>
    <form action="insertClient" method="post">

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="nic">NIC</label> 
                    <input type="text" class="form-control" id="nic" name="nic" placeholder="Enter NIC" required>
                </div>
            </div>            
            <div class="col">
                <div class="form-group">
                    <label for="name">Name</label> 
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" id="address" name="address" rows="5" placeholder="Enter Address" required></textarea>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="mobile">Mobile Number</label> 
                    <input type="number" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile Number" required>
                </div>
            </div>
        </div>

        <a href="${pageContext.request.contextPath }/clientReport" class="btn btn-warning"> Back </a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>

</body>
</html>
