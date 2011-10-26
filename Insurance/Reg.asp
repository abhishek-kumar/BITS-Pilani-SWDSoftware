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
                              <p class="style1 style7 style10 style11"> Please fill in the details of the insurance form below... </p>
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
                                  <td width="231"><div align="left"><span class="style13">
                                      <input name="IDNo" type="text" id="IDNo">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Name</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="Name" type="text" id="Name">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Date of Birth</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="DOB" type="text" id="DOB">
                                      <br>
                                      (format: dd-mm-yy  [Eg 15-10-06])
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><div align="left"><span class="style13"></span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Sex</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <select name="Sex" id="Sex">
                                          <option value="U" selected>Unknown</option>
                                          <option value="M">Male</option>
                                          <option value="F">Female</option>
                                      </select>
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Blood Group </span></div></td>
                                  <td><div align="left"><span class="style13">
                                    <input name="BloodGroup" type="text" id="BloodGroup" size="2">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><span class="style13"></span></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Hostel</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <select name="Hostel" id="Hostel">
                                          <option value="BH1">BH1</option>
                                          <option value="BH2">BH2</option>
                                          <option value="BH3">BH3</option>
                                          <option value="BH4">BH4</option>
                                          <option value="BH5">BH5</option>
                                          <option value="GH1" selected>GH1</option>
                                          <option value="GH2">GH2</option>
                                          <option value="GH3">GH3</option>
                                          <option value="GH4">GH4</option>
                                          <option value="BH6">BH6</option>
                                          <option value="BH7">BH7</option>
                                          <option value="BH8">BH8</option>
                                      </select>
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Room Number </span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="RoomNo" type="text" id="RoomNo">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Father's Name </span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="FName" type="text" id="FName">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Permanent Address </span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <textarea name="PermAddress" id="PermAddress"></textarea>
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Mobile Number </span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="Mobile" type="text" id="Mobile">
                                  </span></div></td>
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
                                  <td><div align="left"><span class="style13">
                                      <input name="PName" type="text" id="PName">
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Date of Birth</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="PDOB" type="text" id="PDOB">
                                      <br>
                                      (format: dd-mm-yy  [Eg 16-10-06])                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Sex</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <select name="PSex" id="PSex">
                                          <option value="U" selected>Unknown</option>
                                          <option value="M">Male</option>
                                          <option value="F">Female</option>
                                      </select>
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Address</span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <textarea name="PAddress" id="PAddress"></textarea>
                                  </span></div></td>
                                </tr>
                                <tr>
                                  <td><div align="left"><span class="style20">Tel Number </span></div></td>
                                  <td><div align="left"><span class="style13">
                                      <input name="Tel" type="text" id="Tel">
                                  </span></div></td>
                                </tr>
                              </table>
                              <p align="left" class="style23"><strong>Note:</strong> Please confirm the information above before submitting! you cannot change the information. </p>
                              <p>
                                  <input type="submit" name="Submit" value="Submit this information">
                              </p>
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
