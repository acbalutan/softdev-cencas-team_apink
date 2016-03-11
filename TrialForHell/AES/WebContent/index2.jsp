<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<title>AES - Index</title>
</head>
<body>

<%
	Class.forName("org.sqlite.JDBC");
	Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
	Statement stat = conn.createStatement();
%>
<div class="page-header" style="padding-left: 5%;">
	<h1>Region: NCR</h1>
</div>

<div class="col-md-6" style="padding-left: 5%;">
	<table class="table table-striped">
    	<thead>
              <tr>
                <th>Candidacy</th>
                <th>Candidate</th>
                <th>Votes</th>
              </tr>
		</thead>
		<tbody>     
			<%
			ResultSet totalduterte = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte';");
			String dutertetotal = totalduterte.getString("TOTALVOTES");
			totalduterte.close();
			
			ResultSet regionNCRduterte = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
			while (regionNCRduterte.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRduterte.getString("candidacy") %></td>
			    		<td><%= regionNCRduterte.getString("name") %></td>
			    		<td><%= dutertetotal %></td>
			    	</tr>
			    <%
			}
			regionNCRduterte.close();	%>
			
			<%
			ResultSet totalbinay = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay';");
			String binaytotal = totalbinay.getString("TOTALVOTES");
			totalbinay.close();
			
			ResultSet regionNCRbinay = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
			while (regionNCRbinay.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbinay.getString("candidacy") %></td>
			    		<td><%= regionNCRbinay.getString("name") %></td>
			    		<td><%= binaytotal %></td>
			    	</tr>
			    <%
			}
			regionNCRbinay.close();	%>
			
			<%
			ResultSet totalsantiago = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago';");
			String santiagototal = totalsantiago.getString("TOTALVOTES");
			totalsantiago.close();
			
			ResultSet regionNCRsantiago = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
			while (regionNCRsantiago.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRsantiago.getString("candidacy") %></td>
			    		<td><%= regionNCRsantiago.getString("name") %></td>
			    		<td><%= santiagototal %></td>
			    	</tr>
			    <%
			}
			regionNCRsantiago.close();	%>
			
			<%
			ResultSet totalpoe = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe';");
			String poetotal = totalpoe.getString("TOTALVOTES");
			totalpoe.close();
			
			ResultSet regionNCRpoe = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
			while (regionNCRpoe.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRpoe.getString("candidacy") %></td>
			    		<td><%= regionNCRpoe.getString("name") %></td>
			    		<td><%= poetotal %></td>
			    	</tr>
			    <%
			}
			regionNCRpoe.close();	%>
			
			<%
			ResultSet totalroxas = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas';");
			String roxastotal = totalroxas.getString("TOTALVOTES");
			totalroxas.close();
			
			ResultSet regionNCRroxas = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
			while (regionNCRroxas.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRroxas.getString("candidacy") %></td>
			    		<td><%= regionNCRroxas.getString("name") %></td>
			    		<td><%= roxastotal %></td>
			    	</tr>
			    <%
			}
			regionNCRroxas.close();	%>
			
			<%
			ResultSet totalhonasan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan';");
			String honasantotal = totalhonasan.getString("TOTALVOTES");
			totalhonasan.close();
			
			ResultSet regionNCRhonasan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
			while (regionNCRhonasan.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRhonasan.getString("candidacy") %></td>
			    		<td><%= regionNCRhonasan.getString("name") %></td>
			    		<td><%= honasantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRhonasan.close();	%>
			
			<%
			ResultSet totaltrillanes = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes';");
			String trillanestotal = totaltrillanes.getString("TOTALVOTES");
			totaltrillanes.close();
			
			ResultSet regionNCRtrillanes = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
			while (regionNCRtrillanes.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRtrillanes.getString("candidacy") %></td>
			    		<td><%= regionNCRtrillanes.getString("name") %></td>
			    		<td><%= trillanestotal %></td>
			    	</tr>
			    <%
			}
			regionNCRtrillanes.close();	%>
			
			<%
			ResultSet totalescudero = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero';");
			String escuderototal = totalescudero.getString("TOTALVOTES");
			totalescudero.close();
			
			ResultSet regionNCRescudero = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
			while (regionNCRescudero.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRescudero.getString("candidacy") %></td>
			    		<td><%= regionNCRescudero.getString("name") %></td>
			    		<td><%= escuderototal %></td>
			    	</tr>
			    <%
			}
			regionNCRescudero.close();	%>
			
			<%
			ResultSet totalrobredo = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo';");
			String robredototal = totalrobredo.getString("TOTALVOTES");
			totalrobredo.close();
			
			ResultSet regionNCRrobredo = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
			while (regionNCRrobredo.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrobredo.getString("candidacy") %></td>
			    		<td><%= regionNCRrobredo.getString("name") %></td>
			    		<td><%= robredototal %></td>
			    	</tr>
			    <%
			}
			regionNCRrobredo.close();	%>
			
			<%
			ResultSet totalmarcos = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos';");
			String marcostotal = totalmarcos.getString("TOTALVOTES");
			totalmarcos.close();
			
			ResultSet regionNCRmarcos = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
			while (regionNCRmarcos.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRmarcos.getString("candidacy") %></td>
			    		<td><%= regionNCRmarcos.getString("name") %></td>
			    		<td><%= marcostotal %></td>
			    	</tr>
			    <%
			}
			regionNCRmarcos.close();	%>
			
			<%
			ResultSet totalalan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano';");
			String alantotal = totalalan.getString("TOTALVOTES");
			totalalan.close();
			
			ResultSet regionNCRalan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
			while (regionNCRmarcos.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalan.getString("candidacy") %></td>
			    		<td><%= regionNCRalan.getString("name") %></td>
			    		<td><%= alantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRalan.close();	%>
			
			<%
			ResultSet totalshariff = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani';");
			String sharifftotal = totalshariff.getString("TOTALVOTES");
			totalshariff.close();
			
			ResultSet regionNCRshariff = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
			while (regionNCRshariff.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRshariff.getString("candidacy") %></td>
			    		<td><%= regionNCRshariff.getString("name") %></td>
			    		<td><%= sharifftotal %></td>
			    	</tr>
			    <%
			}
			regionNCRshariff.close();	%>
			
			<%
			ResultSet totalaldin = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali';");
			String aldintotal = totalaldin.getString("TOTALVOTES");
			totalaldin.close();
			
			ResultSet regionNCRaldin = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
			while (regionNCRaldin.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRaldin.getString("candidacy") %></td>
			    		<td><%= regionNCRaldin.getString("name") %></td>
			    		<td><%= aldintotal %></td>
			    	</tr>
			    <%
			}
			regionNCRaldin.close();	%>
			
			<%
			ResultSet totalalunan = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy';");
			String alunantotal = totalalunan.getString("TOTALVOTES");
			totalalunan.close();
			
			ResultSet regionNCRalunan = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
			while (regionNCRalunan.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalunan.getString("candidacy") %></td>
			    		<td><%= regionNCRalunan.getString("name") %></td>
			    		<td><%= alunantotal %></td>
			    	</tr>
			    <%
			}
			regionNCRalunan.close();	%>
			
			<%
			ResultSet totalambolodto = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina';");
			String ambolodtototal = totalambolodto.getString("TOTALVOTES");
			totalambolodto.close();
			
			ResultSet regionNCRambolodto = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
			while (regionNCRambolodto.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRambolodto.getString("candidacy") %></td>
			    		<td><%= regionNCRambolodto.getString("name") %></td>
			    		<td><%= ambolodtototal %></td>
			    	</tr>
			    <%
			}
			regionNCRambolodto.close();	%>
			
			<%
			ResultSet totalarquiza = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza';");
			String arquizatotal = totalarquiza.getString("TOTALVOTES");
			totalarquiza.close();
			
			ResultSet regionNCRarquiza = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
			while (regionNCRarquiza.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRarquiza.getString("candidacy") %></td>
			    		<td><%= regionNCRarquiza.getString("name") %></td>
			    		<td><%= arquizatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRarquiza.close();	%>
			
			<%
			ResultSet totalbaligod = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod';");
			String baligodtotal = totalbaligod.getString("TOTALVOTES");
			totalbaligod.close();
			
			ResultSet regionNCRbaligod = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
			while (regionNCRbaligod.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbaligod.getString("candidacy") %></td>
			    		<td><%= regionNCRbaligod.getString("name") %></td>
			    		<td><%= baligodtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRbaligod.close();	%>
			
			<%
			ResultSet totalbello = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden';");
			String bellototal = totalbello.getString("TOTALVOTES");
			totalbello.close();
			
			ResultSet regionNCRbello = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
			while (regionNCRbello.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbello.getString("candidacy") %></td>
			    		<td><%= regionNCRbello.getString("name") %></td>
			    		<td><%= bellototal %></td>
			    	</tr>
			    <%
			}
			regionNCRbello.close();	%>
			
			<%
			ResultSet totalcam = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra';");
			String camtotal = totalcam.getString("TOTALVOTES");
			totalcam.close();
			
			ResultSet regionNCRcam = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
			while (regionNCRcam.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRcam.getString("candidacy") %></td>
			    		<td><%= regionNCRcam.getString("name") %></td>
			    		<td><%= camtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRcam.close();	%>
			
			<%
			ResultSet totalnel = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel';");
			String neltotal = totalnel.getString("TOTALVOTES");
			totalnel.close();
			
			ResultSet regionNCRnel = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
			while (regionNCRnel.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRnel.getString("candidacy") %></td>
			    		<td><%= regionNCRnel.getString("name") %></td>
			    		<td><%= neltotal %></td>
			    	</tr>
			    <%
			}
			regionNCRnel.close();	%>
			
			<%
			ResultSet totalneri = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri';");
			String neritotal = totalneri.getString("TOTALVOTES");
			totalneri.close();
			
			ResultSet regionNCRneri = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
			while (regionNCRneri.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRneri.getString("candidacy") %></td>
			    		<td><%= regionNCRneri.getString("name") %></td>
			    		<td><%= neritotal %></td>
			    	</tr>
			    <%
			}
			regionNCRneri.close();	%>
			
			<%
			ResultSet totalleila = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila';");
			String leilatotal = totalleila.getString("TOTALVOTES");
			totalleila.close();
			
			ResultSet regionNCRleila = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
			while (regionNCRleila.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRleila.getString("candidacy") %></td>
			    		<td><%= regionNCRleila.getString("name") %></td>
			    		<td><%= leilatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRleila.close();	%>
			
			<%
			ResultSet totalisko = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno';");
			String iskototal = totalisko.getString("TOTALVOTES");
			totalisko.close();
			
			ResultSet regionNCRisko = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
			while (regionNCRisko.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRisko.getString("candidacy") %></td>
			    		<td><%= regionNCRisko.getString("name") %></td>
			    		<td><%= iskototal %></td>
			    	</tr>
			    <%
			}
			regionNCRisko.close();	%>
			
			<%
			ResultSet totaldorona = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray';");
			String doronatotal = totaldorona.getString("TOTALVOTES");
			totaldorona.close();
			
			ResultSet regionNCRdorona = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
			while (regionNCRdorona.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdorona.getString("candidacy") %></td>
			    		<td><%= regionNCRdorona.getString("name") %></td>
			    		<td><%= doronatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdorona.close();	%>
			
			<%
			ResultSet totaldrilon = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank';");
			String drilontotal = totaldrilon.getString("TOTALVOTES");
			totaldrilon.close();
			
			ResultSet regionNCRdrilon = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
			while (regionNCRdorona.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdrilon.getString("candidacy") %></td>
			    		<td><%= regionNCRdrilon.getString("name") %></td>
			    		<td><%= drilontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdrilon.close();	%>
			
			<%
			ResultSet totalgadon = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry';");
			String gadontotal = totalgadon.getString("TOTALVOTES");
			totalgadon.close();
			
			ResultSet regionNCRgadon = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
			while (regionNCRgadon.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRgadon.getString("candidacy") %></td>
			    		<td><%= regionNCRgadon.getString("name") %></td>
			    		<td><%= gadontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRgadon.close();	%>
			
			<%
			ResultSet totalwin = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win';");
			String wintotal = totalwin.getString("TOTALVOTES");
			totalwin.close();
			
			ResultSet regionNCRwin = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
			while (regionNCRgadon.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRwin.getString("candidacy") %></td>
			    		<td><%= regionNCRwin.getString("name") %></td>
			    		<td><%= wintotal %></td>
			    	</tr>
			    <%
			}
			regionNCRwin.close();	%>
			
			<%
			ResultSet totaldick = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick';");
			String dicktotal = totaldick.getString("TOTALVOTES");
			totaldick.close();
			
			ResultSet regionNCRdick = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
			while (regionNCRdick.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdick.getString("candidacy") %></td>
			    		<td><%= regionNCRdick.getString("name") %></td>
			    		<td><%= dicktotal %></td>
			    	</tr>
			    <%
			}
			regionNCRdick.close();	%>
			
			<%
			ResultSet totalrisa = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa';");
			String risatotal = totalrisa.getString("TOTALVOTES");
			totalrisa.close();
			
			ResultSet regionNCRrisa = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
			while (regionNCRrisa.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrisa.getString("candidacy") %></td>
			    		<td><%= regionNCRrisa.getString("name") %></td>
			    		<td><%= risatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRrisa.close();	%>
			
			<%
			ResultSet totalkabalo = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid';");
			String kabalototal = totalkabalo.getString("TOTALVOTES");
			totalkabalo.close();
			
			ResultSet regionNCRkabalo = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
			while (regionNCRkabalo.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkabalo.getString("candidacy") %></td>
			    		<td><%= regionNCRkabalo.getString("name") %></td>
			    		<td><%= kabalototal %></td>
			    	</tr>
			    <%
			}
			regionNCRkabalo.close();	%>
			
			<%
			ResultSet totalatty = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna';");
			String attytotal = totalatty.getString("TOTALVOTES");
			totalatty.close();
			
			ResultSet regionNCRatty = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
			while (regionNCRatty.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRatty.getString("candidacy") %></td>
			    		<td><%= regionNCRatty.getString("name") %></td>
			    		<td><%= attytotal %></td>
			    	</tr>
			    <%
			}
			regionNCRatty.close();	%>
			
			<%
			ResultSet totalkiram = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel';");
			String kiramtotal = totalkiram.getString("TOTALVOTES");
			totalkiram.close();
			
			ResultSet regionNCRkiram = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
			while (regionNCRkiram.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkiram.getString("candidacy") %></td>
			    		<td><%= regionNCRkiram.getString("name") %></td>
			    		<td><%= kiramtotal %></td>
			    	</tr>
			    <%
			}
			regionNCRkiram.close();	%>
			
			<%
			ResultSet totallorna = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno';");
			String lornatotal = totallorna.getString("TOTALVOTES");
			totallorna.close();
			
			ResultSet regionNCRlorna= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
			while (regionNCRlorna.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlorna.getString("candidacy") %></td>
			    		<td><%= regionNCRlorna.getString("name") %></td>
			    		<td><%= lornatotal %></td>
			    	</tr>
			    <%
			}
			regionNCRlorna.close();	%>
			
			<%
			ResultSet totallacson = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo';");
			String lacsontotal = totallacson.getString("TOTALVOTES");
			totallacson.close();
			
			ResultSet regionNCRlacson= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
			while (regionNCRlacson.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlacson.getString("candidacy") %></td>
			    		<td><%= regionNCRlacson.getString("name") %></td>
			    		<td><%= lacsontotal %></td>
			    	</tr>
			    <%
			}
			regionNCRlacson.close();	%>
    	</tbody>
    	<div class="page-header" style="padding-left: 5%;">
			<h1>Region: NCR</h1>
		</div>
    	<tr>
            <td>
              <button type="button" class="btn">
                Click to City Level
              </button>
            </td>
        </tr>
        <tr id="collapseme" class="collapse out">
        	<td>
        		<div>
        			<%
			ResultSet totalduterte1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte';");
			String dutertetotal1 = totalduterte1.getString("TOTALVOTES");
			totalduterte1.close();
			
			ResultSet regionNCRduterte1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
			while (regionNCRduterte1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRduterte1.getString("candidacy") %></td>
			    		<td><%= regionNCRduterte1.getString("name") %></td>
			    		<td><%= dutertetotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRduterte1.close();	%>
			
			<%
			ResultSet totalbinay1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay';");
			String binaytotal1 = totalbinay1.getString("TOTALVOTES");
			totalbinay1.close();
			
			ResultSet regionNCRbinay1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
			while (regionNCRbinay1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbinay1.getString("candidacy") %></td>
			    		<td><%= regionNCRbinay1.getString("name") %></td>
			    		<td><%= binaytotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRbinay1.close();	%>
			
			<%
			ResultSet totalsantiago1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago';");
			String santiagototal1 = totalsantiago1.getString("TOTALVOTES");
			totalsantiago1.close();
			
			ResultSet regionNCRsantiago1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
			while (regionNCRsantiago1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRsantiago1.getString("candidacy") %></td>
			    		<td><%= regionNCRsantiago1.getString("name") %></td>
			    		<td><%= santiagototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRsantiago1.close();	%>
			
			<%
			ResultSet totalpoe1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe';");
			String poetotal1 = totalpoe1.getString("TOTALVOTES");
			totalpoe1.close();
			
			ResultSet regionNCRpoe1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
			while (regionNCRpoe1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRpoe1.getString("candidacy") %></td>
			    		<td><%= regionNCRpoe1.getString("name") %></td>
			    		<td><%= poetotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRpoe1.close();	%>
			
			<%
			ResultSet totalroxas1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas';");
			String roxastotal1 = totalroxas1.getString("TOTALVOTES");
			totalroxas1.close();
			
			ResultSet regionNCRroxas1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
			while (regionNCRroxas1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRroxas1.getString("candidacy") %></td>
			    		<td><%= regionNCRroxas1.getString("name") %></td>
			    		<td><%= roxastotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRroxas1.close();	%>
			
			<%
			ResultSet totalhonasan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan';");
			String honasantotal1 = totalhonasan1.getString("TOTALVOTES");
			totalhonasan1.close();
			
			ResultSet regionNCRhonasan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
			while (regionNCRhonasan1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRhonasan1.getString("candidacy") %></td>
			    		<td><%= regionNCRhonasan1.getString("name") %></td>
			    		<td><%= honasantotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRhonasan1.close();	%>
			
			<%
			ResultSet totaltrillanes1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes';");
			String trillanestotal1 = totaltrillanes1.getString("TOTALVOTES");
			totaltrillanes1.close();
			
			ResultSet regionNCRtrillanes1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
			while (regionNCRtrillanes1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRtrillanes1.getString("candidacy") %></td>
			    		<td><%= regionNCRtrillanes1.getString("name") %></td>
			    		<td><%= trillanestotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRtrillanes1.close();	%>
			
			<%
			ResultSet totalescudero1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero';");
			String escuderototal1 = totalescudero1.getString("TOTALVOTES");
			totalescudero1.close();
			
			ResultSet regionNCRescudero1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
			while (regionNCRescudero1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRescudero1.getString("candidacy") %></td>
			    		<td><%= regionNCRescudero1.getString("name") %></td>
			    		<td><%= escuderototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRescudero1.close();	%>
			
			<%
			ResultSet totalrobredo1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo';");
			String robredototal1 = totalrobredo1.getString("TOTALVOTES");
			totalrobredo1.close();
			
			ResultSet regionNCRrobredo1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
			while (regionNCRrobredo1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrobredo1.getString("candidacy") %></td>
			    		<td><%= regionNCRrobredo1.getString("name") %></td>
			    		<td><%= robredototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRrobredo1.close();	%>
			
			<%
			ResultSet totalmarcos1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos';");
			String marcostotal1 = totalmarcos1.getString("TOTALVOTES");
			totalmarcos1.close();
			
			ResultSet regionNCRmarcos1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
			while (regionNCRmarcos1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRmarcos1.getString("candidacy") %></td>
			    		<td><%= regionNCRmarcos1.getString("name") %></td>
			    		<td><%= marcostotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRmarcos1.close();	%>
			
			<%
			ResultSet totalalan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano';");
			String alantotal1 = totalalan1.getString("TOTALVOTES");
			totalalan1.close();
			
			ResultSet regionNCRalan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
			while (regionNCRmarcos1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalan1.getString("candidacy") %></td>
			    		<td><%= regionNCRalan1.getString("name") %></td>
			    		<td><%= alantotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRalan1.close();	%>
			
			<%
			ResultSet totalshariff1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani';");
			String sharifftotal1 = totalshariff1.getString("TOTALVOTES");
			totalshariff1.close();
			
			ResultSet regionNCRshariff1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
			while (regionNCRshariff1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRshariff1.getString("candidacy") %></td>
			    		<td><%= regionNCRshariff1.getString("name") %></td>
			    		<td><%= sharifftotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRshariff1.close();	%>
			
			<%
			ResultSet totalaldin1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali';");
			String aldintotal1 = totalaldin1.getString("TOTALVOTES");
			totalaldin1.close();
			
			ResultSet regionNCRaldin1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
			while (regionNCRaldin1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRaldin1.getString("candidacy") %></td>
			    		<td><%= regionNCRaldin1.getString("name") %></td>
			    		<td><%= aldintotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRaldin1.close();	%>
			
			<%
			ResultSet totalalunan1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy';");
			String alunantotal1 = totalalunan1.getString("TOTALVOTES");
			totalalunan1.close();
			
			ResultSet regionNCRalunan1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
			while (regionNCRalunan1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalunan1.getString("candidacy") %></td>
			    		<td><%= regionNCRalunan1.getString("name") %></td>
			    		<td><%= alunantotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRalunan1.close();	%>
			
			<%
			ResultSet totalambolodto1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina';");
			String ambolodtototal1 = totalambolodto1.getString("TOTALVOTES");
			totalambolodto1.close();
			
			ResultSet regionNCRambolodto1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
			while (regionNCRambolodto1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRambolodto1.getString("candidacy") %></td>
			    		<td><%= regionNCRambolodto1.getString("name") %></td>
			    		<td><%= ambolodtototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRambolodto1.close();	%>
			
			<%
			ResultSet totalarquiza1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza';");
			String arquizatotal1 = totalarquiza1.getString("TOTALVOTES");
			totalarquiza1.close();
			
			ResultSet regionNCRarquiza1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
			while (regionNCRarquiza1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRarquiza1.getString("candidacy") %></td>
			    		<td><%= regionNCRarquiza1.getString("name") %></td>
			    		<td><%= arquizatotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRarquiza1.close();	%>
			
			<%
			ResultSet totalbaligod1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod';");
			String baligodtotal1 = totalbaligod1.getString("TOTALVOTES");
			totalbaligod1.close();
			
			ResultSet regionNCRbaligod1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
			while (regionNCRbaligod1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbaligod1.getString("candidacy") %></td>
			    		<td><%= regionNCRbaligod1.getString("name") %></td>
			    		<td><%= baligodtotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRbaligod1.close();	%>
			
			<%
			ResultSet totalbello1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden';");
			String bellototal1 = totalbello1.getString("TOTALVOTES");
			totalbello1.close();
			
			ResultSet regionNCRbello1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
			while (regionNCRbello1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbello1.getString("candidacy") %></td>
			    		<td><%= regionNCRbello1.getString("name") %></td>
			    		<td><%= bellototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRbello1.close();	%>
			
			<%
			ResultSet totalcam1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra';");
			String camtotal1 = totalcam1.getString("TOTALVOTES");
			totalcam1.close();
			
			ResultSet regionNCRcam1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
			while (regionNCRcam1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRcam1.getString("candidacy") %></td>
			    		<td><%= regionNCRcam1.getString("name") %></td>
			    		<td><%= camtotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRcam1.close();	%>
			
			<%
			ResultSet totalnel1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel';");
			String neltotal1 = totalnel1.getString("TOTALVOTES");
			totalnel1.close();
			
			ResultSet regionNCRnel1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
			while (regionNCRnel1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRnel1.getString("candidacy") %></td>
			    		<td><%= regionNCRnel1.getString("name") %></td>
			    		<td><%= neltotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRnel1.close();	%>
			
			<%
			ResultSet totalneri1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri';");
			String neritotal1 = totalneri1.getString("TOTALVOTES");
			totalneri1.close();
			
			ResultSet regionNCRneri1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
			while (regionNCRneri1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRneri1.getString("candidacy") %></td>
			    		<td><%= regionNCRneri1.getString("name") %></td>
			    		<td><%= neritotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRneri1.close();	%>
			
			<%
			ResultSet totalleila1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila';");
			String leilatotal1 = totalleila1.getString("TOTALVOTES");
			totalleila1.close();
			
			ResultSet regionNCRleila1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
			while (regionNCRleila1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRleila1.getString("candidacy") %></td>
			    		<td><%= regionNCRleila1.getString("name") %></td>
			    		<td><%= leilatotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRleila1.close();	%>
			
			<%
			ResultSet totalisko1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno';");
			String iskototal1 = totalisko1.getString("TOTALVOTES");
			totalisko1.close();
			
			ResultSet regionNCRisko1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
			while (regionNCRisko1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRisko1.getString("candidacy") %></td>
			    		<td><%= regionNCRisko1.getString("name") %></td>
			    		<td><%= iskototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRisko1.close();	%>
			
			<%
			ResultSet totaldorona1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray';");
			String doronatotal1 = totaldorona1.getString("TOTALVOTES");
			totaldorona1.close();
			
			ResultSet regionNCRdorona1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
			while (regionNCRdorona1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdorona1.getString("candidacy") %></td>
			    		<td><%= regionNCRdorona1.getString("name") %></td>
			    		<td><%= doronatotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRdorona1.close();	%>
			
			<%
			ResultSet totaldrilon1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank';");
			String drilontotal1 = totaldrilon1.getString("TOTALVOTES");
			totaldrilon1.close();
			
			ResultSet regionNCRdrilon1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
			while (regionNCRdorona1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdrilon1.getString("candidacy") %></td>
			    		<td><%= regionNCRdrilon1.getString("name") %></td>
			    		<td><%= drilontotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRdrilon1.close();	%>
			
			<%
			ResultSet totalgadon1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry';");
			String gadontotal1 = totalgadon1.getString("TOTALVOTES");
			totalgadon1.close();
			
			ResultSet regionNCRgadon1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
			while (regionNCRgadon1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRgadon1.getString("candidacy") %></td>
			    		<td><%= regionNCRgadon1.getString("name") %></td>
			    		<td><%= gadontotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRgadon1.close();	%>
			
			<%
			ResultSet totalwin1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win';");
			String wintotal1 = totalwin1.getString("TOTALVOTES");
			totalwin1.close();
			
			ResultSet regionNCRwin1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
			while (regionNCRgadon1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRwin1.getString("candidacy") %></td>
			    		<td><%= regionNCRwin1.getString("name") %></td>
			    		<td><%= wintotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRwin1.close();	%>
			
			<%
			ResultSet totaldick1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick';");
			String dicktotal1 = totaldick1.getString("TOTALVOTES");
			totaldick1.close();
			
			ResultSet regionNCRdick1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
			while (regionNCRdick1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdick1.getString("candidacy") %></td>
			    		<td><%= regionNCRdick1.getString("name") %></td>
			    		<td><%= dicktotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRdick1.close();	%>
			
			<%
			ResultSet totalrisa1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa';");
			String risatotal1 = totalrisa1.getString("TOTALVOTES");
			totalrisa1.close();
			
			ResultSet regionNCRrisa1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
			while (regionNCRrisa1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrisa1.getString("candidacy") %></td>
			    		<td><%= regionNCRrisa1.getString("name") %></td>
			    		<td><%= risatotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRrisa1.close();	%>
			
			<%
			ResultSet totalkabalo1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid';");
			String kabalototal1 = totalkabalo1.getString("TOTALVOTES");
			totalkabalo1.close();
			
			ResultSet regionNCRkabalo1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
			while (regionNCRkabalo1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkabalo1.getString("candidacy") %></td>
			    		<td><%= regionNCRkabalo1.getString("name") %></td>
			    		<td><%= kabalototal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRkabalo1.close();	%>
			
			<%
			ResultSet totalatty1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna';");
			String attytotal1 = totalatty1.getString("TOTALVOTES");
			totalatty1.close();
			
			ResultSet regionNCRatty1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
			while (regionNCRatty1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRatty1.getString("candidacy") %></td>
			    		<td><%= regionNCRatty1.getString("name") %></td>
			    		<td><%= attytotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRatty1.close();	%>
			
			<%
			ResultSet totalkiram1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel';");
			String kiramtotal1 = totalkiram1.getString("TOTALVOTES");
			totalkiram1.close();
			
			ResultSet regionNCRkiram1 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
			while (regionNCRkiram1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkiram1.getString("candidacy") %></td>
			    		<td><%= regionNCRkiram1.getString("name") %></td>
			    		<td><%= kiramtotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRkiram1.close();	%>
			
			<%
			ResultSet totallorna1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno';");
			String lornatotal1 = totallorna1.getString("TOTALVOTES");
			totallorna1.close();
			
			ResultSet regionNCRlorna1= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
			while (regionNCRlorna1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlorna1.getString("candidacy") %></td>
			    		<td><%= regionNCRlorna1.getString("name") %></td>
			    		<td><%= lornatotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRlorna1.close();	%>
			
			<%
			ResultSet totallacson1 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo';");
			String lacsontotal1 = totallacson1.getString("TOTALVOTES");
			totallacson1.close();
			
			ResultSet regionNCRlacson1= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
			while (regionNCRlacson1.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlacson1.getString("candidacy") %></td>
			    		<td><%= regionNCRlacson1.getString("name") %></td>
			    		<td><%= lacsontotal1 %></td>
			    	</tr>
			    <%
			}
			regionNCRlacson1.close();	%>
        		</div>
        	</td>
        </tr>
	</table>
</div>

</body>
</html>