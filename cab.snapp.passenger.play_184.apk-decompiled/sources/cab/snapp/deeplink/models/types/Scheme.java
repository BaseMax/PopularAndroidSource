package cab.snapp.deeplink.models.types;

import com.adjust.sdk.Constants;

public enum Scheme {
    Snapp("snapp"),
    SnappDriver("snappdriver"),
    HTTPS(Constants.SCHEME),
    Geo("geo");
    

    /* renamed from: a  reason: collision with root package name */
    private String f242a;

    private Scheme(String str) {
        this.f242a = str;
    }

    public final String getValue() {
        return this.f242a;
    }
}
