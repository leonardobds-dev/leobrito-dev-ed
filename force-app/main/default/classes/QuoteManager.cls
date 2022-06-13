/**
 * @description       : 
 * @author            : leonardo.bds.desenv@gmail.com
 * @group             : 
 * @last modified on  : 05-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class QuoteManager {
    @InvocableMethod(label='deleteNonAcceptedQuote' description='Delete Non Accepted Quote')
    public static void deleteNonAcceptedQuote(List<String> oppId) {
        List<Quote> Qlist = [SELECT Id FROM Quote WHERE OpportunityId =: oppId AND Status != 'Accepted'];
        if(Qlist != null && Qlist.size() > 0){
            delete Qlist;
        }
    }

}