public class PhoneVerificationAPIController {
    
    @InvocableMethod(Label='Verify Mobile No' description='Makes API Call to PhoneVerification API')
    public static List<Boolean> verifyPhoneNumber(List<String> mobileNumbers){
        PhoneVerificationAPI.PhoneResponse mobileNumberResponse = PhoneVerificationAPI.InvokeVeriphoneAPI(mobileNumbers[0]);
        return new List<Boolean> { mobileNumberResponse.phone_valid };
    }
    
}