<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:setDataSource driver="${initParam.Driver}"
                 url="${initParam.Url}"
                 user="${initParam.User}"
                 password="${initParam.Password}"
                 />
<c:set var="id" value="${sessionScope.id}" scope="page" />
<s:query var="rs" sql="select amount from user_account_detail where login_id='${id}'" />
<c:forEach var="r" items="${rs.rows}">
    <br><br><center>Your account balance is ${r.amount}</center>
</c:forEach>
<center><h:link action="/user">Click here to go back</h:link>