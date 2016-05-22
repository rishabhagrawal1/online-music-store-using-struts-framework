<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
${requestScope.q}
<h:form action="/cpa">

<table border=1 bgcolor="#00CCff" align="center"><tr><td>Please enter your old password</td><td><h:password property="oldPass"/></td></tr>
<tr><td>Please enter new password</td><td><h:password property="newPass"/></td></tr>
<tr><td>Please confirm your new password</td><td><h:password property="confirmPass"/></td></tr>
    <tr><td><h:submit /></td></tr>
</table>
</h:form>