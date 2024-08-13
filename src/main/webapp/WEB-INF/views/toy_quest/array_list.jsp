<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="/WEB-INF/views/commons/header.jsp" %>

<% List<HashMap<String, Object>> result = (List<HashMap<String, Object>>) request.getAttribute("result"); %>

<form action="" method="">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <h2>SearchSelectJoin1</h2>
                <div>
                    <button class="btn btn-primary" type="submit" formaction="/carcompany/list2"
                            formmethod="get">second_select_join</button>
                </div>
                <h2>Table</h2>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Year</th>
                        <th>Company Name</th>
                        <th>Car Name</th>
                        <th>Option Count</th>
                    </tr>
                    </thead>
                    <tbody id="carTableBody">
                    <% if (result != null) { %>
                    <% for (HashMap<String, Object> record : result) { %>
                    <tr>
                        <td><%= record.get("연식") %></td>
                        <td><%= record.get("회사이름") %></td>
                        <td><%= record.get("자동차이름") %></td>
                        <td><%= record.get("옵션 갯수") %></td>
                    </tr>
                    <% } %>
                    <% } else { %>
                    <tr>
                        <td colspan="4">No data available</td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</form>

<%@ include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
