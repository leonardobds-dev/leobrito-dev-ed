public class CepController {
    
    @AuraEnabled
    public static String getCepWS(String CEP){
        return ICEPWS.returnWS(CEP);
    }
    
    @AuraEnabled
    public static String salvar(CepTO cepCobranca, CepTo cepEntrega){        

        CepTO cobranca = cepCobranca;
        CepTO entrega = cepEntrega;
        
        Account conta = new Account();
        conta.Name = 'Zap Imóveis';
        conta.BillingCity = cobranca.localidade;
        conta.BillingStreet = cobranca.logradouro;
        conta.BillingPostalCode = cobranca.cep;
        
        conta.ShippingCity = entrega.localidade;
        conta.ShippingStreet = entrega.logradouro;
        conta.ShippingPostalCode = entrega.cep;  
        insert conta;    
        
        return conta.Name;
    }
    
    /*
    public static void salvarCep(CepTO cepCobranca, CepTo cepEntrega){        
        try{
            
            CepTO cobranca = cepCobranca;
            CepTO entrega = cepEntrega;
            
            Account conta = new Account();
            conta.Name = 'Zap Imóveis';
            conta.BillingCity = cobranca.localidade;
            conta.BillingStreet = cobranca.logradouro;
            conta.BillingPostalCode = cobranca.cep;
            
            conta.ShippingCity = entrega.localidade;
            conta.ShippingStreet = entrega.logradouro;
            conta.ShippingPostalCode = entrega.cep;   
            
            CepBO.getInstance().inserirCep(conta);
                
        }catch(Exception e){
            System.debug('>>>>: ERRO: ' + e.getMessage());
        }
    }
	*/
}