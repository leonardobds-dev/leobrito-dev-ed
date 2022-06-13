@isTest
public class CepControllerTest {
    static testMethod void CriarConta(){
        
		Account conta = new Account();
        conta.Name = 'Zap Imóveis';
        conta.BillingCity = 'São Paulo';
        conta.BillingStreet = 'Rua Vergueiro';
        conta.BillingPostalCode = '01504-001';
        
        conta.ShippingCity = 'Avenida Francisco Matarazzo';
        conta.ShippingStreet = 'São Paulo';
        conta.ShippingPostalCode = '05001-100';
        
        CepBO.getInstance().inserirCep(conta);
    }
}