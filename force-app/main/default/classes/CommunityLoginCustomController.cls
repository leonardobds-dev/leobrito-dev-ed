/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-24-2020
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   10-24-2020   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class CommunityLoginCustomController {
    @AuraEnabled
    public static String getDetails(String username, String password){ 
        List<Contact> lstContact = [SELECT Id FROM Contact Limit 1];
        if(lstContact.size() == 0){
           return '1|Usuário não existe'; 
        }
        else{
            // if(lstContact[0].Password__c == password){
            //     return '0|Login efetuado com sucesso';

            //     //REGRA DE LOGIN COM USUARIO UNICO
            // }
            // else{
            //     return '2|Usuário e/ou Senha inválida.';
            // }
            return '';
        }
    }
}