<cfquery name="qNew" datasource="reg">
	SELECT		*
	FROM		Employees
	ORDER BY	last_name ASC
</cfquery>

<cfquery name="QoQ" dbtype="query">
	SELECT		*
	FROM		qNew
	WHERE		first_name = '%ed' AND	Country = '%land'
	ORDER BY	last_name DESC
</cfquery>

<table>
	<tr>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Country</td>
		<td>Employee ID</td>
	</tr>
	<cfoutput>
		<tr>
			<td>#QoQ.first_name#</td>
			<td>#QoQ.last_name#</td>
			<td>#QoQ.Country#</td>
			<td>#QoQ.Employee_ID#</td>
		</tr>
	</cfoutput>
</table>	
