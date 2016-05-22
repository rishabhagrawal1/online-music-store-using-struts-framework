<%@taglib  prefix="h" uri="/WEB-INF/struts-html.tld" %>
${requestScope.b}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<title>
ONLINE ENTERTAINMENT WORLD
</title>

<link rel="stylesheet" href="style.css" type="text/css" media="screen" />

</head>

<body>

<div id="container">

	<!-- Start of Page Title -->

	<div id="page_title">
	<h1><span>Musicians Agency</span></h1>
	</div>

	<!-- End of Page Title -->


	<!-- Start of Left Column -->

	<div id="left_column">

		<div id="page_image">&nbsp;</div>


		<!-- Start of Page Menu -->

		<div id="page_menu">

			

			<div class="clearthis">&nbsp;</div>
		</div>

		<!-- End of Page Menu -->


		<!-- Start of Latest News -->

		<div id="latestnews">
			<h2><span>Latest News</span></h2>

<p>Don't forgot to check <a href="http://localhost:8084/oew">free WALLPAPERS</a> every day, because we add new wallpapers daily.</p>
				
				
				<p align="center"> <table bgcolor="#333333" >
	
<h:form action="/valid" method="post">



<td><div align="left"><font color="#FFFFFF">NAME: </font></div></td>
<td><div align="left"><font color="#FFFFFF"><h:text property="id" /></td>
</tr><br>
<tr>
<td><div align="left"><font color="#FFFFFF">PASSWORD: </font></div></td>
<td><div align="left"><h:password property="password" /></div></td>
</tr><br>
<tr>
<td> </td>
<td><h:submit  value="Sign In"/><h:reset  value="Reset" /> </td>
</tr><br>

</h:form>
<tr>
<td><div align="left"><font color="#FFFFFF">Not Yet Registerd</font></div></td>
<td><div align="left"><font color="#FFFFFF"><h:link action="/register">Register Here</h:link></font></div></td>
</tr><br>

</table>
				</p>
		</div>

		<!-- End of Latest News -->

	</div>

	<!-- End of Left Column -->


	<!-- Start of Right Column -->

	<div id="right_column">


		<!-- Start of Latest Video -->

		<div id="latestvideo">
			<h2><span>Latest Video</span></h2>

			<div class="thumbnail"><img src="images/latestvideo_thumbnail.gif" width="291" height="135" alt="Thumbnail Caption" /></div>


				
				
				

		</div>

		<!-- End of Latest Video -->


		<!-- Start of Album Review -->

		<div id="albumreview">
			<h2><span>Album Review</span></h2>

			<div class="thumbnail"><img src="images/review_thumbnail.gif" width="142" height="105" alt="Thumbnail Caption" /></div>


				
				
				
				

		</div>

		<!-- End of Album Review -->

	</div>

	<!-- End of Right Column -->


	<!-- Start of Page Footer -->

	<div id="page_footer">Web Design by <a href="http://localhost:8084/oew">ONLINE ENTERTAINMENT WORLD</a></div>

	<!-- End of Page Footer -->

</div>

</body>
</html>


