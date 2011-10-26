<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="25;url=Allot_RequestID.asp" />
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
.style8 {
	color: #333333;
	font-weight: bold;
}
.style9 {
	color: #990000;
	font-weight: bold;
}
.style11 {color: #990033}
-->
</style></head>

<body>
<!--#include file="DBConnection.inc"-->
<!--#include file="Allotment_Status.inc"-->
<%
if Trim(request.Form("txtAppNo")) = "" or Trim(Request.Form("sHostel"))="0" then Response.Redirect("Error.asp?ErrorDesc=There was an error while processing information. Either you did not specify an Application Number or you did not select a Hostel. Please retry. ")



	Dim stdRecSet
	Set stdRecSet = server.CreateObject("ADODB.RECORDSET")
	stdRecSet.CursorType = 3
	stdRecSet.Open "SELECT * FROM STUDENTS WHERE APPLICATION_NUMBER='" & Request.Form("txtAppNo") & "'", MainConnection
	if stdRecSet.Recordcount > 1 then Response.Redirect("Error.asp?ErrorDesc=The Database seems to be inconsistent. There are more than 1 students with Application Number as " & request.Form("txtAppNo") )
	if stdRecSet.Recordcount < 1 then Response.Redirect("Error.asp?ErrorDesc=The Application Number has been wrongly typed. There are no students with Application Number as " & request.Form("txtAppNo") )
	stdRecSet.movefirst

	Dim rsHostel
	Set rsHostel = Server.CreateObject("ADODB.RECORDSET")
	rsHostel.CursorType = 3
	dim PDate
	PDate = dateadd("s", -30, Now)
	rsHostel.Open "SELECT * FROM HOSTELS WHERE NAME='" & Request.Form("sHostel") & "' AND ((STATUS IS NULL) OR (STATUS <> 'Allotted' AND STATUS_UPDATE_DATE < #" & day(PDate) & "/" & ResolveMonth(month(Pdate)) & "/" & year(Pdate) & " " & hour(PDate) & ":" & Minute(PDate)  & ":" & datepart("s", PDate) & " " & Right(PDate, 2) & "# )) ORDER BY Preference_Number ASC", MainConnection

	DEBUGOUTPUT "SELECT * FROM HOSTELS WHERE NAME='" & Request.Form("sHostel") & "' AND ((STATUS IS NULL) OR (STATUS <> 'Allotted' AND STATUS_UPDATE_DATE < #" & day(PDate) & "/" & ResolveMonth(month(Pdate)) & "/" & year(Pdate) & " " & hour(PDate) & ":" & Minute(PDate)  & ":" & datepart("s", PDate) & " " & Right(PDate, 2) & "# )) ORDER BY Preference_Number ASC"

'Status
	
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Confirmation:</span> Please Confirm the Data below before proceeding </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form name="form1" method="post" action="Allot_UpdateDB.asp">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left" class="style8">Information Regarding the Candidate -&gt;&gt; </div></td>
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
                  <td><div align="right">Application Number : </div></td>
                  <td>
                    <div align="left">&nbsp;&nbsp;&nbsp; <%= stdRecSet.Fields("Application_Number").value %>                   </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Identification Number : </div></td>
                  <td><div align="left">&nbsp;&nbsp;&nbsp; <%= stdRecSet.Fields("ID").value %></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Name : </div></td>
                  <td>
                    <div align="left">&nbsp;&nbsp;&nbsp; <%= stdRecSet.Fields("Name").value %>                    </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right">Sex : </div></td>
                  <td> <div align="left">&nbsp;&nbsp;&nbsp; <%= stdRecSet.Fields("Sex").value %></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td valign="top"><div align="right">Allotment Status : </div></td>
                  <td>
				    <div align="left">&nbsp;&nbsp;&nbsp; 
				        <%
				   	If stdRecSet.Fields("Room").value =0 then
						Response.Write("Unallotted.<br>&nbsp; The Candidate has not been allotted a Room.")					
					Else
						Response.Write("Allotted.<br>&nbsp; The Candidate has already been allotted a Room.")
					End if
				   %>
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
                  <td><div align="left"><span class="style8">Hostel Allotment Information -&gt;&gt; </span></div></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2">
                    <div align="right">
                      <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><div align="left">
                              <%  
				  	If stdRecSet.Fields("Room").value =0 then
						if rsHostel.RecordCount < 1 then
							response.Write("<br>You have given Preference for Hostel " & request.Form("sHostel") & "<br> There are no Rooms left in this Hostel to Allot. Please select another Hostel Preference and try Again.")
						Else
							rsHostel.MoveFirst
							'Update Status
								Dim rsHostel2
								Set rsHostel2 = Server.CreateObject("ADODB.RECORDSET")
								rsHostel2.CursorType = 2
								rsHostel2.Open "SELECT * FROM HOSTELS WHERE NAME='" & Request.Form("sHostel") & "' AND Preference_Number = " & rsHostel.Fields("Preference_Number").value, MainConnection, 2, 3 'Should be Unique
								rsHostel2.movefirst 'Should have just 1 record
									PDate = Now
									
	'							rsHostel2.Edit	
								rsHostel2.fields("Status") = "Under Review"
								rsHostel2.fields("Status_Update_Date") = now'"#" & day(PDate) & "/" & ResolveMonth(month(Pdate)) & "/" & year(Pdate) & " " & hour(PDate) & ":" & Minute(PDate) & ":" &  datepart("s", PDate) & " " & Right(PDate, 2) & "#"
								rsHostel2.Update
								rsHostel2.Close
								
							
							Response.write("<br>You have given Preference for Hostel " & rsHostel.Fields("Name").value & "<br> Currently, the hostel room <Strong><" & rsHostel.Fields("Room").value & "></strong> will be allotted if you proceed. Click on Proceed to complete the allotment process.")
						End If
					Else
						Response.Write("<br>The Candidate has been allotted the Hostel Room: " & stdRecset.fields("Hostel") & " >> " & stdRecset.fields("Room") & ".")
					End If
				  %>
                            </div></td>
                          </tr>
                                          </table>
                    </div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="center">
					<%  
				  	If (stdRecSet.Fields("Room").value =0) and (rsHostel.RecordCount>0) then
					%>
					<span class="style9">Note:</span> <span class="style11">You have <strong>25</strong> Seconds to Click. Otherwise you will be taken to the previous Page (Application Number Identification Page).
					</span><br>
                    <input name="btnSubmit" type="submit" id="btnSubmit" value="Proceed With Hostel Allotment">
                    <input name="hHostel" type="hidden" id="hHostel" value="<%= rsHostel.fields("Name").value %>">
                    <input name="hRoom" type="hidden" id="hRoom" value="<%= rsHostel.fields("Room").value %>">
                    <input name="txtAppNo" type="hidden" id="txtAppNo" value="<%= stdRecSet.Fields("Application_Number").value %>">
					<%
					End If
					%>
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
                  <td colspan="2"><div align="right">&lt;&lt; <a href="Allot_RequestID.asp">Back to Previous Page (App No Identification)</a></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="right">&lt;&lt; <a href="index.asp">Back to Main menu </a></div></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td width="34%">&nbsp;</td>
                  <td width="42%">&nbsp;</td>
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
rsHostel.Close
'rsHostel2.Close
stdRecSet.Close
MainConnection.Close 
%>
</body>
</html>
