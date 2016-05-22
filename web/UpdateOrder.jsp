<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:setDataSource driver="${initParam.Driver}"
                 url="${initParam.Url}"
                 user="${initParam.User}"
                 password="${initParam.Password}"
                 />
<c:set var="id" value="${sessionScope.id}" scope="page" />
<font color="brown"><center><i><u>Please enter the order-id of the order you want to update<br><br></u>
<s:query var="rs" sql="select * from order_master where login_id='${id}'" />
<i><u>Your Orders are shown below</u><br><br><br><br>
<table align="center" bgcolor=#CCFFFF border=1 bordercolorlight=#330099 cellspacing=3 cellpadding=4>
    <tr>
        <th>Order-id</th>
        <th>Login-id</th>
        <th>stock-id</th>
        <th>order-date</th>
        <th>quantity</th>
        <th>status</th>
    </tr>
    
    <c:forEach var="r" items="${rs.rows}">
        <c:if test="${r.status eq \"pending\"}">
            <tr><td>${r.order_id}</td>
                <td>${r.login_id}</td>
                <td>${r.stock_id}</td>
                <td>${r.order_id}</td>
                <td>${r.quantity}</td>
                <td>${r.status}</td>
        </tr></c:if>
</c:forEach></table>
<h:form action="/updateaction"><br>
    <table align="center">
        <tr><td> Order-id</td><td><h:text property="orderid" /></td></tr>
  <tr><td> Quantity</td><td><h:text property="quantity" /></td></tr></table>
    <h:submit />
</h:form>
${requestScope.er}
<h:link action="/order">Click here to go back</h:link>