<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ page import="java.sql.*" %>

<s:setDataSource driver="${initParam.Driver}" url="${initParam.Url}" user="${initParam.User}" password="${initParam.Password}"/>
<body bgcolor="#FFCCFF">
<br><font size="6" color="green"><center><b><u><i>Manage User Accounts</i></u></b></center></font><br>
<h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
<p align="right"><a href="useraccount.jsp" />MANAGE USER ACCOUNT</a></p><br><br>
<h:form action="/va" >
    
    <table bgcolor="#CC99FF" border="1" align="center" cellpadding="2" cellspacing="2">
        
        
        <tr>
            <td>SELECT</td>
            <td>LOGIN_ID</td>
            <td>STATUS</td>
        </tr>
        
        
        <s:query var="rs"
                 sql="${sessionScope.query}" />
        <c:forEach var="r" items="${rs.rows}">
        
        
        <tr>
            <td> <h:checkbox property="ch" value="${r.login_id}" /></td> 
            <td>${r.login_id}</td>
            <td>${r.status}</td>
        </tr>
        <tr>
            
        </tr>
     
    
    </c:forEach><br>
    <tr ><td colspan=3><p align="center" >    <h:submit value="${sessionScope.choice}" /></td></tr></table>
</h:form>
</body><br><font size="4" color="violet"><center>
${sessionScope.ans}</center></font>