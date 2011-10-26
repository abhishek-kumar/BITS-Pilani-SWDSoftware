<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Institute Merit cum Need Scholarship</title>
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
.style6 {
	color: #000000;
	font-weight: bold;
}
.style7 {font-size: 12px}
-->
</style></head>

<body>
<!--#include file="DBConnection.inc"-->


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
                  <td>&nbsp;</td>
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Main Control Menu :</span> Select what you would like to do</div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form action="CheckStatus1.asp" method="post" name="form1">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left">
                    <p>Welcome to the centralized Scholarship Details Submission System. You may submit information relevant to Merit cum Need scholarship and view the status of your submission.</p>
                    <p>Please select what you would like to do: </p>
                  </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">&gt;&gt;</div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp;<a href="submission1.asp">Fill up the Scholarship Details form</a><br>
                  </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">&gt;&gt;</div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp;<a href="CheckStatus1.asp">View Status</a>:&nbsp;
                      <label for="textfield"><strong>ID</strong></label>
                    <input name="txtID" type="text" id="txtID" tabindex="1" value="ID Number Here" size="20">
                   &nbsp;
                   <input type="submit" name="Submit" value="View Status" tabindex="2">
                  </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td valign="top">&nbsp;</td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Click here only if you have already submitted your information)</td>
                  <td>&nbsp;</td>
                </tr>
                
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td width="14%">&nbsp;</td>
                  <td width="69%">&nbsp;</td>
                  <td width="5%">&nbsp;</td>
                </tr>
              </table>
            </form>
            </div></td>
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
<% MainConnection.Close %>
</body>
</html>
