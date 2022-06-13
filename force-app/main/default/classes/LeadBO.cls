public class LeadBO {
    
    public static final LeadBO instance = new LeadBO();

    public static LeadBO getInstance() {
		return instance;
    }
    
    public static Lead createLeadIntegration(LeadCreateTO leadTO, String jsonString){

        Lead objLead = new Lead(
			FirstName = leadTO.firstName,
			LastName = leadTO.lastName,
			MobilePhone = leadTO.mobilePhone,
			Company = leadTO.company,
			Status = leadTO.status            
        );

        System.debug('Foi criado um novo lead: ' + objLead);

        insert objLead;
        return objLead;

    }
    
}