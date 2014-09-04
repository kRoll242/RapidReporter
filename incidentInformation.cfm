<cfoutput>
	<cfinclude template="Includes/header.cfm">
	<cfif isDefined("URL.registered") AND URL.registered>
		Registration Successful!<br/>
	</cfif>
	Answer the claims questions below using the police report whenever applicable:
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td>Approximately what time of day did this accident occur?</td>
			<td><input type="text" name="incidentTime" value=""></td>
		</tr>
		<tr>
			<td>Who was driving the insured's vehicle?</td>
			<td>Name <input type="text" name="incidentTime" value=""> Lic Num <input type="text" name="incidentTime" value=""> DOB <input type="text" name="incidentTime" value=""></td>
		</tr>
		<tr>
			<td>Where did the accident take place?</td>
			<td>Street Name <input type="text" name="incidentTime" value=""></td>
		</tr>
		<tr>
			<td>City, State ZipCode:</td>
			<td><input type="text" name="city" value="">, <input type="text" name="stateShort" value=""> <input type="text" name="zipCode" value=""></td>
		</tr>
		<tr>
			<td>Please describe in as much detail as possible what occurred:</td>
			<td><textarea name="comments" cols="25" rows="5">
			Enter your comments here...
			</textarea></td>
		</tr>
		<tr>
			<td>What is the name of the police department listed on the report?</td>
			<td><input type="text" name="incidentTime" value=""></td>
		</tr>
		<tr>
			<td>What is the name of the police officer who took the report?</td>
			<td><input type="text" name="incidentTime" value=""></td>
		</tr>
		<tr>
			<td>Where any citations issued?</td>
			<td><input type="text" name="incidentTime" value=""></td>
		</tr>
	</table>
	<input type="hidden" name="nextAction" value="newClaimant">
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>