package com.farsitel.bazaar.data.entity;

import h.f.b.j;

/* compiled from: RequestPropertiesEntity.kt */
public final class RequestProperties {
    public final DeviceInfo androidClientInfo;
    public final String clientID;
    public final String clientVersion;
    public final long clientVersionCode;
    public final boolean isKidsEnabled;
    public final int language;
    public final Double lat;
    public final Double lon;

    public RequestProperties(String str, String str2, long j2, int i2, DeviceInfo deviceInfo, boolean z, Double d2, Double d3) {
        j.b(str, "clientID");
        j.b(str2, "clientVersion");
        j.b(deviceInfo, "androidClientInfo");
        this.clientID = str;
        this.clientVersion = str2;
        this.clientVersionCode = j2;
        this.language = i2;
        this.androidClientInfo = deviceInfo;
        this.isKidsEnabled = z;
        this.lat = d2;
        this.lon = d3;
    }

    public static /* synthetic */ RequestProperties copy$default(RequestProperties requestProperties, String str, String str2, long j2, int i2, DeviceInfo deviceInfo, boolean z, Double d2, Double d3, int i3, Object obj) {
        RequestProperties requestProperties2 = requestProperties;
        int i4 = i3;
        return requestProperties.copy((i4 & 1) != 0 ? requestProperties2.clientID : str, (i4 & 2) != 0 ? requestProperties2.clientVersion : str2, (i4 & 4) != 0 ? requestProperties2.clientVersionCode : j2, (i4 & 8) != 0 ? requestProperties2.language : i2, (i4 & 16) != 0 ? requestProperties2.androidClientInfo : deviceInfo, (i4 & 32) != 0 ? requestProperties2.isKidsEnabled : z, (i4 & 64) != 0 ? requestProperties2.lat : d2, (i4 & 128) != 0 ? requestProperties2.lon : d3);
    }

    public final String component1() {
        return this.clientID;
    }

    public final String component2() {
        return this.clientVersion;
    }

    public final long component3() {
        return this.clientVersionCode;
    }

    public final int component4() {
        return this.language;
    }

    public final DeviceInfo component5() {
        return this.androidClientInfo;
    }

    public final boolean component6() {
        return this.isKidsEnabled;
    }

    public final Double component7() {
        return this.lat;
    }

    public final Double component8() {
        return this.lon;
    }

    public final RequestProperties copy(String str, String str2, long j2, int i2, DeviceInfo deviceInfo, boolean z, Double d2, Double d3) {
        j.b(str, "clientID");
        j.b(str2, "clientVersion");
        DeviceInfo deviceInfo2 = deviceInfo;
        j.b(deviceInfo2, "androidClientInfo");
        RequestProperties requestProperties = new RequestProperties(str, str2, j2, i2, deviceInfo2, z, d2, d3);
        return requestProperties;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RequestProperties) {
                RequestProperties requestProperties = (RequestProperties) obj;
                if (j.a((Object) this.clientID, (Object) requestProperties.clientID) && j.a((Object) this.clientVersion, (Object) requestProperties.clientVersion)) {
                    if (this.clientVersionCode == requestProperties.clientVersionCode) {
                        if ((this.language == requestProperties.language) && j.a((Object) this.androidClientInfo, (Object) requestProperties.androidClientInfo)) {
                            if (!(this.isKidsEnabled == requestProperties.isKidsEnabled) || !j.a((Object) this.lat, (Object) requestProperties.lat) || !j.a((Object) this.lon, (Object) requestProperties.lon)) {
                                return false;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final DeviceInfo getAndroidClientInfo() {
        return this.androidClientInfo;
    }

    public final String getClientID() {
        return this.clientID;
    }

    public final String getClientVersion() {
        return this.clientVersion;
    }

    public final long getClientVersionCode() {
        return this.clientVersionCode;
    }

    public final int getLanguage() {
        return this.language;
    }

    public final Double getLat() {
        return this.lat;
    }

    public final Double getLon() {
        return this.lon;
    }

    public int hashCode() {
        String str = this.clientID;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.clientVersion;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.clientVersionCode;
        int i3 = (((((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.language) * 31;
        DeviceInfo deviceInfo = this.androidClientInfo;
        int hashCode3 = (i3 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 31;
        boolean z = this.isKidsEnabled;
        if (z) {
            z = true;
        }
        int i4 = (hashCode3 + (z ? 1 : 0)) * 31;
        Double d2 = this.lat;
        int hashCode4 = (i4 + (d2 != null ? d2.hashCode() : 0)) * 31;
        Double d3 = this.lon;
        if (d3 != null) {
            i2 = d3.hashCode();
        }
        return hashCode4 + i2;
    }

    public final boolean isKidsEnabled() {
        return this.isKidsEnabled;
    }

    public String toString() {
        return "RequestProperties(clientID=" + this.clientID + ", clientVersion=" + this.clientVersion + ", clientVersionCode=" + this.clientVersionCode + ", language=" + this.language + ", androidClientInfo=" + this.androidClientInfo + ", isKidsEnabled=" + this.isKidsEnabled + ", lat=" + this.lat + ", lon=" + this.lon + ")";
    }
}
