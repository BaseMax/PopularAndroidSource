package com.adjust.sdk;

import java.util.HashMap;
import java.util.Map;

public class SessionParameters {
    Map<String, String> callbackParameters;
    Map<String, String> partnerParameters;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SessionParameters sessionParameters = (SessionParameters) obj;
        return Util.equalObject(this.callbackParameters, sessionParameters.callbackParameters) && Util.equalObject(this.partnerParameters, sessionParameters.partnerParameters);
    }

    public int hashCode() {
        return ((Util.hashObject(this.callbackParameters) + 629) * 37) + Util.hashObject(this.partnerParameters);
    }

    public SessionParameters deepCopy() {
        SessionParameters sessionParameters = new SessionParameters();
        Map<String, String> map = this.callbackParameters;
        if (map != null) {
            sessionParameters.callbackParameters = new HashMap(map);
        }
        Map<String, String> map2 = this.partnerParameters;
        if (map2 != null) {
            sessionParameters.partnerParameters = new HashMap(map2);
        }
        return sessionParameters;
    }
}
