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
	color: #666666;
	font-weight: bold;
}
.style7 {font-size: 12px}
.style8 {
	font-size: 11px;
	font-family: Arial, Helvetica, sans-serif;
	color: #999999;
}
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
.style15 {color: #000000; font-weight: bold; }
-->
</style>
</head>

<body>
<!--#include file="DBConnection.inc"-->
<%
Dim stdrecset, srecset
set stdrecset = server.CreateObject("ADODB.recordset")
set srecset = server.CreateObject("ADODB.recordset")
stdrecset.cursortype = 3
srecset.cursortype = 3
stdrecset.open "SELECT * FROM STUDENTS WHERE ID='" & ucase(REQUEST.Form("txtID")) & "'", Mainconnection

if stdrecset.recordcount < 1 then response.Redirect("Error.asp?Title=Student/ID Not found&errorDesc=The value you entered does not exist in the database. Please check if the id number <<" & UCASE(request.Form("txtID")) & ">> is correct. In case of difficulty, please contact the Student Welfare Department.")
stdrecset.movefirst

srecset.open "SELECT * FROM SCHOLARSHIPDETAILS WHERE ID = '" & ucase(REQUEST.Form("txtID")) & "'", mainconnection
if srecset.recordcount < 1 then response.Redirect("Error.asp?Title=Form Not submitted.&ErrorDesc=You have not yet submitted your scholarship form. ")
srecset.movefirst

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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">Scholarship Details:</span> Details of Submitted Application </div></td>
        </tr>
        <tr>
          <td background="Images/CC.jpg"><div align="center">
            <form action="SubmissionCheck.asp" method="post" name="form1">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="60%"><div align="right" class="style8">ID Number: <%= ucase(request.Form("txtID")) %><br>
                    Name: <%= stdrecset.fields("Name").value %><br>
                    Hostel: <%= stdrecset.fields("Hostel").value & " >> " & stdrecset.fields("Room").value%>
</div></td>
                  <td width="9%">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">
                    <p>The information submitted by you is as follows. In case of any difficulty/change in information, contact the Students Welfare Division (SWD). </p>
                    </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left"><strong><span class="style13">I</span> a) Income Certificate</strong> </div></td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3"><div align="left">-&gt; Income Certificate of <span class="style6"><%= srecset.fields("ICParent").value %></span></div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td align="left">&nbsp;<label for="radio2"></label></td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">&nbsp;&nbsp;b) Type of Income Certificate:                  <span class="style6"><%= srecset.fields("IncomeCertificate").value %></span></div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><div align="left">&nbsp;&nbsp;c) Total Annual Income </div></td>
                  <td colspan="2" align="left">: 
                    <label for="txtIncome"><span class="style6">Rs</span></label> <span class="style6"><%= srecset.fields("AnnualIncome").value %></span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left"><strong><span class="style13">II</span>  Declarations</strong>:</div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left" valign="middle"><label for="checkbox"></label></td>
                  </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4" class="style6"><div align="left">
                    <ul>
					<% if srecset.fields("DNoScholarship") = true then %>
                      <li>The student does not receive any other scholarship.</li>
					 <% End if %>
					 
					 <% if srecset.fields("DNTSE") = true then %>
                      <li>The student is receiving NTSE scholarship.</li>
					 <% End if %>
					 
					 <% if srecset.fields("DState") = true then %>
                      <li>The student is receiving '<%= srecset.fields("StateScholarship") %>' Scholarship (State <%= srecset.fields("State") %>)</li>
					 <% End if %>
					 
					 <% if srecset.fields("DOrg") = true then %>
                      <li>The student is receiving IOCL/DAF scholarship.</li>
					 <% End if %>
					 
					 <% if srecset.fields("DOther") = true then %>
                      <li>The student is receiving Other Scholarship (<%= srecset.fields("OtherScholarship") %>)</li>
					 <% End if %>
                    </ul>
                  </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">
                    <blockquote>
                      <p>If there is any discrepancy, please contact the SWD immediately.. </p>
                    </blockquote>
                  </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><div align="right"></div></td>
                  <td colspan="3">
                    <div align="left"><a href="Index.asp">&lt;&lt; Back to the Main Index page</a> </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td valign="top">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                
                <tr>
                  <td width="10%">&nbsp;</td>
                  <td width="5%">&nbsp;</td>
                  <td width="16%">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
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
srecset.close
MainConnection.Close %>
</body>
</html>
