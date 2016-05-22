<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<body bgcolor="#FFCCFF">
<h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
<h:link action="/st" ><font color="green"><h4 align="right"> STOCK</h4></font></right></h:link>
<table>
    <h:form action="/ma" method="post">
        <tr>
        <td>Stock_id: <h:text property="stock_id1"/></td></tr>
        <tr><td><h:submit value="modify"/></td></tr>
        
    </h:form>
</table>
${requestScope.a}

<center><font color="blue" size="5">STOCK DETAIL</font></center>
<table align="center">
    <h:form action="/mas">
        
        <tr><td>STOCK_ID</td><td>    <h:text property="stock_id"/>   </td></tr>        
        <tr><td>NAME</td><td>    <h:text property="name"/>   </td></tr>
        <tr>  <td>DISK_TYPE</td><td>    <h:text property="disk_type"/>   </td></tr>
        <tr><td>CONTENT_TYPE</td><td>    <h:text property="content_type"/>   </td></tr>
        <tr>  <td>VERSION_TYPE</td><td>    <h:text property="version_type"/>   </td></tr>
        <tr> <td>IMAGE</td><td>    <h:text property="image"/>   </td></tr>
        <tr> <td>CAST</td><td>    <h:text property="cast"/>   </td></tr>
        <tr><td>DIRECTOR</td><td>    <h:text property="director"/>   </td></tr>
        <tr>     <td>YEAR</td><td>    <h:text property="year"/>   </td></tr>
        <tr><td>QUANTITY</td><td>    <h:text property="quantity"/>   </td></tr>
        <tr>  <td>PRICE_PER_PIECE</td><td>    <h:text property="price"/>   </td></tr>
        
        <tr> <td><h:submit value="ok" /></td></tr>
        
        
    </h:form>    
</table>  


<font color="red" size="5">${requestScope.res}</font>
</body>