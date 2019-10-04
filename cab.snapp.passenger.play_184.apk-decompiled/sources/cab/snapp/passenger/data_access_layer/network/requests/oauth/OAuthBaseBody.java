package cab.snapp.passenger.data_access_layer.network.requests.oauth;

import cab.snapp.passenger.data_access_layer.network.a;
import java.util.HashMap;

public abstract class OAuthBaseBody {
    HashMap<String, String> bodyHashMap = initHashMap();

    /* access modifiers changed from: package-private */
    public abstract HashMap<String, String> getBody();

    /* access modifiers changed from: package-private */
    public abstract void setClientId();

    /* access modifiers changed from: package-private */
    public abstract void setClientSecret();

    /* access modifiers changed from: package-private */
    public abstract void setGrantType();

    private HashMap<String, String> initHashMap() {
        return a.getSecureDeviceIdHeader();
    }
}
