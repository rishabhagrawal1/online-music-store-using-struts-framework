<%@taglib uri="/WEB-INF/struts-html.tld" prefix="a" %>
<body bgcolor="#FFCCFF">
<center><font color="blue" size="6">INSERT STOCK DETAIL</font></center>
    <a:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></a:link>
<a:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></a:link>
<a:link action="/st" ><font color="green"><h4 align="right"> STOCK</h4></font></right></a:link>
<table align="center">    
<a:form action="/sm">
        <tr><td>STOCK_ID</td><td>    <a:text property="stock_id"/>   </td></tr>        
        <tr><td>NAME</td><td>    <a:text property="name"/>   </td></tr>
        <tr>  <td>DISK_TYPE</td><td>    <a:text property="disk_type"/>   </td></tr>
        <tr><td>CONTENT_TYPE</td><td>    <a:text property="content_type"/>   </td></tr>
        <tr>  <td>VERSION_TYPE</td><td>    <a:text property="version_type"/>   </td></tr>
        <tr> <td>IMAGE</td><td>    <a:text property="image"/>   </td></tr>
        <tr> <td>CAST</td><td>    <a:text property="cast"/>   </td></tr>
        <tr><td>DIRECTOR</td><td>    <a:text property="director"/>   </td></tr>
        <tr>     <td>YEAR</td><td>    <a:text property="year"/>   </td></tr>
        <tr><td>QUANTITY</td><td>    <a:text property="quantity"/>   </td></tr>
        <tr>  <td>PRICE_PER_PIECE</td><td>    <a:text property="price"/>   </td></tr>
        
        <tr> <td><a:submit value="add" /></td></tr>
        
        
    </a:form>    
</table>

<center>
    <font color="red" size="5">${requestScope.res}</font>
    <font color="red" size="5">${requestScope.w}</font>
</center>
</body>