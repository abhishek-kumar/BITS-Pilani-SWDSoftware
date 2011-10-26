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
<!--#include file="DBConnection.inc"-->
<!--#include file="Allotment_Status.inc"-->
<%
'Updation Process
	'Check whether it is safe to do so
	Dim rsStudent, rsHostel
	Set rsStudent = server.CreateObject("ADODB.RECORDSET")
	Set rsHostel = server.CreateObject("ADODB.RECORDSET")
	rsStudent.CursorType = 2
	rsHostel.CursorType = 2
	rsStudent.Open "SELECT * FROM STUDENTS WHERE APPLICATION_NUMBER='" & Request.Form("txtAppNo") & "'", MainConnection, 2, 3	:rsstudent.movefirst
	rsHostel.Open "SELECT * FROM HOSTELS WHERE HOSTELS.NAME = '" & Request.Form("hHostel") & "' AND HOSTELS.ROOM = " & Request.Form("hRoom"), MainConnection, 2, 3	:rsHostel.MoveFirst
	
	If (rsStudent.fields("Room").value = 0 and rsHostel.fields("Status").value <> "Allotted") then
		'Safe to Update
		rsstudent.fields("Hostel") = Request.Form("hHostel")
		rsstudent.fields("Room") = Request.Form("hRoom")
		rsHostel.fields("Status") = "Allotted"
		
		rsStudent.Update
		rsHostel.Update
		rsStudent.close
		rsHostel.close
	Else
		'No Updation.
		rsHostel.close
		rsStudent.close
		
		response.Redirect("Error.asp?ErrorDesc=An error has occurred and updation has been stopped. The Candidate's allotment was already partially over. The Candidate was not new/unallotted. To reallot, the candidate's name must be cleared and re allotted.")
	End if
	

'Display Details
		Dim stdRecSet
		Set stdRecSet = server.CreateObject("ADODB.RECORDSET")
		stdRecSet.CursorType = 3
		stdRecSet.Open "SELECT * FROM STUDENTS WHERE APPLICATION_NUMBER='" & Request.Form("txtAppNo") & "'", MainConnection
		if stdRecSet.Recordcount > 1 then Response.Redirect("Error.asp?ErrorDesc=The Database seems to be inconsistent. There are more than 1 students with Application Number as " & request.Form("txtAppNo") )
		if stdRecSet.Recordcount < 1 then Response.Redirect("Error.asp?ErrorDesc=The Application Number has been wrongly typed. There are no students with Application Number as " & request.Form("txtAppNo") )
		stdRecSet.movefirst


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
                      <td width="69%"><div align="left">Total Allotments made </div></td>
                      <td width="5%">:</td>
                      <td width="26%"><div align="left"><%= Total_Allotments %></div></td>
                    </tr>
                    <tr>
                      <td valign="top"><span class="style5">&nbsp;(<%= Boys_Allotted %> Boys + <%= Girls_Allotted %> Girls)</span></td>
                      <td>&nbsp;</td>
                      <td><div align="right"></div></td>
                    </tr>
                    <tr>
                      <td><div align="left">Unallotted Hostels </div></td>
                      <td>:</td>
                      <td><div align="left"><%= Unallotted_Hostels %></div></td>
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Database Updation:</span> The Hostel Allotment Has been Made </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form action="Allot_Print.asp" method="get" name="form1" target="_blank">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left">In order to Allot the hostel, you must enter the Application Number of the Candidate for Identification.</div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Application Number : </div></td>
                  <td>
                    <div align="left">&nbsp;
                      <input name="txtAppNo" type="hidden" id="txtAppNo" value="<%= stdRecSet.fields("Application_Number").value %>">
<%= stdRecSet.fields("Application_Number").value %></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Name of Cadidate : </div></td>
                  <td><div align="left">&nbsp; <%= stdRecSet.fields("Name").value %>
                  </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Identity Number :</div></td>
                  <td>
                    <div align="left">&nbsp; <%= stdRecSet.fields("ID").value %></div></td>
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
                  <td><div align="left">&nbsp;
                      <%= stdRecSet.fields("Hostel").value & " >> " & stdRecSet.fields("Room").value %> </div></td>
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
                  <td colspan="2"><div align="center">
                    <input name="btnSubmit" type="submit" id="btnSubmit" value="View Printable Form">
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
                  <td colspan="2"><div align="right">&lt;&lt; <a href="Allot_RequestID.asp">Allot a Room to the next Student </a></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="right">&lt;&lt; <a href="index.asp">Back to Main menu</a></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td width="37%">&nbsp;</td>
                  <td width="39%">&nbsp;</td>
                  <td width="12%">&nbsp;</td>
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
