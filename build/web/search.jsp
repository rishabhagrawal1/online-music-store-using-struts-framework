<%@ taglib prefix="a" uri="/WEB-INF/struts-html.tld"  %>
${requestScope.q}
<center>Search & Purchase CD's DVD's AND LOT MORE </center><hr><br><br>
<a:form action="/sac" method="post">
   <center> select here which type of search you needed YEAR/DIRECTOR/STARCAST/NAME</center>
   ${requestScope.r}
   <table align="center">
        <tr><td><a:radio property="type" value="name" />NAME OF MOVIE</td>
        <td><a:select property="nameType">
        <a:option value="start_with">NAME start_with</a:option>
        <a:option value="end_with">NAME end with</a:option>
        <a:option value="middle">NAME in middle</a:option>
        
    </a:select>
    </td></tr>
    
        <tr><td><a:radio property="type" value="year"/>YEAR</td></tr>
    
    <tr><td><a:radio property="type" value="director"/>DIRECTOR</td></tr>
   <tr><td> <a:radio property="type" value="cast"/>STARCAST</td>
    <td><a:select property="castType">
    <a:option value="equals" >STAR-CAST NAME EXACTLY EQUALS</a:option>
    <a:option value="contains" >STAR-CAST CONTAINS</a:option>
    </a:select></td></tr>
    
    </table><br><br>
${requestScope.p}
<br>
    <center>write here name of your choice(YEAR/DIRECTOR/STARCAST/NAME)

    <a:text property="match" /></center><br>
    <center><a:submit /></center>
   
</a:form>
