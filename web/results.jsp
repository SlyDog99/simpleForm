<%-- 
    Document   : results
    Created on : Mar 1, 2016, 9:05:57 AM
    Author     : sylvester podobinski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="format.css" />
    </head>
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        String hourlyPay = request.getParameter("pay");
        String preTaxDeduct = request.getParameter("pre");
        String postTaxDeduct = request.getParameter("post");
        %>
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
           <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                 <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                 <tr>
                    <td># Hours Overtime:</td>
                </tr>
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                </tr>
                 <tr>
                    <td>Gross Pay:</td>
                </tr>
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Pay:</td>
                </tr>
                 <tr>
                    <td>Tax Amount:</td>
                </tr>
                 <tr>
                    <td>Post-tax Pay:</td>
                </tr>
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Net Pay:</td>
                </tr>
           </tbody>
        </table>
        
    </body>
</html>
