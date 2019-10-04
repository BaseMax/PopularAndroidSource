package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import com.crashlytics.android.answers.SessionEvent;
import com.farsitel.bazaar.common.model.inline.InlineRelayService;
import h.f.b.f;
import h.f.b.j;

@h("singleRequest.inlineRelayServiceRequest")
/* compiled from: InlineReplyServiceRequestDto.kt */
public final class InlineReplyServiceRequestDto {
    public static final Companion Companion = new Companion(null);
    @c("DeviceID")
    public final String deviceId;
    @c("Email")
    public final String email;
    @c("InlinePlatformVersion")
    public final String inlinePlatformVersion;
    @c("PackageName")
    public final String packageName;
    @c("Path")
    public final String path;
    @c("Payload")
    public final String payload;
    @c("Referrer")
    public final String referrer;
    @c("SessionID")
    public final String sessionId;
    @c("TelNum")
    public final String telNum;
    @c("UniqueID")
    public final String uniqueID;

    /* compiled from: InlineReplyServiceRequestDto.kt */
    public static final class Companion {
        public Companion() {
        }

        public final InlineReplyServiceRequestDto fromInlineRelayService(InlineRelayService inlineRelayService) {
            j.b(inlineRelayService, "inlineService");
            InlineReplyServiceRequestDto inlineReplyServiceRequestDto = new InlineReplyServiceRequestDto(inlineRelayService.getPackageName(), inlineRelayService.getSessionId(), inlineRelayService.getDeviceId(), inlineRelayService.getUniqueID(), inlineRelayService.getInlinePlatformVersion(), inlineRelayService.getTelNum(), inlineRelayService.getEmail(), inlineRelayService.getPath(), inlineRelayService.getReferrer(), String.valueOf(inlineRelayService.getPayload()));
            return inlineReplyServiceRequestDto;
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    public InlineReplyServiceRequestDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        j.b(str, "packageName");
        j.b(str2, SessionEvent.SESSION_ID_KEY);
        j.b(str3, "deviceId");
        j.b(str4, "uniqueID");
        j.b(str6, "telNum");
        j.b(str7, "email");
        j.b(str8, "path");
        j.b(str10, "payload");
        this.packageName = str;
        this.sessionId = str2;
        this.deviceId = str3;
        this.uniqueID = str4;
        this.inlinePlatformVersion = str5;
        this.telNum = str6;
        this.email = str7;
        this.path = str8;
        this.referrer = str9;
        this.payload = str10;
    }

    public static /* synthetic */ InlineReplyServiceRequestDto copy$default(InlineReplyServiceRequestDto inlineReplyServiceRequestDto, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i2, Object obj) {
        InlineReplyServiceRequestDto inlineReplyServiceRequestDto2 = inlineReplyServiceRequestDto;
        int i3 = i2;
        return inlineReplyServiceRequestDto.copy((i3 & 1) != 0 ? inlineReplyServiceRequestDto2.packageName : str, (i3 & 2) != 0 ? inlineReplyServiceRequestDto2.sessionId : str2, (i3 & 4) != 0 ? inlineReplyServiceRequestDto2.deviceId : str3, (i3 & 8) != 0 ? inlineReplyServiceRequestDto2.uniqueID : str4, (i3 & 16) != 0 ? inlineReplyServiceRequestDto2.inlinePlatformVersion : str5, (i3 & 32) != 0 ? inlineReplyServiceRequestDto2.telNum : str6, (i3 & 64) != 0 ? inlineReplyServiceRequestDto2.email : str7, (i3 & 128) != 0 ? inlineReplyServiceRequestDto2.path : str8, (i3 & 256) != 0 ? inlineReplyServiceRequestDto2.referrer : str9, (i3 & 512) != 0 ? inlineReplyServiceRequestDto2.payload : str10);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component10() {
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

    public final InlineReplyServiceRequestDto copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        j.b(str, "packageName");
        j.b(str2, SessionEvent.SESSION_ID_KEY);
        j.b(str3, "deviceId");
        String str11 = str4;
        j.b(str11, "uniqueID");
        String str12 = str6;
        j.b(str12, "telNum");
        String str13 = str7;
        j.b(str13, "email");
        String str14 = str8;
        j.b(str14, "path");
        String str15 = str10;
        j.b(str15, "payload");
        InlineReplyServiceRequestDto inlineReplyServiceRequestDto = new InlineReplyServiceRequestDto(str, str2, str3, str11, str5, str12, str13, str14, str9, str15);
        return inlineReplyServiceRequestDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.payload, (java.lang.Object) r3.payload) != false) goto L_0x006f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x006f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto
            if (r0 == 0) goto L_0x006d
            com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto r3 = (com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto) r3
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
            java.lang.String r0 = r2.payload
            java.lang.String r3 = r3.payload
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.requestdto.InlineReplyServiceRequestDto.equals(java.lang.Object):boolean");
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

    public final String getPayload() {
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
        String str10 = this.payload;
        if (str10 != null) {
            i2 = str10.hashCode();
        }
        return hashCode9 + i2;
    }

    public String toString() {
        return "InlineReplyServiceRequestDto(packageName=" + this.packageName + ", sessionId=" + this.sessionId + ", deviceId=" + this.deviceId + ", uniqueID=" + this.uniqueID + ", inlinePlatformVersion=" + this.inlinePlatformVersion + ", telNum=" + this.telNum + ", email=" + this.email + ", path=" + this.path + ", referrer=" + this.referrer + ", payload=" + this.payload + ")";
    }
}
