<cfscript>
	if (URL.nextAction IS "startNewClaim"){
		location(url="startNewClaim.cfm");		
	} else if (URL.nextAction IS "getClaimStatus"){
		location(url="login.cfm?existingClaim=true");
	} else if (URL.nextAction IS "verifyPolicy"){
		location(url="verifyPolicy.cfm");
	} else if (URL.nextAction IS "login"){
		location(url="login.cfm?newClaim=true");		
	} else if (URL.nextAction IS "register"){
		location(url="register.cfm");	
	} else if (URL.nextAction IS "beginClaim"){
		location(url="beginClaim.cfm");	
	} else if (URL.nextAction IS "registrationSuccessful"){
		location(url="incidentInformation.cfm?registered=true");
	} else if (URL.nextAction IS "newClaimant"){
		location(url="newClaimant.cfm");					
	} else {
		location(url="error.cfm");		
	}
</cfscript>