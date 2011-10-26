<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Centralized Hostel Allotment System: BITS Pilani - Goa Campus</title>
<style type="text/css">
<!--
body,td,th {
	font-family: Trebuchet MS;
	font-size: 14px;
	color: #666666;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
	color: #000000;
}
a:active {
	text-decoration: none;
	color: #CC0000;
}
.style5 {font-size: 12px; color: #999999; }
.style6 {
	color: #000000;
	font-weight: bold;
}
.style7 {font-size: 12px}
-->
</style></head>

<body>
<%

'Date Function
	Function ResolveMonth(Mnth)
		select case Mnth
			case 1
				ResolveMonth = "January"
			case 2
				ResolveMonth = "February"
			case 3
				ResolveMonth = "March"
			case 4
				ResolveMonth = "April"
			case 5
				ResolveMonth = "May"
			case 6
				ResolveMonth = "June"
			case 7
				ResolveMonth = "July"
			case 8
				ResolveMonth = "August"
			case 9
				ResolveMonth = "September"
			case 10
				ResolveMonth = "October"
			case 11
				ResolveMonth = "November"
			case 12
				ResolveMonth = "December"
		End Select
	End Function

	Function ResolveDate(RawDate)
		ResolveDate = day(RawDate) & "/" & ResolveMonth(month(RawDate)) & "/" & year(RawDate) & " " & hour(RawDate) & ":" & Minute(RawDate)  & ":" & datepart("s", RawDate) & " " & Right(RawDate, 2)
	End Function

%>
<div align="center">
  <table width="768" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="208" height="156"><div align="right"><img src="Images/TL_Inner.jpg" width="208" height="156"></div></td>
          <td width="560" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div align="left"><img src="Images/TR.jpg" width="561" height="82"></div></td>
            </tr>
            <tr>
              <td><table width="100%" height="74"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="69%"><div align="left">Current Status</div></td>
                      <td width="5%">:</td>
                      <td width="26%"><div align="left">Error</div></td>
                    </tr>
                    <tr>
                      <td valign="top">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><div align="right"></div></td>
                    </tr>
                    <tr>
                      <td colspan="3"><div align="left"></div>                        
                        <div align="left">Description of error follows. </div></td>
                      </tr>
                  </table></td>
                  <td width="333" height="66"><img src="Images/TBR.jpg" width="333" height="60"></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><div align="right">&lt;Time Stamp: <%response.Write(ResolveDate(Now))', "hh mm Hrs; dd mmm yyyy")) %> &gt;&nbsp;&nbsp; </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="30" valign="bottom" background="Images/CT.jpg">
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Error:</span> <%= Request.QueryString("Title") %></div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg">&nbsp;</td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><div align="left"><%= Request.QueryString("ErrorDesc") %></div></td>
              </tr>
            </table>
          </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg">&nbsp;</td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">&lt;&lt; <a href="index.asp">Back to Main menu </a></div></td>
        </tr>
        <tr>
          <td height="34" background="Images/CB.jpg">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><div align="right" class="style7">This Software has been Developed by<br>
      The Centre for Software Development(CSD)</div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">&copy; Copyright 2006-2007  Centre for Software Development, BITS Pilani - Goa Campus </div></td>
    </tr>
  </table>
</div>

</body>
</html>
