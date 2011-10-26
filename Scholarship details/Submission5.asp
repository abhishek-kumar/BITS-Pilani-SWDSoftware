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

<body onLoad="vbscript: form1.submit">
<!--#include file="DBConnection.inc"-->

<% Dim StdRecSet
set stdrecset = server.CreateObject("ADODB.recordset")
stdrecset.cursortype = 2
stdrecset.open "select * from scholarshipdetails", Mainconnection, 2, 3
stdrecset.addnew
with stdrecset
	.fields("ID") = request.Form("txtID")
	.fields("ICParent") = request.Form("rbParents")
	.fields("IncomeCertificate") = request.Form("selectIncomeType")
	.fields("AnnualIncome") = cdbl(request.Form("txtIncome"))
	if request.Form("NoScholarship") = "Y" then .fields("DNoScholarship") = "true"
	if request.Form("NTSE") = "Y" then .fields("DNTSE") = "true"
	if request.Form("State") = "Y" then .fields("DState") = "true"
	.fields("State") = request.Form("txtstate")
	.fields("StateScholarship") = request.Form("StateScholarship")
	if request.Form("org") = "Y" then .fields("DOrg") = "true"
	if request.Form("Other") = "Y" then .fields("DOther") = "true"
	.fields("OtherScholarship") = request.Form("txtOther")
	.fields("Date_Entry") = ResolveDate(Now)
	if err.number >0 then
		response.Redirect("Error.asp?Title=Error&ErrorDesc=" & err.description)
	end if
	.update
	.close	
end with


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
            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">Scholarship Details  :</span> Form Submission </div></td>
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
                    <p>The Details provided by you were submitted successfully </p>
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
