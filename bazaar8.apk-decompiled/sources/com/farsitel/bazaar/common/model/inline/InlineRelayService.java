package com.farsitel.bazaar.common.model.inline;

import com.crashlytics.android.answers.SessionEvent;
import h.f.b.j;
import org.json.JSONObject;

/* compiled from: InlineRelayService.kt */
public final class InlineRelayService {
    public final String deviceId;
    public final String email;
    public final String inlinePlatformVersion;
    public final String packageName;
    public final String path;
    public final JSONObject payload;
    public final String referrer;
    public final String sessionId;
    public final String telNum;
    public final String uniqueID;

    public InlineRelayService(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, JSONObject jSONObject) {
        j.b(str, "packageName");
        j.b(str2, SessionEvent.SESSION_ID_KEY);
        j.b(str3, "deviceId");
        j.b(str4, "uniqueID");
        j.b(str6, "telNum");
        j.b(str7, "email");
        j.b(str8, "path");
        this.packageName = str;
        this.sessionId = str2;
        this.deviceId = str3;
        this.uniqueID = str4;
        this.inlinePlatformVersion = str5;
        this.telNum = str6;
        this.email = str7;
        this.path = str8;
        this.referrer = str9;
        this.payload = jSONObject;
    }

    public static /* synthetic */ InlineRelayService copy$default(InlineRelayService inlineRelayService, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, JSONObject jSONObject, int i2, Object obj) {
        InlineRelayService inlineRelayService2 = inlineRelayService;
        int i3 = i2;
        return inlineRelayService.copy((i3 & 1) != 0 ? inlineRelayService2.packageName : str, (i3 & 2) != 0 ? inlineRelayService2.sessionId : str2, (i3 & 4) != 0 ? inlineRelayService2.deviceId : str3, (i3 & 8) != 0 ? inlineRelayService2.uniqueID : str4, (i3 & 16) != 0 ? inlineRelayService2.inlinePlatformVersion : str5, (i3 & 32) != 0 ? inlineRelayService2.telNum : str6, (i3 & 64) != 0 ? inlineRelayService2.email : str7, (i3 & 128) != 0 ? inlineRelayService2.path : str8, (i3 & 256) != 0 ? inlineRelayService2.referrer : str9, (i3 & 512) != 0 ? inlineRelayService2.payload : jSONObject);
    }

    public final String component1() {
        return this.packageName;
    }

    public final JSONObject component10() {
        return this.payload;
    }

    public final String component2() {
        return this.sessionId;
    }

    public final String component3() {
        return this.deviceId;
    }

    public final String component4() {
        return this.uniqueID;
    }

    public final String component5() {
        return this.inlinePlatformVersion;
    }

    public final String component6() {
        return this.telNum;
    }

    public final String component7() {
        return this.email;
    }

    public final String component8() {
        return this.path;
    }

    public final String component9() {
        return this.referrer;
    }

    public final InlineRelayService copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, JSONObject jSONObject) {
        j.b(str, "packageName");
        j.b(str2, SessionEvent.SESSION_ID_KEY);
        j.b(str3, "deviceId");
        String str10 = str4;
        j.b(str10, "uniqueID");
        String str11 = str6;
        j.b(str11, "telNum");
        String str12 = str7;
        j.b(str12, "email");
        String str13 = str8;
        j.b(str13, "path");
        InlineRelayService inlineRelayService = new InlineRelayService(str, str2, str3, str10, str5, str11, str12, str13, str9, jSONObject);
        return inlineRelayService;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.payload, (java.lang.Object) r3.payload) != false) goto L_0x006f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x006f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.inline.InlineRelayService
            if (r0 == 0) goto L_0x006d
            com.farsitel.bazaar.common.model.inline.InlineRelayService r3 = (com.farsitel.bazaar.common.model.inline.InlineRelayService) r3
            java.lang.String r0 = r2.packageName
            java.lang.String r1 = r3.packageName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.sessionId
            java.lang.String r1 = r3.sessionId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.deviceId
            java.lang.String r1 = r3.deviceId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.uniqueID
            java.lang.String r1 = r3.uniqueID
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.inlinePlatformVersion
            java.lang.String r1 = r3.inlinePlatformVersion
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.telNum
            java.lang.String r1 = r3.telNum
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.email
            java.lang.String r1 = r3.email
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.path
            java.lang.String r1 = r3.path
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            java.lang.String r0 = r2.referrer
            java.lang.String r1 = r3.referrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x006d
            org.json.JSONObject r0 = r2.payload
            org.json.JSONObject r3 = r3.payload
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x006d
            goto L_0x006f
        L_0x006d:
            r3 = 0
            return r3
        L_0x006f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.inline.InlineRelayService.equals(java.lang.Object):boolean");
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getInlinePlatformVersion() {
        return this.inlinePlatformVersion;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getPath() {
        return this.path;
    }

    public final JSONObject getPayload() {
        return this.payload;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getTelNum() {
        return this.telNum;
    }

    public final String getUniqueID() {
        return this.uniqueID;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sessionId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.deviceId;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.uniqueID;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.inlinePlatformVersion;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.telNum;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.email;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.path;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.referrer;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        JSONObject jSONObject = this.payload;
        if (jSONObject != null) {
            i2 = jSONObject.hashCode();
        }
        return hashCode9 + i2;
    }

    public String toString() {
        return "InlineRelayService(packageName=" + this.packageName + ", sessionId=" + this.sessionId + ", deviceId=" + this.deviceId + ", uniqueID=" + this.uniqueID + ", inlinePlatformVersion=" + this.inlinePlatformVersion + ", telNum=" + this.telNum + ", email=" + this.email + ", path=" + this.path + ", referrer=" + this.referrer + ", payload=" + this.payload + ")";
    }
}
