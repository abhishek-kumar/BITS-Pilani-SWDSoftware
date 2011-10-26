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
.style5 {font-size: 12px; color: #999999; }
.style6 {
	color: #000000;
	font-weight: bold;
}
.style7 {font-size: 12px}
.style9 {font-family: "Courier New", Courier, mono}
-->
</style></head>

<body>
<!--#include file="DBConnection.inc"-->
<%
Dim StdRecSet, srecset
Set StdRecSet = server.CreateObject("ADODB.Recordset")
Set Srecset = server.CreateObject("ADODB.Recordset")
stdrecset.cursortype = 3
srecset.cursortype = 3
stdrecset.open "SELECT * FROM STUDENTS WHERE ID='" & UCASE(REQUEST.Form("txtID")) & "'", MainConnection
srecset.open "select * from scholarshipdetails where id='" & UCASE(REQUEST.Form("txtID")) & "'", mainconnection

	if stdrecset.recordcount < 1 then response.Redirect("Error.asp?Title=Student/ID Not found&errorDesc=The value you entered does not exist in the database. Please check if the id number <<" & UCASE(request.Form("txtID")) & ">> is correct. In case of difficulty, please contact the Student Welfare Department.")
if srecset.recordcount>0 then response.Redirect("Error.asp?Title=Form Already filled&ErrorDesc=You have already filled up the form. You cannot fill it up again. You can check the values that you filled in by checking the status from the main index page.")

stdrecset.movefirst
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Scholarship Details  :</span> Submission</div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form action="Submission3.asp" method="post" name="form1">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="3"><div align="left">
                    <p>Please Verify the information below before continuing  </p>
                    </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right"></div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp;ID Number: 
                    <br>
                  </div></td>
                  <td><div align="left">:&nbsp;<%= UCASE(request.Form("txtID")) %></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;&nbsp;&nbsp;Name</td>
                  <td><div align="left">:&nbsp;<%= stdrecset.fields("name").value %>
                    <input name="txtName" type="hidden" id="txtName" value="<%= stdrecset.fields("name").value %>">
                  </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;&nbsp;&nbsp;Hostel:</td>
                  <td><div align="left">:&nbsp;<%= stdrecset.fields("hostel").value & " >> " & stdrecset.fields("room").value %>
                    <input name="txtHostel" type="hidden" id="txtHostel" value="<%= stdrecset.fields("hostel").value & " >> " & stdrecset.fields("room").value %>">
                  </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div align="left">
                    <input name="txtID" type="hidden" id="txtID" value="<%= UCASE(request.Form("txtID")) %>">
                  </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right"></div></td>
                  <td colspan="2">
                    <div align="left">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input name="Submit" type="submit" id="Submit" accesskey="S" tabindex="1" value="Continue (The information is correct)">
                      &nbsp;&nbsp;&nbsp;
                      &nbsp;</div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td valign="top">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td width="11%">&nbsp;</td>
                  <td width="16%">&nbsp;</td>
                  <td width="61%">&nbsp;</td>
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
MainConnection.Close %>
</body>
</html>
