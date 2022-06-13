public with sharing class IntegrationSegmentResponseTO {
    
    public String eventName;
    
    public static IntegrationSegmentResponseTO parse(String json) {
        return (IntegrationSegmentResponseTO) System.JSON.deserialize(json, IntegrationSegmentResponseTO.class);
    }
    
}