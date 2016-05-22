<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="t" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td height="134" colspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="411" height="30">&nbsp;</td>
        <td width="131">&nbsp;</td>
        <td width="461">&nbsp;</td>
      </tr>
      <tr>
        <td height="17"></td>
        <td valign="top"><t:insert attribute="header" /></td>
        <td></td>
      </tr>
      <tr>
        <td height="87"></td>
        <td>&nbsp;</td>
        <td></td>
      </tr>
    </table>    </td>
  </tr>
  <tr>
    <td width="226" rowspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="61" height="86">&nbsp;</td>
        <td width="79">&nbsp;</td>
        <td width="86">&nbsp;</td>
      </tr>
      <tr>
        <td height="19">&nbsp;</td>
        <td valign="top"><t:insert attribute="menu" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="323">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>    </td>
    <td width="777" height="414" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="143" height="85">&nbsp;</td>
        <td width="111">&nbsp;</td>
        <td width="523">&nbsp;</td>
      </tr>
      <tr>
        <td height="23">&nbsp;</td>
        <td valign="top"> <t:insert attribute="body" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="306">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td height="14"></td>
  </tr>
  <tr>
    <td height="73" colspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="475" height="41">&nbsp;</td>
        <td width="94">&nbsp;</td>
        <td width="434">&nbsp;</td>
      </tr>
      <tr>
        <td height="32">&nbsp;</td>
        <td valign="top"><t:insert attribute="footer" /></td>
        <td>&nbsp;</td>
      </tr>
    </table>    </td>
  </tr>
</table>
</body>
</html>
