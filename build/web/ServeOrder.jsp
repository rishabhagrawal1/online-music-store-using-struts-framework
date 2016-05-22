<%@ taglib  uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body bgcolor="#FFCCFF">
<center><font color="orange" size="5">PENDING ORDERS</font></center>
<h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
<h:link action="/ot" ><font color="green"><h4 align="right"> OTHERS</h4></font></right></h:link><br><br><br><br>
<s:setDataSource driver="${initParam.Driver}" url="${initParam.Url}" user="${initParam.User}" password="${initParam.Password}"/>
<s:query var="rs" sql="select*from order_master where status='pending'"/>
<table align="center" border="2" cellpadding="1" bgcolor="#CC99FF"><h:form action="/sa1">
        <tr>  <td>SELECT</td> <td>ORDER_ID</td><td>LOGIN_ID</td><td>STOCK_ID</td><td>ORDER_DATE</td><td>QUANTITY</td><td>STATUS</td> </tr>
        <c:forEach var="r" items="${rs.rows}">
            
            
            <tr> <td><h:checkbox name="ServeBean" property="select" value="${r.order_id}"/></td>  <td>${r.order_id} </td><td>${r.login_id}</td><td>${r.stock_id}</td><td>${r.order_date}</td><td>${r.quantity}</td><td>${r.status}</td> </tr>
            
            
    </c:forEach><tr><td colspan="7"><h:submit/></td></tr></h:form>
</table>
<center><font color="blue" size="5">${requestScope.res}</font></center>
<center><font color="blue" size="5">${requestScope.res1}</font></center>
<center><font color="blue" size="5">${requestScope.res2}</font></center>
</body>