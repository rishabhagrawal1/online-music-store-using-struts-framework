<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="a"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ page import="java.sql.*" %>
<s:setDataSource driver="${initParam.Driver}" url="${initParam.Url}" user="${initParam.User}" password="${initParam.Password}"/>
<s:query var="rs" sql="${requestScope.query}" />
    <table align="center" border=1 bgcolor="#00ccff">   

<a:form action="/ep" method="post" >
<c:forEach var="r" items="${rs.rows}" >
        <tr>
            <td>Login_ID</td><td>    <a:text property="login_id" value="${r.login_id}" />   </td></tr>
        <tr>    <td>FIRST_NAME</td><td>    <a:text property="fname" value="${r.fname}" />   </td></tr>
            <tr><td>MIDDLE_NAME</td> <td> <a:text property="mname" value="${r.mname}" />   </td></tr>
            <tr><td>LAST_NAME</td>  <td><a:text property="lname" value="${r.lname}" />   </td></tr>
            <tr><td>CONTACT_BASIC</td>  <td><a:text property="contact_basic" value="${r.contact_basic}" />   </td></tr>
            <tr><td>CONTACT_MOBILE</td> <td> <a:text property="contact_mobile" value="${r.contact_mobile}" />   </td></tr>
            <tr><td>EMAIL</td> <td> <a:text property="email" value="${r.email}" />   </td></tr>
            <tr><td>DATE_OF_BIRTH</td><td>  <a:text property="dob" value="${r.dob}" />   </td></tr>
            <tr><td>STREET</td> <td> <a:text property="street" value="${r.street}" />   </td></tr>
            <tr><td>CITY</td> <td> <a:text property="city" value="${r.city}"/>   </td></tr>
            <tr><td>PIN_CODE</td> <td> <a:text property="pincode" value="${r.pincode}" />   </td></tr>
            <tr><td>STATE</td><td>  <a:text property="state" value="${r.state}" />   </td></tr>
            <tr><td>COUNTRY</td>  <td><a:text property="country" value="${r.country}" />   </td></tr>
            <tr><td>JOB/OCCUPATION</td> <td> <a:text property="occupation" value="${r.occupation}" />   </td></tr>
       
<tr> <td><a:submit value="submit" /></td></tr>
     </c:forEach>
    </a:form>
    </table>

