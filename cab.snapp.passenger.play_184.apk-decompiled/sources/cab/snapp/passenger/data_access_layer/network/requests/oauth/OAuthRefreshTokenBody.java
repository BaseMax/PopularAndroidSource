package cab.snapp.passenger.data_access_layer.network.requests.oauth;

import cab.snapp.authenticator.c;
import cab.snapp.passenger.data_access_layer.network.a;
import java.util.HashMap;

public class OAuthRefreshTokenBody extends OAuthBaseBody {
    private c snappAccountManager;

    public OAuthRefreshTokenBody(c cVar) {
        this.snappAccountManager = cVar;
        setRefreshToken();
        setGrantType();
        setClientId();
        setClientSecret();
    }

    private void setRefreshToken() {
        this.bodyHashMap.put("refresh_token", this.snappAccountManager.getRefreshToken());
    }

    /* access modifiers changed from: package-private */
    public void setGrantType() {
        this.bodyHashMap.put("grant_type", "refresh_token");
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
