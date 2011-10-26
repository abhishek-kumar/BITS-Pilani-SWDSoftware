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
.style8 {
	font-size: 10px;
	font-family: Arial, Helvetica, sans-serif;
	color: #999999;
}
-->
</style>
</head>

<body onLoad="vbscript: form1.submit">
<!--#include file="DBConnection.inc"-->

<% Dim ErrorCount %>
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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Scholarship Details  :</span> Submission Check </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">
                    <p>There were errors in your submission. Please take note of the following points: </p>
                    </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="80%" colspan="2">&nbsp;</td>
                </tr>
                
                
                <tr>
                  <td>&nbsp;</td>
                  <td valign="top">&nbsp;</td>
                  <td colspan="3"><div align="left">
                    <ul>
                      <% if request.Form("selectIncomeType") = "*" then 
					  ErrorCount = ErrorCount+1
					  %>
					  <li>You have not selected the income type. (Option I (b)). You must select an appropriate option corresponding to the Income Certificate that you have submitted.</li>
					  <% end if
					  if cdbl(request.form("txtIncome")) < 100 or cdbl(request.form("txtIncome")) > 300000000  then 
					  ErrorCount = ErrorCount+1 %>
					  <li>You have not mentioned your parents annual income correctly. Please enter the income in numerical format (Example: 70000). Do not write in words, do not include commas etc </li>
					  <% End if
					  if request.Form("NoScholarship") = "Y" then
					  if request.form("NTSE") = "Y" or request.form("State") = "Y" or request.form("Org") = "Y" or request.form("Other") = "Y" then
					  %>
					  <li> You have selected option II (a) - that you do not receive any other scholarship. You cannot select any other option under section II if you do not receive any other scholarship. </li>
					  <% 
					  ErrorCount = ErrorCount+1
					  end if
					  End if
					  if request.Form("State") = "Y" and request.Form("select") = "Other State" and request.Form("txtState") = "" then
					  %>
					  <li> Please specify the State under which you have received the 'Other State' Scholarship. (Option II - c) </li>
					  <% ErrorCount = ErrorCount+1
					  End if
					  if Request.Form("Other") = "Y" and request.Form("txtOther") = "" then
					  %>
					  <li> Please specify which other Scholarship you are receiving (Option II - e)</li>
					  <% ErrorCount = ErrorCount+1
					  End if
					  if request.form("NTSE") = "" and request.form("State") = "" and request.form("Org") = "" and request.form("Other") = "" and request.Form("NoScholarship") = "" then
					  %>
					  <li> You either receive some other scholarship or you dont receive some other scholarship. You must select an option in section II. </li>
					  <%
					  ErrorCount = ErrorCount+1
					  end if
					  
					  %>
                    </ul>
                  </div></td>
                  </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">
				  <% if ErrorCount = 0 then %> <form  action="Submission4.asp" method="post"  name="form1"><% end if %>
				  <input name="txtID" type="hidden" id="txtID" value="<%= request.form("txtID") %>"">
                    <input name="rbParents" type="hidden" id="rbParents" value="<%= request.form("rbParents") %>">
                    <input name="selectIncomeType" type="hidden" id="selectIncomeType" value="<%= request.form("selectIncomeType") %>">
                    <input name="txtIncome" type="hidden" id="txtIncome" value="<%= request.form("txtIncome") %>">
                    <input name="NoScholarship" type="hidden" id="NoScholarship" value="<%= request.form("NoScholarship") %>">
                    <input name="NTSE" type="hidden" id="NTSE" value="<%= request.form("NTSE") %>">
                    <input name="State" type="hidden" id="State" value="<%= request.form("State") %>">
                    <input name="StateScholarship" type="hidden" id="StateScholarship" value="<%= request.form("select") %>">
                    <input name="txtState" type="hidden" id="txtState" value="<%= request.form("txtState") %>">
                    <input name="Org" type="hidden" id="Org" value="<%= request.form("Org") %>">
                    <input name="Other" type="hidden" id="Other" value="<%= request.form("Other") %>">
                    <input name="txtOther" type="hidden" id="txtOther" value="<%= request.form("txtOther") %>">
				  <% if ErrorCount = 0 then %></form><% end if%></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">Please rectify these by clicking on the back button or <br>
                      <a href="submission1.asp">submit your form again from the beginning</a> </div></td>
                  </tr>
                <tr>
                  <td width="10%">&nbsp;</td>
                  <td width="2%">&nbsp;</td>
                  <td width="8%">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
              </table>
        
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
