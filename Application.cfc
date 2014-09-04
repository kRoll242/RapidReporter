component
	output="false"
{

this.name = "RapidReporter";
this.sessionmanagement = true;
this.sessionTimeout = createTimespan(0,0,40,0);
this.clientManagement = true;

/**
  * Hint: OnApplicationStart
  */
public boolean function OnApplicationStart()
{

	return true;
}

/**
  * Hint: OnApplicationEnd
  */
public void function OnApplicationEnd(required struct applicationScope)
{

}

/**
  * Hint: Fires when the session is first created.
  */
public void function OnSessionStart()
	output="false"
{
	CreateInsuredData();
	return;
}

/**
  * Hint: Fires when the session is first created.
  */
public void function CreateInsuredData()
	output="false"
{
	Session.insured.insuredName = "John Doe";
	Session.insured.licenseNum = "1234567";
	Session.insured.phone = "444-484-5794";
	Session.insured.mobilePhone = "444-484-5795";
	Session.insured.businessPhone = "444-484-5796";
	Session.insured.email = "john.doe@gmail.com";
	Session.insured.vehicle.vehicleVIN = "1N4AB41DXXC720881";
	Session.insured.vehicle.year = 1999;
	Session.insured.vehicle.make = "Nissan";
	Session.insured.vehicle.model = "Sentra";
	Session.insured.driver.name = "John Doe";
	
	return;
}


/**
  * Hint: Fires when the session ends.
  */
public void function onSessionEnd(required struct sessionScope, struct applicationScope)
	output = "false"
{
	structClear(session);
}

/**
  * Hint: OnRequestStart
  */
public boolean function OnRequestStart(required string targetPage)
{
	if (structKeyExists(URL, "init") && structFind(URL, "init") == 8899) {
			onApplicationStart();
			CreateInsuredData();	
	}


	if (!ValidateSession()) {
		cookie.varses = 1;
		OnSessionStart();
	}

	return true;
}

/**
  * Hint: OnRequest
  * @changeLog1 @author Peruz Carlsen @changeDate 20111026 @description added rc variable
  */
public void function OnRequest(required string targetPage)
{
	include "#arguments.targetPage#";
}

/**
  * Hint: OnRequestEnd
  */
public void function OnRequestEnd(required string targetPage)
{
	return;
}

/**
  * Hint: OnError
  */
public void function onError2(required exception, required string eventName)
{
	throw(object=exception);
}

/**
  * Hint: OnMissingTemplate
  */
public boolean function OnMissingTemplate(required string targetPage)
{
	return true;
}

private boolean function ValidateSession() {
	return StructKeyExists(cookie, "varses");
}

}
