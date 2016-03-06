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
        int hourlyPay = Integer.parseInt(request.getParameter("pay"));
        int preTaxDeduct = Integer.parseInt (request.getParameter("pre"));
        int postTaxDeduct = Integer.parseInt (request.getParameter("post"));
        int regularHours = 40;
                int otHours = 1;
                int otPayRate = 1;
                int otPay = 1;
                int regularPay =1;
                int grossPay = 1;
                int taxablePay = 1;
                int taxAmount = 1;
                int postTaxPay = 1; 
                int netPay = 1;
                
                
                
                
                
        
        if (hoursWorked > 40) { otHours = hoursWorked - 40;
                otPayRate = hourlyPay * 1/2 + hourlyPay;
                otPay = otHours * otPayRate;
                regularPay = regularHours * hourlyPay;
                grossPay = hourlyPay + otPay;
                taxablePay = grossPay - preTaxDeduct;
                 }
        else {  grossPay = hoursWorked * hourlyPay;
        taxablePay = grossPay - preTaxDeduct;
        }

        
        
        if (grossPay < 500) {taxAmount = taxablePay * 9/50;
         postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;
        }
        else { taxAmount = taxablePay * 11/50;
         postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;
        }
        
       
        
        
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
                    <td><%= otHours %></td>
                </tr>
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                 <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxablePay %></td>
                </tr>
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
           </tbody>
        </table>
        
    </body>
</html>
