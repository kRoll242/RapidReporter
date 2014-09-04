<cfoutput>
	<cfinclude template="Includes/header.cfm">
	Please enter the following information from your police report to start a new claim:
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td>Date of Incident</td>
			<td><input type="text" name="incidentDate" value=""></td>
		</tr>
		<tr>
			<td>Policy ##</td>
			<td><input type="text" name="policyNum" value=""></td>
		</tr>
		<tr>
			<td>Insured Name</td>
			<td><input type="text" name="insuredName" value=""></td>
		</tr>
		<tr>
			<td>Insured Vehicle VIN</td>
			<td><input type="text" name="vehicleVin" value=""></td>
		</tr>
	</table>
	<input type="hidden" name="nextAction" value="verifyPolicy">
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>