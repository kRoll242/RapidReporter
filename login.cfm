<cfoutput>
	<cfinclude template="Includes/header.cfm">
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td>Username</td>
			<td><input type="text" name="userName" value=""></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" value=""></td>
		</tr>
	</table>
	<input type="hidden" name="nextAction" value="beginClaim">
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>