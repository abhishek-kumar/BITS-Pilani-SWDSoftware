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
.style13 {	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
-->
</style>
</head>

<body >
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
                    <p>Please confirm your form. Once it is submitted, you cannot modify it later. Please review it once again before it is submitted. </p>
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
                  <td>&nbsp;</td>
                  <td><div align="right"><strong><span class="style13">I</span></strong>&nbsp;</div></td>
                  <td colspan="2"><div align="left"><strong>a) Income Certificate</strong>: <%= request.Form("rbParents") %> </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left"><strong>b) Type of Certificate: </strong><%= request.Form("selectIncomeType") %></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left"><strong>c) Annual Income: </strong>Rs <%= request.Form("txtIncome") %></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div align="right"><strong><span class="style13">II</span></strong>&nbsp;</div></td>
                  <td colspan="2"><div align="left"><strong>Declarations:</strong></div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2" align="left"><ul>
                    <div align="left">
                      <% if request.Form("NoScholarship") = "Y" then %>
                    </div>
                    <li>
                      <div align="left">You do not receive any other scholarship</div>
                    </li>
					<div align="left">
					  <% elseif request.Form("NTSE") = "Y" then %>
					  </div>
					<li>You receive NTSE scholarship</li>
					<% End if 
					If request.Form("State") = "Y" then
					%>
					<li>You receive '<%= request.Form("StateScholarship") %>' scholarship. (State <%= request.Form("txtState") %> ) </li>
					<% end if
					If request.Form("org") = "Y" then
					%>
					<li>You receive IOCL/DAF scholarship. </li>
					<% End if 
					If request.Form("other") = "Y" then
					%>
					<li>You receive some other scholarship: <%= request.Form("txtOther") %>  </li>
					<% end if%>
                  </ul></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2"><form  action="Submission5.asp" method="post"  name="form1">
				    <p>
				      <input name="txtID" type="hidden" id="txtID" value="<%= request.form("txtID") %>"">
				      <input name="rbParents" type="hidden" id="rbParents" value="<%= request.form("rbParents") %>">
				      <input name="selectIncomeType" type="hidden" id="selectIncomeType" value="<%= request.form("selectIncomeType") %>">
				      <input name="txtIncome" type="hidden" id="txtIncome" value="<%= request.form("txtIncome") %>">
				      <input name="NoScholarship" type="hidden" id="NoScholarship" value="<%= request.form("NoScholarship") %>">
				      <input name="NTSE" type="hidden" id="NTSE" value="<%= request.form("NTSE") %>">
				      <input name="State" type="hidden" id="State" value="<%= request.form("State") %>">
				      <input name="StateScholarship" type="hidden" id="StateScholarship" value="<%= request.form("StateScholarship") %>">
				      <input name="txtState" type="hidden" id="txtState" value="<%= request.form("txtState") %>">
				      <input name="Org" type="hidden" id="Org" value="<%= request.form("Org") %>">
				      <input name="Other" type="hidden" id="Other" value="<%= request.form("Other") %>">
				      <input name="txtOther" type="hidden" id="txtOther" value="<%= request.form("txtOther") %>">
				      </p>
				    <p align="left">&nbsp;&nbsp;&nbsp;
				      <input type="submit" name="Submit" value="Submit this Information. All Entries are correct" tabindex="0">
                      <br>
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="submission1.asp">&lt;&lt; Go back and ReFill the form  </a></p>
                  </form></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left"></div></td>
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
