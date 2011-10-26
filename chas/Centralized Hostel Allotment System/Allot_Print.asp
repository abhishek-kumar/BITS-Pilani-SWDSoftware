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
.style6 {
	color: #000000;
	font-weight: bold;
}
.style7 {font-size: 12px}
.style8 {
	font-size: 18px;
	font-weight: bold;
	color: #000000;
}
.style9 {color: #666666; font-size: 14px;}
-->
</style></head>

<body>
<!--#include file="DBConnection.inc"-->
<%


'Display Details
		Dim stdRecSet
		Set stdRecSet = server.CreateObject("ADODB.RECORDSET")
		stdRecSet.CursorType = 3
		stdRecSet.Open "SELECT * FROM STUDENTS WHERE APPLICATION_NUMBER='" & Request.querystring("txtAppNo") & "'", MainConnection
		if stdRecSet.Recordcount > 1 then Response.Redirect("Error.asp?ErrorDesc=The Database seems to be inconsistent. There are more than 1 students with Application Number as " & Request.querystring("txtAppNo") )
		if stdRecSet.Recordcount < 1 then Response.Redirect("Error.asp?ErrorDesc=The Application Number has been wrongly typed. There are no students with Application Number as " & Request.querystring("txtAppNo") )
		stdRecSet.movefirst


%>
<div align="center">
  <table width="768" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="1" height="156"><div align="right"></div></td>
          <td width="770" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><div align="left"></div></td>
            </tr>
            <tr>
              <td><table width="100%" height="74"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="left"><span class="style8">&nbsp;&nbsp;&nbsp;Centralized Hostel Allotment System <br>
                  </span><span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;Developed by the CSD, BITS Pilani - Goa Campus</span> </div></td>
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Information:</span> The Information related to the Candidate is enlisted below </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form action="Allot_Print.asp" method="get" name="form1" target="_blank">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td colspan="2"><div align="left"></div></td>
                  <td width="12%">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td width="37%"><div align="right">Application Number : </div></td>
                  <td width="39%">
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= stdRecSet.fields("Application_Number").value %></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Name of Cadidate : </div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= stdRecSet.fields("Name").value %>
                  </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Identity Number :</div></td>
                  <td>
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= stdRecSet.fields("ID").value %></div></td>
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
                  <td><div align="right">Allotted Hostel Room : </div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <% 
						If stdRecSet.fields("Room").value <> 0 then
							response.write(stdRecSet.fields("Hostel").value & " >> " & stdRecSet.fields("Room").value) 
						Else
							response.Write("N/A (Not yet allotted)")
						End If
					  
					  %> </div></td>
                  <td>&nbsp;</td>
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
<%
stdrecset.close
MainConnection.Close 
%>
</body>
</html>
