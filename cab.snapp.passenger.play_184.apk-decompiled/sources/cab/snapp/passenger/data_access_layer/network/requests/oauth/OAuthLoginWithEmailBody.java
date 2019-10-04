package cab.snapp.passenger.data_access_layer.network.requests.oauth;

import cab.snapp.passenger.data_access_layer.network.a;
import java.util.HashMap;

public class OAuthLoginWithEmailBody extends OAuthBaseBody {
    private OAuthLoginWithEmailBody() {
    }

    public OAuthLoginWithEmailBody(String str, String str2) {
        setUsername(str);
        setPassword(str2);
        setGrantType();
        setClientId();
        setClientSecret();
    }

    private void setUsername(String str) {
        this.bodyHashMap.put("username", str);
    }

    private void setPassword(String str) {
        this.bodyHashMap.put("password", str);
    }

    /* access modifiers changed from: package-private */
    public void setGrantType() {
        this.bodyHashMap.put("grant_type", "password");
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
