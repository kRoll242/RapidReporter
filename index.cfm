<cfoutput>
	<cfinclude template="Includes/header.cfm">
	Welcome to PTS Rapid Reporter!
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td><input type="radio" name="nextAction" value="startNewClaim"></td>
			<td>Start a New Claim.</td>
		</tr>
		<tr>
			<td><input type="radio" name="nextAction" value="getClaimStatus"></td>
			<td>Check Status of an Existing Claim.</td>
		</tr>
	</table>
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>