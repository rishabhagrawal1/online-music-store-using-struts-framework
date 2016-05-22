<%@ taglib prefix="a" uri="/WEB-INF/struts-html.tld"  %>

${requestScope.q}
<table border=1 bgcolor="#00ccff" align="center">
    <a:form action="/sA">
        <tr>
            <td>Login_ID</td><td> ${sessionScope.id} </td></tr>
        <tr>    <td>FIRST_NAME</td><td>    <a:text property="fname"/>   </td></tr>
            <tr><td>MIDDLE_NAME</td> <td> <a:text property="mname"/>   </td></tr>
            <tr><td>LAST_NAME</td>  <td><a:text property="lname"/>   </td></tr>
            <tr><td>CONTACT_BASIC</td>  <td><a:text property="contact_basic"/>   </td></tr>
            <tr><td>CONTACT_MOBILE</td> <td> <a:text property="contact_mobile"/>   </td></tr>
            <tr><td>EMAIL</td> <td> <a:text property="email"/>   </td></tr>
            <tr><td>DATE_OF_BIRTH</td><td>  <a:text property="dob"/>   </td></tr>
            <tr><td>STREET</td> <td> <a:text property="street"/>   </td></tr>
            <tr><td>CITY</td> <td> <a:text property="city"/>   </td></tr>
            <tr><td>PIN_CODE</td> <td> <a:text property="pincode"/>   </td></tr>
            <tr><td>STATE</td><td>  <a:text property="state"/>   </td></tr>
            <tr><td>COUNTRY</td>  <td><a:text property="country"/>   </td></tr>
            <tr><td>JOB/OCCUPATION</td> <td> <a:text property="occupation"/>   </td></tr>
            
        
        
        
        
        
       <!-- <%--<tr>
            
            
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            <td>    <a:text property=""/>   </td>
            
            
            
            
            
        </tr>
        

--%>-->
<tr> <td><a:submit value="sign_up" /></td></tr>
    </a:form>    
    </table>


