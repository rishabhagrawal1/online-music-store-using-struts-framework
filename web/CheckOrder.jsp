<%@ taglib  uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body bgcolor="#FFCCFF">
    <center><font color="dark green" size="5">ORDER TABLE</font></center>
    <h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
    <h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
    <h:link action="/ot" ><font color="green"><h4 align="right"> OTHERS</h4></font></right></h:link><br><br>
    <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/oew" user="root" password="mittal"/>
    <s:query var="rs" sql="select*from order_master"/>
    <table align="center" border="2" cellpadding="1" bgcolor="#CC99FF">
        <tr>   <td>ORDER_ID</td><td>LOGIN_ID</td><td>STOCK_ID</td><td>ORDER_DATE</td><td>QUANTITY</td><td>STATUS</td> </tr>
        <c:forEach var="r" items="${rs.rows}">
            
            
            <tr>   <td>${r.order_id} </td><td>${r.login_id}</td><td>${r.stock_id}</td><td>${r.order_date}</td><td>${r.quantity}</td><td>${r.status}</td> </tr>
            
            
        </c:forEach>
    </table>
</body>