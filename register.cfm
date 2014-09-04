<cfoutput>
	<cfinclude template="Includes/header.cfm">
	Create a username, password and enter your contact information to register:
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td>Username:</td>
			<td><input type="text" name="userName" value=""></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password" value=""></td>
		</tr>
		<tr>
			<td>First Name:</td>
			<td><input type="text" name="fName" value=""></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input type="text" name="lName" value=""></td>
		</tr>
		<tr>
			<td>Date of Birth:</td>
			<td><input type="text" name="DOB" value=""></td>			
		</tr>
		<tr>
			<td>Mailing Street Address</td>
			<td><input type="text" name="address1" value=""></td>
		</tr>
		<tr>
			<td>City, State ZipCode:</td>
			<td><input type="text" name="city" value="">, <input type="text" name="stateShort" value=""> <input type="text" name="zipCode" value=""></td>
		</tr>
	</table>
	<input type="hidden" name="nextAction" value="registrationSuccessful">
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>