package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.k;
import java.util.Collection;

public final class d {
    public final String apiKey;
    public final String appId;
    public final String buildVersion;
    public final String builtSdkVersion;
    public final String displayVersion;
    public final n icon;
    public final String instanceIdentifier;
    public final String minSdkVersion;
    public final String name;
    public final Collection<k> sdkKits;
    public final int source;

    public d(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, n nVar, Collection<k> collection) {
        this.apiKey = str;
        this.appId = str2;
        this.displayVersion = str3;
        this.buildVersion = str4;
        this.instanceIdentifier = str5;
        this.name = str6;
        this.source = i;
        this.minSdkVersion = str7;
        this.builtSdkVersion = str8;
        this.icon = nVar;
        this.sdkKits = collection;
    }
}
