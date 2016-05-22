<%@ taglib  uri="/WEB-INF/struts-html.tld" prefix="h" %>
${requestScope.q}
<h:form action="/registered">
<br><br>
<table border=1 bgcolor="#00CCff" align="center"><tr><td>Please enter your loginId</td><td><h:text property="id"/></td></tr>
<tr><td>Please enter password</td><td><h:password property="password" /></td></tr>
<tr><td><h:submit value="Register Me"/></td></tr>
    
</table>
</h:form>