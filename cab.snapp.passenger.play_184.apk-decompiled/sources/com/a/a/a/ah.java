package com.a.a.a;

final class ah {

    /* renamed from: a  reason: collision with root package name */
    private String f1663a;
    public final String advertisingId;
    public final String androidId;
    public final String appBundleId;
    public final String appVersionCode;
    public final String appVersionName;
    public final String betaDeviceToken;
    public final String buildId;
    public final String deviceModel;
    public final String executionId;
    public final String installationId;
    public final Boolean limitAdTrackingEnabled;
    public final String osVersion;

    public ah(String str, String str2, String str3, String str4, String str5, Boolean bool, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.appBundleId = str;
        this.executionId = str2;
        this.installationId = str3;
        this.androidId = str4;
        this.advertisingId = str5;
        this.limitAdTrackingEnabled = bool;
        this.betaDeviceToken = str6;
        this.buildId = str7;
        this.osVersion = str8;
        this.deviceModel = str9;
        this.appVersionCode = str10;
        this.appVersionName = str11;
    }

    public final String toString() {
        if (this.f1663a == null) {
            this.f1663a = "appBundleId=" + this.appBundleId + ", executionId=" + this.executionId + ", installationId=" + this.installationId + ", androidId=" + this.androidId + ", advertisingId=" + this.advertisingId + ", limitAdTrackingEnabled=" + this.limitAdTrackingEnabled + ", betaDeviceToken=" + this.betaDeviceToken + ", buildId=" + this.buildId + ", osVersion=" + this.osVersion + ", deviceModel=" + this.deviceModel + ", appVersionCode=" + this.appVersionCode + ", appVersionName=" + this.appVersionName;
        }
        return this.f1663a;
    }
}
