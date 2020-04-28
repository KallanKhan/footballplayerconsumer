<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="eu.dataaccess.footballpool.util.PlayerIntegration,
	org.footballplayerService.FootballPlayerServiceApp,
	 eu.dataaccess.footballpool.TPlayerName, java.util.List"
	pageEncoding="ISO-8859-1"%>
<%
	List<TPlayerName> plists = FootballPlayerServiceApp.getPlayer();
%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
	height: 500px;
	overflow-y: scroll;
}
</style>
</head>
<body>
	<%-- <%
List<TPlayerName> pLists =   PlayerIntegration.getTPlayerName();
for(TPlayerName tPlayerName:pLists){
	%>
	<%=tPlayerName.getSName() %>
<% }
%> --%>



	<table align="center">


		<thead>
			<tr>
				<th>Country</th>
				<th>Player</th>
				<th>TeamCoachName</th>
			</tr>
		</thead>
		<tbody>

			<%
				for (TPlayerName player : plists) {
			%>
			
			<tr>
				<td nowrap="nowrap"><%=player.getSCountryName() %></td>
				
				<td nowrap="nowrap"><%=player.getSName() %></td>
				<td nowrap="nowrap"><%=player.getIId() %></td>
			</tr>

			<%
				}
			%>



		</tbody>
	</table>


</body>
</html>