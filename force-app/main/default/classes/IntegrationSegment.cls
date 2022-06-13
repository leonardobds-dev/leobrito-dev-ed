@RestResource(urlMapping='/IntegrationSegment/*')
global without sharing class IntegrationSegment {
    
    @HttpPost
    global static void handleEvent() {
        
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        
        String jsonString = request.requestBody.toString();
        
        IntegrationSegmentResponseTO receiver = (IntegrationSegmentResponseTO) JSON.deserialize(jsonString, IntegrationSegmentResponseTO.class);
        
        try{
            
            if(receiver.eventName == 'LeadCreate'){
                
                LeadCreateTO leadTO = (LeadCreateTO) JSON.deserialize(jsonString, LeadCreateTO.class);
                Lead objLead = LeadBO.createLeadIntegration(leadTO, jsonString);
                
            }            
        }catch(Exception ex){
            //throw new Exception();
        }
    }
    
    @HttpGet
    global static Lead getLead(){
        
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        
        Lead objLead = new Lead();
        
        String jsonString = request.requestBody.toString();        
        return objLead;
    }
}