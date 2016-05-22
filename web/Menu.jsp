<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<style>
    a
    {
     color : red;
     text-decoration : none;
    }
    a:hover
    {
     text-decoration : underline;
    }
</style>
<table bgcolor="grey">
    <tr><td></td></tr>
    <tr><td><h:link action="/user"> HOME</h:link></td></tr>
    <tr><td>  <h:link page="/change_password.do">CHANGE PASSWORD</h:link></td></tr>
    <tr><td><h:link action="/order">YOUR ORDERS</h:link></td></tr>
    <tr><td><h:link action="/pu">PROFILE UPDATE</h:link></td></tr>
    <tr><td><h:link action="/search">SEARCH STOCK ITEMS</h:link></td></tr>
 
    <tr><td><h:link action="/checkbalance">CHECK BALANCE</h:link></td></tr>
    <tr><td><h:link action="/qu">QUIT ACCOUNT</h:link></td></tr>
    <tr><td><a href="#">SIGNOUT</a></td></tr>
    <tr><td> </td></tr>
     <tr><td> </td></tr>
 
</table>