public with sharing class TOTPFlowAction {

    @InvocableMethod(label='Get TOTP code for current user' description='Returns a list of TOTP codes for the current user.' category='TOTP')
    public static List<String> getCodes() {
        // use current userId as key
        final String key = UserInfo.getUserId();
        final Integer DIGITS = 6;
        final String ALGO = 'hmacsha1';
        final List<String> codes = TOTP.generateCodes(key, System.now().getTime(), DIGITS, ALGO);
              
        // return
        List<String> result = new List<String>();
        result.add(codes[0]);
        return result;
    }
}