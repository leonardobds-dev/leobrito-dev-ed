public class PhoneVerificationAPI {
    
    public static PhoneResponse InvokeVeriphoneAPI(string mobileNum){
        
        System.debug('>>>> InvokeVeriphoneAPI: ');
        
        string apiKey = 'DD71BCE3F2FB4EC981543F37F7E78A99';
        string veriphoneEndPoint = 'https://api.veriphone.io/v2/verify?phone='+mobileNum+'&key='+apiKey;
        
        //http
        Http h = new Http();        
        
        //HttpRequest
        HttpRequest req = new HttpRequest();
        req.setEndpoint(veriphoneEndPoint);
        req.setMethod('GET');
        req.setTimeout(60000);
        
        //HttpResponse
        HttpResponse res = h.send(req);
        
        //Response instance to return to calling class
        
        System.debug('>>>> BODY: ' + res.getBody());
        PhoneResponse pres = (PhoneResponse)JSON.deserialize(res.getBody(), PhoneResponse.class);
        return pres;
    }
    
    public class PhoneResponse{
        public string status;
        public string phone;
        public boolean phone_valid;
        public string phone_type;
        public string phone_region;
        public string country;
        public string country_code;
        public string country_prefix;
        public string international_number;
        public string local_number;
        public string e164;
        public string carrier;
    }

}