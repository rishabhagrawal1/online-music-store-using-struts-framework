<%@ taglib prefix="h" uri="/WEB-INF/struts-html.tld"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
${requestScope.q}
<c:choose>
    <c:when test="${requestScope.stock_id eq null}">
        <s:setDataSource driver="${initParam.Driver}" url="${initParam.Url}" user="${initParam.User}" password="${initParam.Password}"/>
        <s:query var="rs" sql="${sessionScope.query}" />
        <table align=center width=50%>   
            <h:form action="/demandcopy" method="post" >
                <c:set scope="page" var="c" value="${rs.rows}" />
                 <c:if test="${c eq null }">
            No item find of your request
                 
            </c:if>
           
                <c:forEach var="r" items="${rs.rows}" >
                
                <tr><td><h:radio property="choice" value="${r.stock_id}" /></td><td><h:img src="images/${r.image}" height="50" width="50"/> </td><td>${r.name}</td></tr>
                    
                    
                </c:forEach>
                <tr> <td colspan=2><h:submit value="submit" /></td></tr>
            </h:form>
        </table>
   </c:when>
    <c:otherwise>
        ${requestScope.q}
      <center>you have selected item which have STOCK-ID ${requestScope.stock_id}</center>
        <h:form action="/order1" method="post" >
<center><h:hidden property="choice" value="${requestScope.stock_id}" />
            <h:text property="copies" />
              <h:submit value="order" /></center>
   </h:form>
            </c:otherwise>
</c:choose>