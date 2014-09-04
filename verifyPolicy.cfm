<cfoutput>
	<cfinclude template="Includes/header.cfm">
	Success!
	<br/>
	We have verified the policy information entered. If you already have a claims login, click login below. 
	Otherwise please click the register button to register and continue with your claims entry.
	<br/>
	<form name="verifyForm" action="nextAction.cfm">
	<input type="submit" name="nextAction" value="Login">
	<input type="submit" name="nextAction" value="Register">
	</form>	 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>