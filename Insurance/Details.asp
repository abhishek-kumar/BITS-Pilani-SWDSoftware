<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insurance Form</title>
<style type="text/css">
<!--
.style10 {font-family: Verdana, Arial, Helvetica, sans-serif}
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
<link href="BITS_StdReg_CSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style11 {font-size: 12px}
.style13 {font-family: "Trebuchet MS"}
.style20 {font-family: "Trebuchet MS"; font-size: 14px; }
.style22 {
	font-family: "Trebuchet MS";
	font-size: 16px;
	font-weight: bold;
}
.style23 {font-family: "Trebuchet MS"; font-size: 12px; }
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
	
	Dim MainRecordset,  CheckRecSet
	
	Set MainRecordset = Server.CreateObject("ADODB.Recordset")
	MainRecordset.cursortype=2
	Set CheckRecSet = Server.CreateObject("ADODB.Recordset")
	CheckRecset.cursortype=3
	
	debugoutput "Checking existence"
	CheckRecSet.Open "Select * from Insurance where IDNo = '" & UCase(Request.QueryString("IDNo")) & "'", MainConnection
	If CheckRecSet.recordcount > 0 then
		'good
		checkrecset.movelast
	else
		'incorrect
		checkrecset.close
		response.Redirect("Error.asp?ErrorDesc=Either Your Information has not yet been submitted, <br/> Or the ID (" & UCase(Request.QueryString("IDNo")) & ") Does not exist. & ErrorNo=ErrInvalidRequest")
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
                              <p class="style1 style7 style10 style11"> The information filled up is displayed below:</p>
                              <p class="style1 style7 style10 style11">In case of any discrepancy, please contact the swd (students welfare department).  </p>
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
                          <td width="489">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td width="489" height="0"><div align="center">
                            <form name="form1" method="post" action="Done.asp">
                              <table width="481" height="92" border="1" cellpadding="0" cellspacing="0">
                                <tr bgcolor="#CCCCCC">
                                  <td colspan="2"><div align="left"><span class="style22">INSURANCE FORM </span></div></td>
                                </tr>
                                <tr>
                                  <td width="161"><div align="left"><span class="style20">IDNo</span></div></td>
                                  <td width="231"><div align="left"><%= checkrecset.fields("IDNo").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Name</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("Name").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Date of Birth</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("DOB").value %></div></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><div align="left"><span class="style13"></span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Sex</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("Sex").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Blood Group </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("BloodGroup").value %></div></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><span class="style13"></span></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Hostel</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("Hostel").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Room Number </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("RoomNo").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Father's Name </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("FName").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Permanent Address </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("PermAddress").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Mobile Number </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("Mobile").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style13"></span></div></td>
                                  <td><div align="left"><span class="style13"></span></div></td>
                                </tr>
                                <tr bgcolor="#CCCCCC">
                                  <td colspan="2"><div align="left"><span class="style22">FEE PAYING PARENT DETAILS </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Name</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("PName").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Date of Birth</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("PDOB").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Sex</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("PSex").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Address</span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("PAddress").value %></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Tel Number </span></div></td>
                                  <td><div align="left"><%= checkrecset.fields("Tel").value %></div></td>
                                </tr>
                              </table>
                              <p align="left" class="style23">&nbsp;</p>
                              <p>&nbsp;</p>
                            </form>
                          </div></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&lt;&lt; <a href="Index.asp">Back to main Page</a> </td>
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
