public with sharing class ICEPWS {
    
    public static String returnWS(String CEP){
        
        Http http = new Http();
        HttpRequest httpReq = new HttpRequest();
        HttpResponse httpResp = new HttpResponse();
        CepTO cepWS = new CepTO();
        String retornoWS = null;
        
        httpReq.setMethod('GET');
		httpReq.setTimeout(30000);
        httpReq.setEndPoint('https://viacep.com.br/ws/' + CEP + '/json/');
        
        httpResp = http.send(httpReq);
        
        if(httpResp.getStatusCode() == 200){
            retornoWS = httpResp.getBody();
        }else{            
            retornoWS = 'ERRO';
        }
        
        return retornoWS;
    }
}