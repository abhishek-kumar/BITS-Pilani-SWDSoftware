<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insurance Form</title>
<style type="text/css">
<!--
.style13 {font-family: "Trebuchet MS"}
.style20 {font-family: "Trebuchet MS"; font-size: 14px; }
.style22 {	font-family: "Trebuchet MS";
	font-size: 16px;
	font-weight: bold;
}
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-style: italic;
}
.style9 {font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-style: italic;
	font-size: 18px;
	color: #679CC6;
}
-->
</style>
</head>

<body>


<%
'///////////////////////////////////////////////////
'////// This is the main Datebase related Page...///
'///////////////////////////////////////////////////



'create a debug function
	sub DebugOutput ( WhatToPrint )
		'Response.Write("Debug Statement >> " & WhatToPrint & "<br>")
	End Sub
	
	Err.clear
	
ON ERROR RESUME NEXT
	Dim MainConnection
	Set MainConnection = Server.CreateObject("ADODB.Connection")
	mainconnection.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("Database") & "\Database.mdb; User ID=Admin; Password="
	mainconnection.open
	
	Dim MainRecordset, Date_Entry, CheckRecSet
	Date_Entry = Date()
	
	Set MainRecordset = Server.CreateObject("ADODB.Recordset")
	MainRecordset.cursortype=2
	
	
	
	

	
	
'Check for the fields
if (Request.Form("IDNo")="") or (Request.Form("Name")="") or (Request.Form("DOB")="") or (Request.Form("Sex")="") or (Request.Form("BloodGroup")="") or (Request.Form("Hostel")="") or (Request.Form("RoomNo")="") or (Request.Form("FName")="") or (Request.Form("PermAddress")="") or (Request.Form("PName")="") or (Request.Form("PDOB")="") or (Request.Form("PAddress")="") then
	response.Redirect("Error.asp?ErrorDesc=All the information has not been provided!")
end if


If Trim(Request.Form("IDNo")) <> "" then	

	Debugoutput "Going to add new Entry"
	MainRecordset.Open "Select * from Insurance", MainConnection,2,3
	MainRecordset.Addnew
	With MainRecordset
	DEBUGOUTPUT UCase(Request.Form("IDNo"))
		.Fields("IDNo") = UCase(Request.Form("IDNo"))
		.Fields("Name") = Request.Form("Name")
		.Fields("DOB") = Request.Form("DOB")
		.Fields("Sex") = Request.Form("Sex")  'fixed
		.Fields("BloodGroup") = Request.Form("BloodGroup")		'fixed
		.Fields("Hostel") = Request.Form("Hostel")	'fixed
		.Fields("RoomNo") = Request.Form("RoomNo")			'fixed
		.Fields("FName") = Request.Form("FName")			'fixed
		.Fields("PermAddress") = Request.Form("PermAddress")								'fixed
		.Fields("Mobile") = Request.Form("Mobile")		'fixed
		.Fields("PName") = Request.Form("PName")	'fixed
		.Fields("PDOB") = Request.Form("PDOB")			'fixed
		.Fields("PSex") = Request.Form("PSex")			'fixed
		.Fields("PAddress") = Request.Form("PAddress")
		.Fields("Tel") = Request.Form("Tel")


		.Fields("Date_Entry") = Date_Entry						'fixed
		'.Fields("GroupLeader") = Request.Form("Leader")			'fixed
		.Update
		.close
	End With
End If

if Err.Number <> 0 then
	response.Redirect("Error.asp?ErrorDesc=" & Err.description & "&ErrorNo=" & Err.Number)
end if

%>
<Div id=MainDiv align="center">
  <div align="center">
    <table width="790"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="790"><div id=BackBG>
            <div id=InnerBox align="center">
              <table width="750" border="1" cellpadding="1" cellspacing="1" bordercolor="#333333">
                <tr>
                  <td><div id="Inner">
                      <table width="750" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="92" colspan="3" background="TopReg.jpg">&nbsp;</td>
                        </tr>
                        <tr>
                          <td colspan="2"><div align="left"><span class="style9">Online Student Personal Accident &amp; Health Insurance Form</span></div></td>
                          <td class="style9"><div align="right"></div></td>
                        </tr>
                        <tr>
                          <td width="51">&nbsp;</td>
                          <td width="489">&nbsp;</td>
                          <td width="60">&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td width="489"><div align="left">
                              <p class="style1 style7 style10 style11"> Your information has been submitted...</p>
                          </div></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td width="489">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td width="489" height="0"><div align="center">
                              <form name="form1" method="post" action="">
                                <p>&nbsp;                                </p>
                              </form>
                          </div></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&lt;&lt; <a href="Index.asp">Back to main page</a> </td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td colspan="2"><div align="right" class="style8"></div></td>
                        </tr>
                        <tr>
                          <td width="51">&nbsp;</td>
                          <td colspan="2"><div align="right" class="style8">
                              <p> &copy; Copyright CSD, BITS, Pilani-Goa Campus</p>
                          </div></td>
                        </tr>
                      </table>
                  </div></td>
                </tr>
              </table>
            </div>
        </div></td>
      </tr>
    </table>
  </div>
</Div>
</body>
</html>
