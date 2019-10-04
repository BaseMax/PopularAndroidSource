package cab.snapp.passenger.data_access_layer.network.requests.oauth;

import cab.snapp.passenger.data_access_layer.network.a;
import java.util.HashMap;

public class OAuthLoginWithPhoneToken extends OAuthBaseBody {
    private OAuthLoginWithPhoneToken() {
    }

    public OAuthLoginWithPhoneToken(String str, String str2) {
        setPhoneNumber(str);
        setToken(str2);
        setGrantType();
        setClientId();
        setClientSecret();
    }

    private void setPhoneNumber(String str) {
        this.bodyHashMap.put("cellphone", str);
    }

    private void setToken(String str) {
        this.bodyHashMap.put("token", str);
    }

    /* access modifiers changed from: package-private */
    public void setGrantType() {
        this.bodyHashMap.put("grant_type", "sms");
    }

    /* access modifiers changed from: package-private */
    public void setClientId() {
        this.bodyHashMap.put("client_id", a.getClientId());
    }

    /* access modifiers changed from: package-private */
    public void setClientSecret() {
        this.bodyHashMap.put("client_secret", a.getClientSecret());
    }

    public HashMap<String, String> getBody() {
        return this.bodyHashMap;
    }
}
