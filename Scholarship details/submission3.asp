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
.style9 {color: #FF0000}
.style12 {font-family: "Times New Roman", Times, serif; font-weight: bold; }
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
</head>

<body>
<!--#include file="DBConnection.inc"-->


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
            <form action="SubmissionCheck.asp" method="post" name="form1">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="56%"><div align="right" class="style8">ID Number: <%= request.Form("txtID") %><br>
                    Name: <%= request.Form("txtName") %><br>
                    Hostel: <%= request.Form("txtHostel") %>
</div></td>
                  <td width="9%">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">
                    <p>Please fill up the information very carefully. You cannot modify it later. 
                      <input name="txtID" type="hidden" id="txtID" value="<%= request.Form("txtid") %>">
                    </p>
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
                  <td colspan="3"><div align="left">(Select whichever is applicable) </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td align="left">&nbsp;
                    <input name="rbParents" type="radio" id="radiobutton1" accesskey="F" tabindex="0" value="Father" checked>
                    <label for="radiobutton1">Father</label><br>
                    &nbsp;
                    <input name="rbParents" type="radio" value="Mother" accesskey="M" tabindex="1" id="radiobutton2">
                    <label for="radiobutton2">Mother</label><br>
                    &nbsp;
                    <input name="rbParents" type="radio" value="Both Parents" accesskey="B" tabindex="2" id="radio2">
                    <label for="radio2">Both</label></td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left">&nbsp;&nbsp;b) Type of Income Certificate: 
                      <select name="selectIncomeType" id="selectIncomeType" accesskey="T" tabindex="3">
                      <option value="*" selected>Select ...</option>
                      <option value="Salary Slip">Salary Slip</option>
                      <option value="Affidavit">Affidavit</option>
                      <option value="Statement from Bank">Statement from Bank</option>
                      <option value="Post Office">Post Office</option>
                      </select>
                  &nbsp;<span class="style9">(&lt;&lt; Please be sure to select the correct option) </span></div></td>
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
                    <label for="txtIncome">Rs</label>
                    <input type="text" name="txtIncome" accesskey="I" tabindex="4" id="txtIncome" >
                    &nbsp;<span class="style9">(&lt;&lt; Please provide Income in Number, not words) </span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Example: 200000 </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="left"><strong><span class="style13">II</span>  Declarations</strong> (Select whichever Applicable. These are Options<span class="style12"> II</span>-a to <span class="style12">II</span>-e): </div></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left" valign="middle"><input type="checkbox" name="NoScholarship" value="Y" tabindex="5" id="NoScholarship">
                    <label for="checkbox">I am NOT receiving any other scholarship.</label></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left"><input type="checkbox" name="NTSE" value="Y" tabindex="6" id="NTSE">
                    <label for="checkbox2">I am receiving NTSE Scholarship.</label></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left"><input type="checkbox" name="State" value="Y" tabindex="7" id="State">
                    <label for="checkbox3">I am receiving Pratibha/Tamil Nadu/Maharashtra/Other State Scholarship.</label>
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <label for="select">Specify</label>
                    <select name="select" tabindex="9" id="select">
                      <option value="Pratibha" selected>Pratibha</option>
                      <option value="Tamil Nadu">Tamil Nadu</option>
                      <option value="Maharashtra">Maharashtra</option>
                      <option value="Other State">Other State</option>
                    </select>
                    &nbsp;&nbsp;&nbsp;
                    <label for="txtState">State</label>
                    <input name="txtState" type="text" id="txtState" tabindex="10" size="35"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left"><input type="checkbox" name="Org" value="Y" tabindex="11" id="Org">
                    <label for="checkbox4">I am receiving IOCL/DAF scholarship.</label></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3" align="left"><input type="checkbox" name="Other" value="Y" tabindex="12" id="Other">
                    <label for="checkbox5">I am receiving some other scholarship.</label>
                    &nbsp; <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="txtOther" type="text" id="txtOther" tabindex="13" size="55">
                    <label for="txtOther">(Specify Scholarship & Organization)</label></td>
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
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><div align="center">If you have filled in the above details carefully, click on the submit button to submit your information. </div></td>
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
                    <div align="left">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input name="Submit" type="submit" id="Submit" accesskey="S" tabindex="1" onClick="MM_validateForm('txtIncome','','RinRange100:300000000');return document.MM_returnValue" value="Submit Scholarship Details">
                      &nbsp;&nbsp;&nbsp;
                      &nbsp;
                      <input type="reset" name="Submit2" value="Reset all values">
                    </div></td>
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
                  <td width="20%">&nbsp;</td>
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
<% MainConnection.Close %>
</body>
</html>
