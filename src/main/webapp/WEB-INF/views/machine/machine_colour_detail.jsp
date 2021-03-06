<%--
  Created by IntelliJ IDEA.
  User: HauKute
  Date: 12/21/2018
  Time: 6:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <%--<a href="<c:url value='/admin/machine/${machineId}/colour'/>">Back</a>--%>
</head>
<body>
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="<c:url value="/"/>">Home</a>
    </li>
    <li class="breadcrumb-item">
        <a href="<c:url value="/admin/machine/list"/>">List Machine</a>
    </li>
    <li class="breadcrumb-item">
        <a href="<c:url value="/admin/machine/${machineId}/colour"/>">Machine Colour</a>
    </li>
    <li class="breadcrumb-item active">Machine Colour Detail</li>
</ol>
<div class="row">
    <div class="col-12">
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-chart-area"></i>
                Machine Colour Detail
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Colour Code</th>
                            <th>Colour Name</th>
                            <th>Action</th>
                            <th>Date</th>
                            <th>Quantity</th>
                            <th>Formula</th>
                            <th>Product</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${logs}" var="l">
                            <tr>
                                <td>${l.machineColourant.colourant.colourantCode}</td>
                                <td>${l.machineColourant.colourant.colourantName}</td>
                                <td>${l.action}</td>
                                <td>${l.createdDate}</td>
                                <td>${l.quantity}</td>
                                <td>${l.machineFormulaProductBase.formulaProductBase.formula.formulaCode}</td>
                                <td>${l.machineFormulaProductBase.formulaProductBase.productBase.product.productCode}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
