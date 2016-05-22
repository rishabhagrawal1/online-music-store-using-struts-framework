<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<body bgcolor="#FFCCFF">
    <br>
    <font size="6" color="green"><center><b><u><i>Manage User Accounts</i></u></b></center></font> 
<h:link action="/so" ><font color="green"><h4 align="right"> SIGNOUT</h4></font></right></h:link>
<h:link action="/ho" ><font color="green"><h4 align="right"> HOME</h4></font></right></h:link>
    <table bgcolor="#CC99FF" border="1" align="center" cellpadding="2" cellspacing="2">
        <br><br><br>
        <h:form action="/ua">
            <tr>
                <td><h:radio property="useraccount" value="activateuser"/></td><td>ACTIVATE USER</td><br>
            </tr>
            <tr>
                <td><h:radio property="useraccount" value="deactivateuser"/></td><td>DEACTIVATE USER</td><br>
            </tr>
            <tr>
                <td><h:radio property="useraccount" value="deleteuser"/></td><td>DELETE USER</td><br>
            </tr>
            <tr>
                
                <td  colspan="2"><div align="center"> <h:submit/></div></td>
            </tr>
        </h:form>
</table></body>