<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<TABLE BORDER="1">
                
<%
java.io.BufferedReader bf = new java.io.BufferedReader(new java.io.FileReader("D:/Eclipse/db/textfiles/votes.txt")); 
	String lineRead = new String (); 
	Vector candidacy = new Vector(); 
	Vector name = new Vector(); 
	Vector votes = new Vector(); 
	
	try {
		while ((lineRead = bf.readLine()) != null) 
		{ 
			if(lineRead.equals(""))
			{ 
				continue; 
			} 
			else 
			{ 
				if(lineRead.startsWith("Candidacy")) 
				{ 
					%>	
					<TR>
          	  			<TH>Candidacy</TH>
                   		<TD> <%= lineRead.substring(11) %> </TD>
                   	</TR>
					<%
				} 
			else if(lineRead.startsWith("Name")) 
			{ 
					%>	
					<TR>
          	  			<TH>Name</TH>
                   		<TD> <%= lineRead.substring(6) %> </TD>
                   	</TR>
					<%
			} 
			else if(lineRead.startsWith("Votes")) 
			{ 	
					%>	
					<TR>
          	  			<TH>Votes</TH>
                   		<TD> <%= lineRead.substring(7) %> </TD>
                   	</TR>
					<%
			}
			else if(lineRead.startsWith("Sender IP"))
			{
				%>	
				<TR>
      	  			<TH>Sender IP</TH>
               		<TD> <%= lineRead.substring(11) %> </TD>
               	</TR>
				<%
			}
			else if (lineRead.startsWith("Sender MAC Address"))
			{
				%>	
				<TR>
      	  			<TH>Sender MAC Address</TH>
               		<TD> <%= lineRead.substring(20) %> </TD>
               	</TR>
				<%
			}
			else if (lineRead.startsWith("Sender Latitude"))
			{
				%>	
				<TR>
      	  			<TH>Sender Latitude</TH>
               		<TD> <%= lineRead.substring(17) %> </TD>
               	</TR>
               	
				<%
			}
			else if (lineRead.startsWith("Sender Longitude"))
			{
				%>	
				<TR>
      	  			<TH>Sender Longitude</TH>
               		<TD> <%= lineRead.substring(17) %> </TD>
               	</TR>
               	
				<%
			}
			else if (lineRead.startsWith("Date"))
			{
				%>	
				<TR>
      	  			<TH>Date</TH>
               		<TD> <%= lineRead.substring(6) %> </TD>
               	</TR>
               	
				<%
			}
			else if (lineRead.startsWith("Time"))
			{
				%>	
				<TR>
      	  			<TH>Time</TH>
               		<TD> <%= lineRead.substring(6) %> </TD>
               	</TR>
               	
				<%
			}
			else if (lineRead.startsWith("Precinct"))
			{
			
					%>	
					<TR>
	      	  			<TH>Precinct</TH>
	               		<TD> <%= lineRead.substring(10) %> </TD>
	               	</TR>
	               	
					<%
			
			}
			else if (lineRead.startsWith("City"))
			{
				
					%>	
					<TR>
	      	  			<TH>City</TH>
	               		<TD> <%= lineRead.substring(6) %> </TD>
	               	</TR>
	               	
					<%
				
			}
			else if (lineRead.startsWith("District"))
			{
				%>	
				<TR>
      	  			<TH>District</TH>
               		<TD> <%= lineRead.substring(10) %> </TD>
               	</TR>
				<%
			}
			else if (lineRead.startsWith("Province"))
			{
				%>	
				<TR>
      	  			<TH>Province</TH>
               		<TD> <%= lineRead.substring(10) %> </TD>
               	</TR>
				<%
			}
			else if (lineRead.startsWith("Region"))
			{
				%>	
				<TR>
      	  			<TH>Region</TH>
               		<TD> <%= lineRead.substring(8) %> </TD>
               	</TR>
				<%
			}
			} 
			
			%>	
			<%
			
		} 
	
		bf.close();
	}
	catch (Exception e) { 
		e.printStackTrace(); 
	}
%>

</TABLE>
<a href="profile.jsp">Profile Page</a>