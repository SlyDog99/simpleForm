<%-- 
    Document   : index
    Created on : Mar 1, 2016, 8:38:55 AM
    Author     : sylvester podobinski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="format.css" />
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <<form name="simpleSalaryCalculatorForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50" required ></td>
                        
                    </tr>
                      <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50" required ></td>
                        
                    </tr>
                      <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pre" value="" size="50" required ></td>
                        
                    </tr>
                      <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="post" value="" size="50" required ></td>
                        
                    </tr>
                </tbody>
            </table>
              
            <input  type="reset" value="Clear" id="clear">
            <input  type="submit" value="Submit" id="submit">        
            
        </form>
        
    </body>
</html>
