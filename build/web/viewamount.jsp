<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ page import="java.sql.*" %>
<s:setDataSource driver="${initParam.Driver}" url="${initParam.Url}" user="${initParam.User}" password="${initParam.Password}"/>
<body bgcolor="#FFCCFF">
<br><font size="6" color="green"><center><b><u><i>VIEW AND UPDATE ACCOUNT BALANCE</i></u></b></center></font><br><br><br>
<h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
<table bgcolor="#CC99FF" border="1" align="center" cellpadding="2" cellspacing="2">
    
    <tr>
        <td>LOGIN_ID</td>
        <td>AMOUNT</td>
        
    </tr>
        
    
<s:query var="rs"
  sql="${sessionScope.q1}" />
<c:forEach var="r" items="${rs.rows}">
   <tr>
            <td>${r.login_id}</td>
            <td>${r.amount}</td>
   </tr>
</c:forEach><br>
<h:form action="/update"  >
        <table bgcolor="#CC99FF" border="1" align="center" cellpadding="2" cellspacing="2">
            <tr>
                <td>Login-id: </td><td><h:text property="login_id" /></td>
            </tr><br>
            <tr>
                <td>Amount: </td><td><h:text property="amount" /></td>
            </tr><br>
        <tr ><td colspan=2><p align = "center">    <h:submit value="Update" /></p></td></tr></table>
        </table>
</h:form>
</body><br><font size="4" color="violet"><center>${sessionScope.ans2}</center></font>