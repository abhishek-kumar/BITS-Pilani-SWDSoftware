<%
'PURPOSE: Retrieve the values of Allotment status ets
'PreRequisites: Include DBConnection.inc befor this

'Declarations
	Dim SQLQuery
	Dim Total_Allotments, Boys_Allotted, Girls_Allotted, Unallotted_Hostels
	Dim rsTA, rsBA, rsGA, rsUA

'Initialize
	Set	rsTA = server.CreateObject("ADODB.Recordset"): rsTA.Open "SELECT COUNT(*) AS F_DATA FROM STUDENTS ST WHERE ST.HOSTEL IS NOT NULL", MainConnection, 3, , 1:rsTA.MoveFirst
	Set	rsBA = server.CreateObject("ADODB.Recordset"): rsBA.Open "SELECT * FROM BOYS_ALLOTTED", MainConnection, 3, , 1: rsBA.MoveFirst
	Set	rsGA = server.CreateObject("ADODB.Recordset"): rsGA.Open "SELECT * FROM GIRLS_ALLOTTED", MainConnection, 3, , 1: rsGA.MoveFirst
	Set	rsUA = server.CreateObject("ADODB.Recordset"): rsUA.Open "SELECT * FROM UNALLOTTED", MainConnection, 3, , 1: rsUA.MoveFirst

'Set Values and Close
	Total_Allotments = rsTA.Fields("F_DATA").Value		:rsTA.Close
	Boys_Allotted = rsBA.Fields("F_DATA").Value			:rsBA.Close
	Girls_Allotted = rsGA.Fields("F_DATA").Value		:rsGA.Close
	Unallotted_Hostels = rsUA.Fields("F_DATA").Value	:rsUA.Close
%>