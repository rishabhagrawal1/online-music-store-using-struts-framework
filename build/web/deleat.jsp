<%@taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<body bgcolor="#FFCCFF">
    <br><br><br><center><font color="blue" size="5">INSERT STOCK_ID WHICH HAVE TO DELETE</font></center>
    <h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
<h:link action="/st" ><font color="green"><h4 align="right"> STOCK</h4></font></right></h:link>    
    <br><br><br><br><br><br><br><br> <h:form action="/da">
        <table align="center">
            <tr><td>STOCK_ID: <h:text property="stock_id"/></td></tr>
            <tr><td colspan=2><h:submit value="remove" /></td></tr>
        </table>
    </h:form>
    <br><br>
    
    
    <font size="5" color="purple"> ${requestScope.ds}</font>
</body>