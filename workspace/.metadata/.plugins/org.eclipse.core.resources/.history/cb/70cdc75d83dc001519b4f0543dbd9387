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
<%@ page import="bean.PileBean" %>
<%@ page import="bean.Counter" %>

<% 

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
              </tr>
		</thead>
		<tbody>     
			<%
			ResultSet duterte = stat.executeQuery("SELECT * FROM tapat WHERE name='Rodrigo Duterte';");
			while (duterte.next()) {	    
			    %>
			    	<tr>
			    		<td><%= duterte.getString("candidacy") %></td>
			    		<td><%= duterte.getString("name") %></td>
			    		<td><%= duterte.getString("vote") %></td>
			    		<td><%= duterte.getString("level") %></td>
			    		<td><%= duterte.getString("precinct") %></td>
			    		<td><%= duterte.getString("city") %></td>
			    		<td><%= duterte.getString("district") %></td>
			    		<td><%= duterte.getString("province") %></td>
			    		<td><%= duterte.getString("region") %></td>
			    	</tr>
			    <%
			}
			duterte.close();
			
			ResultSet totalduterte = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte';");
			%>
				<tr>
					<td></td>
					<td><strong>TOTAL VOTES</strong></td>
					<td style="text-decoration: underline;"><strong> <%= totalduterte.getString("TOTALVOTES") %> </strong></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>		
			<% totalduterte.close(); %>
    	</tbody>
	</table>
</div>

<div style="position: absolute; top: 15.5%; left: 50%;">
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
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet binay = stat.executeQuery("SELECT * FROM tapat WHERE name='Jejomar Binay';");
				while (binay.next()) {	    
				    %>
				    	<tr>
				    		<td><%= binay.getString("candidacy") %></td>
				    		<td><%= binay.getString("name") %></td>
				    		<td><%= binay.getString("vote") %></td>
				    		<td><%= binay.getString("level") %></td>
				    		<td><%= binay.getString("precinct") %></td>
				    		<td><%= binay.getString("city") %></td>
				    		<td><%= binay.getString("district") %></td>
				    		<td><%= binay.getString("province") %></td>
				    		<td><%= binay.getString("region") %></td>
				    	</tr>
				    <%
				}
				binay.close();
				
				ResultSet totalbinay = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalbinay.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalbinay.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 90%; left: 3%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Santiago Precinct Level Totals</h1>
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
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet santiago = stat.executeQuery("SELECT * FROM tapat WHERE name='Miriam Santiago';");
				while (binay.next()) {	    
				    %>
				    	<tr>
				    		<td><%= santiago.getString("candidacy") %></td>
				    		<td><%= santiago.getString("name") %></td>
				    		<td><%= santiago.getString("vote") %></td>
				    		<td><%= santiago.getString("level") %></td>
				    		<td><%= santiago.getString("precinct") %></td>
				    		<td><%= santiago.getString("city") %></td>
				    		<td><%= santiago.getString("district") %></td>
				    		<td><%= santiago.getString("province") %></td>
				    		<td><%= santiago.getString("region") %></td>
				    	</tr>
				    <%
				}
				santiago.close();
				
				ResultSet totalsantiago = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalsantiago.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalsantiago.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 90%; left: 50%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Roxas Precinct Level Totals</h1>
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
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet roxas = stat.executeQuery("SELECT * FROM tapat WHERE name='Mar Roxas';");
				while (roxas.next()) {	    
				    %>
				    	<tr>
				    		<td><%= roxas.getString("candidacy") %></td>
				    		<td><%= roxas.getString("name") %></td>
				    		<td><%= roxas.getString("vote") %></td>
				    		<td><%= roxas.getString("level") %></td>
				    		<td><%= roxas.getString("precinct") %></td>
				    		<td><%= roxas.getString("city") %></td>
				    		<td><%= roxas.getString("district") %></td>
				    		<td><%= roxas.getString("province") %></td>
				    		<td><%= roxas.getString("region") %></td>
				    	</tr>
				    <%
				}
				roxas.close();
				
				ResultSet totalroxas = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalroxas.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalroxas.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 165%; left: 3%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Poe Precinct Level Totals</h1>
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
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet poe = stat.executeQuery("SELECT * FROM tapat WHERE name='Grace Poe';");
				while (poe.next()) {	    
				    %>
				    	<tr>
				    		<td><%= poe.getString("candidacy") %></td>
				    		<td><%= poe.getString("name") %></td>
				    		<td><%= poe.getString("vote") %></td>
				    		<td><%= poe.getString("level") %></td>
				    		<td><%= poe.getString("precinct") %></td>
				    		<td><%= poe.getString("city") %></td>
				    		<td><%= poe.getString("district") %></td>
				    		<td><%= poe.getString("province") %></td>
				    		<td><%= poe.getString("region") %></td>
				    	</tr>
				    <%
				}
				poe.close();
				
				ResultSet totalpoe = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalpoe.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalpoe.close(); %>
	    	</tbody>
		</table>
	</div>
</div>

<div style="position: absolute; top: 165%; left: 50%;">
	<div class="page-header" style="padding-left: 5%;">
		<h1>Seneres Precinct Level Totals</h1>
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
	              </tr>
			</thead>
			<tbody>     
				<%
				ResultSet seneres = stat.executeQuery("SELECT * FROM tapat WHERE name='Roy Seneres';");
				while (seneres.next()) {	    
				    %>
				    	<tr>
				    		<td><%= seneres.getString("candidacy") %></td>
				    		<td><%= seneres.getString("name") %></td>
				    		<td><%= seneres.getString("vote") %></td>
				    		<td><%= seneres.getString("level") %></td>
				    		<td><%= seneres.getString("precinct") %></td>
				    		<td><%= seneres.getString("city") %></td>
				    		<td><%= seneres.getString("district") %></td>
				    		<td><%= seneres.getString("province") %></td>
				    		<td><%= seneres.getString("region") %></td>
				    	</tr>
				    <%
				}
				seneres.close();
				
				ResultSet totalseneres = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Roy Seneres';");
				%>
					<tr>
						<td></td>
						<td><strong>TOTAL VOTES</strong></td>
						<td style="text-decoration: underline;"><strong> <%= totalseneres.getString("TOTALVOTES") %> </strong></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				<% totalseneres.close(); %>
	    	</tbody>
		</table>
	</div>
</div>
<%	stat.close();
	conn.close();	%>
	
</body>
</html>