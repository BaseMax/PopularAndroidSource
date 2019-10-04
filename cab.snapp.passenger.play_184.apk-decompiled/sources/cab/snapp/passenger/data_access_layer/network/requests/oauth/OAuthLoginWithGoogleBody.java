package cab.snapp.passenger.data_access_layer.network.requests.oauth;

import cab.snapp.passenger.data_access_layer.network.a;
import java.util.HashMap;

public class OAuthLoginWithGoogleBody extends OAuthBaseBody {
    private OAuthLoginWithGoogleBody() {
    }

    public OAuthLoginWithGoogleBody(String str) {
        setGoogleToken(str);
        setFcmEnabled();
        setGrantType();
        setClientId();
        setClientSecret();
    }

    private void setGoogleToken(String str) {
        this.bodyHashMap.put("google_token", str);
    }

    private void setFcmEnabled() {
        this.bodyHashMap.put("fcm_enabled", "true");
    }

    /* access modifiers changed from: package-private */
    public void setGrantType() {
        this.bodyHashMap.put("grant_type", "login_google");
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
