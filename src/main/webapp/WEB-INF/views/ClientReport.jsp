<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Clients</title>
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
        .table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
        }
        .table th, .table td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }
        .table th {
            background-color: #04206A;
            color: #ffffff;
        }
        .table-hover tbody tr:hover {
            background-color: #f2f2f2;
        }
        .table-plus {
            font-weight: bold;
            color: #04206A;
        }
    </style>
</head>
<body>
    <div class="container mt-3">
        <h1>List of Clients</h1>
        
        
        <div class="row">
            <table class="table table-hover">
                <thead>
                    <tr>
                    	<th scope="col">ID</th>
                        <th scope="col">NIC</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Mobile Number</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="client" items="${client}">
                        <tr>
                        	<td class="table-plus">${client.id}</td>
                            <td>${client.nic}</td>
                           	<td>${client.name}</td>
                            <td>${client.address}</td>
                            <td>${client.mobile}</td>
                            <td><a href="editClient/${client.id}" class="btn btn-warning">Edit</a></td>
                            <td><a href="deleteClient/${client.id}" class="btn btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    		<br>
     	<a href="addClient" class="btn btn-primary">Add Client</a>
     </div>
    
</body>
</html>
