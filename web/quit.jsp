<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body bgcolor="red"><center>
    ${requestScope.id}
        <h:form action="/quit">
        <table width="895" border="0" cellpadding="0" cellspacing="0" bgcolor="yellow">
            <!--DWLayoutTable-->
            <tr>
                <td height="51" colspan="2" valign="top"><center>LOGIN_ID</center></td>
                <td colspan="3" valign="top"><input type="text" name="login_id"/></td>
                <td width="11">&nbsp;</td>
                <td width="400">&nbsp;</td>
            </tr>
            <tr>
                <td height="55" colspan="2" valign="top"><center>FIRST_NAME</center></td>
                <td colspan="3" valign="top"><input type="text" name="fname"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="57" colspan="2" valign="top"><center>LAST_NAME</center></td>
                <td colspan="3" valign="top"><input type="text" name="lname"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="53" colspan="2" valign="top"><center>ADDRESS</center></td>
                <td colspan="3" valign="top"><input type="text" name="address"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="59" colspan="2" valign="top"><center>CONTACT_BASIC</center></td>
                <td colspan="3" valign="top"><input type="text" name="contact_basic"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="59" colspan="2" valign="top"><center>CONTACT_MOBILE</td>
                <td colspan="4" valign="top"><input type="text" name="contact_mobile"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="63" colspan="2" valign="top"><center>ORDER_ID</center></td>
                <td colspan="3" valign="top"><input type="text" name="order_id"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="49" colspan="2" valign="top"><center>ANY_REASON_TO_QUIT</center></td>
                <td colspan="3" valign="top"><input type="textarea"  name="reason"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="58" colspan="2" valign="top"><center>ANY_ORDER_PENDING</center></td>
                <td colspan="3" valign="top"><input type="text" name="pending_order"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td width="97" height="33">&nbsp;</td>
                <td width="116">&nbsp;</td>
                <td width="11">&nbsp;</td>
                <td width="104">&nbsp;</td>
                <td width="156">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="49">&nbsp;</td>
                <td colspan="2" valign="top"><input type="submit" value="quit"/></td>
                <td valign="top"><input type="reset" name="cancel"/></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td height="1563">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
    </table></center></h:form>
</body>
</html>
