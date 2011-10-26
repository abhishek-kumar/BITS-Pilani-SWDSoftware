<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="25;url=Allot_Status.asp" />
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
.style9 {font-size: 14px; color: #000000; }
.style11 {color: #330099}
.style13 {color: #000099; font-weight: bold; }
.style14 {color: #0000FF}
.style15 {
	font-family: "Courier New", Courier, mono;
	color: #666666;
}
-->
</style></head>

<body>
<!--#include file="DBConnection.inc"-->
<!--#include file="Allotment_Status.inc"-->
<%


'Display Details
		Dim stdRecSet
		Set stdRecSet = server.CreateObject("ADODB.RECORDSET")
		stdRecSet.CursorType = 3
		stdRecSet.Open "SELECT * FROM STUDENTS ORDER BY APPLICATION_NUMBER ASC", MainConnection
		IF not stdrecset.recordcount < 1 then stdRecSet.movefirst
		
		Dim hRecSet
		Set hRecSet = server.CreateObject("ADODB.RECORDSET")
		hRecSet.CursorType = 3
		hRecSet.Open "SELECT * FROM HOSTELS ORDER BY HOSTELS.NAME, HOSTELS.ROOM ASC", MainConnection
		IF not hrecset.recordcount < 1 then hRecSet.movefirst


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
      <td valign="top"><div align="left">
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="30" valign="bottom" background="Images/CT.jpg"><div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Hostels:</span> Status </div></td>
          </tr>
          <tr>
            <td valign="top" background="Images/CC.jpg"><div align="center">
                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="61">&nbsp;</td>
                    <td width="140"><div align="left" class="style9">
                        <div align="center">Hostel Name </div>
                    </div></td>
                    <td width="4" bgcolor="#D9DADF">&nbsp;</td>
                    <td width="174" class="style9"><div align="center">Room Number </div></td>
                    <td width="4" bgcolor="#D9DADF">&nbsp;</td>
                    <td width="170" class="style9"><div align="center">Sequence No </div></td>
                    <td width="4" bgcolor="#D9DADF">&nbsp;</td>
                    <td width="136" class="style9"><div align="center">Hostel Room Status</div></td>
                    <td width="78">&nbsp;</td>
                  </tr>
                  
				  <%
					Dim PDate
					PDate = dateadd("s", -30, Now)
				  Do while Not(hRecSet.EOF)
				  
				  %>
				  <tr>
                    <td>&nbsp;</td>
                    <td><div align="center"><span class="style7">&nbsp;<%= hRecSet.fields("Name").value %></span></div></td>
                    <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                    <td><div align="center"><span class="style7"><%= hRecSet.fields("Room").value %></span></div></td>
                    <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                    <td><span class="style7">&nbsp;&nbsp;<%= hRecSet.fields("Preference_Number").value %></span></td>
                    <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                    <td><div align="center"><span class="style7">&nbsp;
					<% 
					Select Case hRecSet.fields("Status").value 
						Case "Allotted"
							response.Write("<STRIKE>Allotted</Strike>")
						Case "Under Review"
							If hRecSet.fields("Status_Update_Date").value >= PDate then
								response.Write("<STRONG>Under Review</Strong>")
							Else
								response.Write("Not Yet Allotted")
							End If
						Case Else
							response.Write("Not Yet Allotted")
					End Select
					
					%> </span></div></td>
                    <td>&nbsp;</td>
				</tr>
					<%
					hRecSet.movenext
					Loop
					
					%>
                  
                  <tr>
                    <td>&nbsp;</td>
                    <td><span class="style7"></span></td>
                    <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                    <td><span class="style7"></span></td>
                    <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                    <td><span class="style7"></span></td>
                    <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                    <td><span class="style7"></span></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
            </div></td>
          </tr>
          <tr>
            <td height="34" background="Images/CB.jpg"><div align="center" class="style5"><%= hRecSet.Recordcount & " Records Found" %></div></td>
          </tr>
        </table>
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="30" valign="bottom" background="Images/CT.jpg">
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Applicants and Allocations:</span> All the students with their information details</div></td>
        </tr>
        <tr>
          <td valign="top" background="Images/CC.jpg"><div align="center">
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="22">&nbsp;</td>
                <td width="120"><div align="left" class="style9">
                  <div align="center">App Number </div>
                </div></td>
                <td width="2" bgcolor="#D9DADF">&nbsp;</td>
                <td width="99" class="style9"><div align="center">ID Number </div></td>
                <td width="2" bgcolor="#D9DADF">&nbsp;</td>
                <td width="335" class="style9"><div align="center">Name of the Student </div></td>
                <td width="2" bgcolor="#D9DADF">&nbsp;</td>
                <td width="130" class="style9"><div align="center">Hostel Room </div></td>
                <td width="43">&nbsp;</td>
              </tr>
			  
			<%
				  Do while Not(stdRecSet.EOF)
				  
			%>
              <tr>
                <td>&nbsp;</td>
                <td><div align="center"><span class="style7">&nbsp;<%= stdRecSet.fields("Application_Number") %></span></div></td>
                <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                <td><div align="center"><span class="style7"><%= stdRecSet.fields("ID") %></span></div></td>
                <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                <td><div align="left"><span class="style7">&nbsp;&nbsp;<%= stdRecSet.fields("Name") %></span></div></td>
                <td bgcolor="#e9eAeF"><span class="style7"></span></td>
                <td><div align="center"><span class="style7">&nbsp;
				<%
				if stdRecSet.fields("Room").value = 0 then
					response.Write("Not Allotted")
				else
					response.Write(stdRecSet.fields("Hostel").value & " - " & stdRecSet.fields("Room").value)
				end if
				%>
				 </span></div></td>
                <td>&nbsp;</td>
              </tr>
			  
			  <%
					stdRecSet.movenext
					Loop
					
					%>
              <tr>
                <td>&nbsp;</td>
                <td><span class="style7"></span></td>
                <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                <td><span class="style7"></span></td>
                <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                <td><span class="style7"></span></td>
                <td bgcolor="#f4f5fA"><span class="style7"></span></td>
                <td><span class="style7"></span></td>
                <td>&nbsp;</td>
              </tr>
            </table>
            
            </div></td>
        </tr>
        <tr>
          <td height="34" background="Images/CB.jpg"><div align="center"><span class="style5"><%= stdRecSet.Recordcount & " Records Found" %></span></div></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="left"><span class="style13">Notes:</span><br>
&nbsp;<span class="style11">&nbsp;<span class="style14">(1) This Page will Autorefresh every 25 seconds. please refresh manually for latest details.<br>
&nbsp;&nbsp;(2) '<span class="style15">Under Review</span>' <span class="style7">(Hostel Room Status)</span> means that this hostel is being reviewed for allotment and may be alloted in <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the next 25 seconds.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it is also possible that allotment may be cancelled, in which case the status will change to '</span></span><span class="style15">Not Yet Allotted</span><span class="style11"><span class="style14">' </span></span></div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
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
hrecset.close
stdrecset.close
MainConnection.Close 
%>
</body>
</html>
