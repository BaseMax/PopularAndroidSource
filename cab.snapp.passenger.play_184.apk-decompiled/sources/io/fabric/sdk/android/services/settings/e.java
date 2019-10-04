package io.fabric.sdk.android.services.settings;

public final class e {
    public static final String STATUS_ACTIVATED = "activated";
    public static final String STATUS_CONFIGURED = "configured";
    public static final String STATUS_NEW = "new";
    public final c icon;
    public final String identifier;
    public final String reportsUrl;
    public final String status;
    public final boolean updateRequired;
    public final String url;

    public e(String str, String str2, String str3, String str4, boolean z, c cVar) {
        this.identifier = str;
        this.status = str2;
        this.url = str3;
        this.reportsUrl = str4;
        this.updateRequired = z;
        this.icon = cVar;
    }
}
