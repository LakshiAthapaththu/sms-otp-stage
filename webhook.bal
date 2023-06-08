import ballerinax/trigger.asgardeo;
import ballerina/http;
import ballerina/log;

configurable asgardeo:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener asgardeo:Listener webhookListener =  new(config,httpListener);

service asgardeo:RegistrationService on webhookListener {
  
    remote function onAddUser(asgardeo:AddUserEvent event ) returns error? {
      //Not Implemented
      log:printInfo("--- event log started ---");
      log:printInfo(event.toJsonString());
      log:printInfo("--- event log ended ---");
    }
    remote function onConfirmSelfSignup(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
      log:printInfo("--- event log started ---");
      log:printInfo(event.toJsonString());
      log:printInfo("--- event log ended ---");
    }
    remote function onAcceptUserInvite(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
      log:printInfo("--- event log started ---");
      log:printInfo(event.toJsonString());
      log:printInfo("--- event log ended ---");
    }
}

service /ignore on httpListener {}
