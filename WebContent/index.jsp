<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<form action="login.jsp" style="padding-left: 5.2%;padding-top: 5%;">
    <button type="submit" class="btn btn-lg btn-info">Login</button>
</form>


<%@ page import="java.sql.*" %>
<%@ page import="bean.Provider" %>

<% 

int total = 0;
int binay;
int duterte;
int santiago;
int sabilo;
int roxas;
int seneres;
Class.forName("org.sqlite.JDBC");
Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
Statement stat = conn.createStatement();

%>
<div class="page-header" style="padding-left: 5%;">
        <h1>Duterte Precinct Level Totals</h1>
      </div>
<div class="col-md-6" style="padding-left: 5%;">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Candidacy</th>
                <th>Name</th>
                <th>Votes</th>
                <th>Level</th>
                <th>Precinct</th>
                <th>City</th>
                <th>District</th>
                <th>Province</th>
                <th>Region</th>
                <th>IP Address</th>
                <th>Physical Address</th>
                <th>Latitude (X)</th>
                <th>Longitude (Y)</th>
                <th>Date</th>
                <th>Time</th>
              </tr>
            </thead>
              <tbody>
              
<%

int dutertetotal = 0;
for(int n = 1; n < 6; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Rodrigo Duterte' and precinct='" + n + "'");
	for(int i = 1; i < 16; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% dutertetotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><%= dutertetotal %></td>
</tr>

            </tbody>
          </table>
        </div>

<div style="position:absolute; top: 110%;">
<div class="page-header" style="padding-left: 5%;">
        <h1>Binay Precinct Level Totals</h1>
      </div>
<div class="col-md-6" style="padding-left: 5%;">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Candidacy</th>
                <th>Name</th>
                <th>Votes</th>
                <th>Level</th>
                <th>Precinct</th>
                <th>City</th>
                <th>District</th>
                <th>Province</th>
                <th>Region</th>
                <th>IP Address</th>
                <th>Physical Address</th>
                <th>Latitude (X)</th>
                <th>Longitude (Y)</th>
                <th>Date</th>
                <th>Time</th>
              </tr>
            </thead>
              <tbody>
              
<%

int binaytotal = 0;
for(int n = 1; n < 6; n++){
	%><tr><%
	ResultSet rs9 = stat.executeQuery("select * from tapat where name='Jejomar Binay' and precinct='" + n + "'");
	for(int i = 1; i < 16; i++){
		%> <td> <%= rs9.getString(i) %> </td> <%
	}
	%>
	</tr>
		 <% binaytotal += Integer.parseInt(rs9.getString(3)); %><%
}
%><tr>
	<td></td>
	<th>TOTAL VOTES</th>
	<td><%= binaytotal %></td>
</tr>

            </tbody>
          </table>
        </div>
      </div>
</body>
</html>