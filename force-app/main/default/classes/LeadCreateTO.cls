public with sharing class LeadCreateTO {
    
    public String eventName;
    public String firstName;
    public String lastName;    
    public String mobilePhone;
    public String leadSource;
    public String company;
    public String status;
    
    public static LeadCreateTO parse(String json) {
        return (LeadCreateTO) System.JSON.deserialize(json, LeadCreateTO.class);
    }
    
}