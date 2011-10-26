<%
'Connect to the Database using MainConnection as the Connection Object
'Presumption: DSN name <"Hostel_Allotment_DB"> exists as system DSN

'create a debug function
	sub DebugOutput(WhatToPrint)
		'Response.Write("Debug Statement >> " & WhatToPrint & "<br>")
	End Sub
	
	Err.clear
	debugoutput "This is the Beginning of the Debug Section."
	
'Capture Input in variables...
on error resume next
	Dim MainConnection
	Set MainConnection = Server.CreateObject("ADODB.Connection")
'	MainConnection.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("Database") & "\Student_Registration_Database.mdb; User ID=Admin; Password="
	MainConnection.open "Hostel_Allotment_DB"

'Errors:
	If Err.number <> 0 then 'An error has occurred
		response.redirect("Error.asp?ErrorDesc=Unable to establish a connection with the database. Make sure that a system DSN by the name of 'Hostel_Allotment_DB' exists and that the network is running fine.<br> Note that if you have just created the DSN source, it might take some time (abt 5 mins, I guess) for the connection to become active. Make sure that MsAccess is not open or the Database is not open on the server. You may have to restart the server machine if you have just created the DSN. <br><br>Error Details: " & err.description & " <br> <br> -------------     End of error description     -------------")
	End if
	
	
'Date Function
	Function ResolveMonth(Mnth)
		select case Mnth
			case 1
				ResolveMonth = "January"
			case 2
				ResolveMonth = "February"
			case 3
				ResolveMonth = "March"
			case 4
				ResolveMonth = "April"
			case 5
				ResolveMonth = "May"
			case 6
				ResolveMonth = "June"
			case 7
				ResolveMonth = "July"
			case 8
				ResolveMonth = "August"
			case 9
				ResolveMonth = "September"
			case 10
				ResolveMonth = "October"
			case 11
				ResolveMonth = "November"
			case 12
				ResolveMonth = "December"
		End Select
	End Function

	Function ResolveDate(RawDate)
		ResolveDate = day(RawDate) & "/" & ResolveMonth(month(RawDate)) & "/" & year(RawDate) & " " & hour(RawDate) & ":" & Minute(RawDate)  & ":" & datepart("s", RawDate) & " " & Right(RawDate, 2)
	End Function
	On Error goto 0
%>