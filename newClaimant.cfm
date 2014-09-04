<cfoutput>
	<cfinclude template="Includes/header.cfm">
	Answer the claimant questions below using the police report whenever applicable:
	<form name="indexForm" action="nextAction.cfm">
	<table>
		<tr>
			<td>Were you the driver or passenger?</td>
			<td>Driver: <input type="radio" name="individualType" value="1"> Passenger: <input type="radio" name="individualType" value="1"></td>
		</tr>
		<tr>
			<td>What is your home phone?</td>
			<td><input type="text" name="claimantPhone" value=""></td>
		</tr>
		<tr>
			<td>What is your drivers license number?</td>
			<td><input type="text" name="claimantLicenseNum" value=""></td>
		</tr>
		<tr>
			<td>Were you injured?</td>
			<td>Yes <input type="radio" name="individualType" value="1"> No <input type="radio" name="individualType" value="0"></td>
		</tr>
		<tr>
			<td>Please describe in as much detail any injuries you have sustained:</td>
			<td><textarea name="comments" cols="25" rows="5">
			Enter your comments here...
			</textarea></td>
		</tr>
		<tr>
			<td>Was the vehicle you were riding in damaged in this accident?</td>
			<td>Yes <input type="radio" name="individualType" value="1"> No <input type="radio" name="individualType" value="0"></td>
		</tr>
		<tr>
			<td>Please describe in as much detail any damage your vehicle incurred:</td>
			<td><textarea name="comments" cols="25" rows="5">
			Enter your comments here...
			</textarea></td>
		</tr>
		<tr>
			<td>Please provide the your vehicle  information</td>
			<td>Yes <input type="radio" name="individualType" value="1"> No <input type="radio" name="individualType" value="0"></td>
		</tr>
		<tr>
			<td>Please describe in as much detail any damage your vehicle incurred:</td>
			<td><textarea name="comments" cols="25" rows="5">
			Enter your comments here...
			</textarea></td>
		</tr>
		<tr>
			<td>Are you insured?</td>
			<td>Yes <input type="radio" name="claimantInsured" value="1"> No <input type="radio" name="claimantInsured" value="0"></td>
		</tr>
		<tr>
			<td>If you are insured, who is your insurance company and what is your policy number</td>
			<td>Company <input type="text" name="claimantInsuranceCompany" value=""> Policy ## <input type="radio" name="claimantPolicyNum" value=""></td>
		</tr>
	</table>
	<input type="hidden" name="nextAction" value="newClaimant">
	<input type="submit" value="Continue">
	</form> 
	<cfinclude template="Includes/footer.cfm">
</cfoutput>