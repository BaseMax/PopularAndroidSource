package com.farsitel.bazaar.common.model.ui;

import android.os.Parcel;
import android.os.Parcelable;
import com.crashlytics.android.core.CodedOutputStream;
import h.a.l;
import h.a.m;
import h.f.b.f;
import h.f.b.j;
import h.k.n;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: AppDownloaderModel.kt */
public final class AppDownloaderModel implements Parcelable, Serializable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String appName;
    public final List<String> cdnPrefixes;
    public final boolean diffDownloadExists;
    public final BigInteger diffHash;
    public final Long diffSize;
    public final String diffToken;
    public final BigInteger hash;
    public final Long installedVersionCode;
    public final String ipAddress;
    public final boolean isFree;
    public final Boolean multiConn;
    public final String packageName;
    public final String referrer;
    public final Long size;
    public final String token;
    public final Long versionCode;

    /* compiled from: AppDownloaderModel.kt */
    public static final class CREATOR implements Parcelable.Creator<AppDownloaderModel> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public AppDownloaderModel createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new AppDownloaderModel(parcel);
        }

        public AppDownloaderModel[] newArray(int i2) {
            return new AppDownloaderModel[i2];
        }
    }

    public AppDownloaderModel(String str, String str2, boolean z, String str3, Long l2, Long l3, List<String> list, String str4, BigInteger bigInteger, Long l4, String str5, BigInteger bigInteger2, Long l5, String str6, Boolean bool) {
        boolean z2;
        j.b(str, "packageName");
        j.b(str2, "appName");
        j.b(str3, "referrer");
        this.packageName = str;
        this.appName = str2;
        this.isFree = z;
        this.referrer = str3;
        this.versionCode = l2;
        this.installedVersionCode = l3;
        this.cdnPrefixes = list;
        this.token = str4;
        this.hash = bigInteger;
        this.size = l4;
        this.diffToken = str5;
        this.diffHash = bigInteger2;
        this.diffSize = l5;
        this.ipAddress = str6;
        this.multiConn = bool;
        if (!(this.diffToken == null || this.diffHash == null)) {
            Long l6 = this.diffSize;
            if ((l6 != null ? l6.longValue() : 0) > 0) {
                z2 = true;
                this.diffDownloadExists = z2;
            }
        }
        z2 = false;
        this.diffDownloadExists = z2;
    }

    public static /* synthetic */ AppDownloaderModel copy$default(AppDownloaderModel appDownloaderModel, String str, String str2, boolean z, String str3, Long l2, Long l3, List list, String str4, BigInteger bigInteger, Long l4, String str5, BigInteger bigInteger2, Long l5, String str6, Boolean bool, int i2, Object obj) {
        AppDownloaderModel appDownloaderModel2 = appDownloaderModel;
        int i3 = i2;
        return appDownloaderModel.copy((i3 & 1) != 0 ? appDownloaderModel2.packageName : str, (i3 & 2) != 0 ? appDownloaderModel2.appName : str2, (i3 & 4) != 0 ? appDownloaderModel2.isFree : z, (i3 & 8) != 0 ? appDownloaderModel2.referrer : str3, (i3 & 16) != 0 ? appDownloaderModel2.versionCode : l2, (i3 & 32) != 0 ? appDownloaderModel2.installedVersionCode : l3, (i3 & 64) != 0 ? appDownloaderModel2.cdnPrefixes : list, (i3 & 128) != 0 ? appDownloaderModel2.token : str4, (i3 & 256) != 0 ? appDownloaderModel2.hash : bigInteger, (i3 & 512) != 0 ? appDownloaderModel2.size : l4, (i3 & 1024) != 0 ? appDownloaderModel2.diffToken : str5, (i3 & 2048) != 0 ? appDownloaderModel2.diffHash : bigInteger2, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appDownloaderModel2.diffSize : l5, (i3 & 8192) != 0 ? appDownloaderModel2.ipAddress : str6, (i3 & 16384) != 0 ? appDownloaderModel2.multiConn : bool);
    }

    public final String component1() {
        return this.packageName;
    }

    public final Long component10() {
        return this.size;
    }

    public final String component11() {
        return this.diffToken;
    }

    public final BigInteger component12() {
        return this.diffHash;
    }

    public final Long component13() {
        return this.diffSize;
    }

    public final String component14() {
        return this.ipAddress;
    }

    public final Boolean component15() {
        return this.multiConn;
    }

    public final String component2() {
        return this.appName;
    }

    public final boolean component3() {
        return this.isFree;
    }

    public final String component4() {
        return this.referrer;
    }

    public final Long component5() {
        return this.versionCode;
    }

    public final Long component6() {
        return this.installedVersionCode;
    }

    public final List<String> component7() {
        return this.cdnPrefixes;
    }

    public final String component8() {
        return this.token;
    }

    public final BigInteger component9() {
        return this.hash;
    }

    public final AppDownloaderModel copy(String str, String str2, boolean z, String str3, Long l2, Long l3, List<String> list, String str4, BigInteger bigInteger, Long l4, String str5, BigInteger bigInteger2, Long l5, String str6, Boolean bool) {
        String str7 = str;
        j.b(str7, "packageName");
        String str8 = str2;
        j.b(str8, "appName");
        String str9 = str3;
        j.b(str9, "referrer");
        AppDownloaderModel appDownloaderModel = new AppDownloaderModel(str7, str8, z, str9, l2, l3, list, str4, bigInteger, l4, str5, bigInteger2, l5, str6, bool);
        return appDownloaderModel;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppDownloaderModel) {
                AppDownloaderModel appDownloaderModel = (AppDownloaderModel) obj;
                if (j.a((Object) this.packageName, (Object) appDownloaderModel.packageName) && j.a((Object) this.appName, (Object) appDownloaderModel.appName)) {
                    if (!(this.isFree == appDownloaderModel.isFree) || !j.a((Object) this.referrer, (Object) appDownloaderModel.referrer) || !j.a((Object) this.versionCode, (Object) appDownloaderModel.versionCode) || !j.a((Object) this.installedVersionCode, (Object) appDownloaderModel.installedVersionCode) || !j.a((Object) this.cdnPrefixes, (Object) appDownloaderModel.cdnPrefixes) || !j.a((Object) this.token, (Object) appDownloaderModel.token) || !j.a((Object) this.hash, (Object) appDownloaderModel.hash) || !j.a((Object) this.size, (Object) appDownloaderModel.size) || !j.a((Object) this.diffToken, (Object) appDownloaderModel.diffToken) || !j.a((Object) this.diffHash, (Object) appDownloaderModel.diffHash) || !j.a((Object) this.diffSize, (Object) appDownloaderModel.diffSize) || !j.a((Object) this.ipAddress, (Object) appDownloaderModel.ipAddress) || !j.a((Object) this.multiConn, (Object) appDownloaderModel.multiConn)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final List<String> getCdnPrefixes() {
        return this.cdnPrefixes;
    }

    public final boolean getDiffDownloadExists() {
        return this.diffDownloadExists;
    }

    public final BigInteger getDiffHash() {
        return this.diffHash;
    }

    public final Long getDiffSize() {
        return this.diffSize;
    }

    public final String getDiffToken() {
        return this.diffToken;
    }

    public final List<String> getDownloadDiffUrl() {
        List<String> list = this.cdnPrefixes;
        if (list != null) {
            String str = list.get(0);
            if (str != null) {
                List a2 = n.a((CharSequence) str, new String[]{";"}, false, 0, 6, (Object) null);
                if (a2 != null) {
                    ArrayList arrayList = new ArrayList(m.a(a2, 10));
                    Iterator it = a2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()) + "apks/diffs/" + this.diffToken + ".diff");
                    }
                    return arrayList;
                }
            }
        }
        return l.a();
    }

    public final List<String> getDownloadUrl() {
        List<String> list = this.cdnPrefixes;
        if (list != null) {
            String str = list.get(0);
            if (str != null) {
                List a2 = n.a((CharSequence) str, new String[]{";"}, false, 0, 6, (Object) null);
                if (a2 != null) {
                    ArrayList arrayList = new ArrayList(m.a(a2, 10));
                    Iterator it = a2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()) + "apks/" + this.token + ".apk");
                    }
                    return arrayList;
                }
            }
        }
        return l.a();
    }

    public final BigInteger getHash() {
        return this.hash;
    }

    public final Long getInstalledVersionCode() {
        return this.installedVersionCode;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final Boolean getMultiConn() {
        return this.multiConn;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getToken() {
        return this.token;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.appName;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.isFree;
        if (z) {
            z = true;
        }
        int i3 = (hashCode2 + (z ? 1 : 0)) * 31;
        String str3 = this.referrer;
        int hashCode3 = (i3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Long l2 = this.versionCode;
        int hashCode4 = (hashCode3 + (l2 != null ? l2.hashCode() : 0)) * 31;
        Long l3 = this.installedVersionCode;
        int hashCode5 = (hashCode4 + (l3 != null ? l3.hashCode() : 0)) * 31;
        List<String> list = this.cdnPrefixes;
        int hashCode6 = (hashCode5 + (list != null ? list.hashCode() : 0)) * 31;
        String str4 = this.token;
        int hashCode7 = (hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        BigInteger bigInteger = this.hash;
        int hashCode8 = (hashCode7 + (bigInteger != null ? bigInteger.hashCode() : 0)) * 31;
        Long l4 = this.size;
        int hashCode9 = (hashCode8 + (l4 != null ? l4.hashCode() : 0)) * 31;
        String str5 = this.diffToken;
        int hashCode10 = (hashCode9 + (str5 != null ? str5.hashCode() : 0)) * 31;
        BigInteger bigInteger2 = this.diffHash;
        int hashCode11 = (hashCode10 + (bigInteger2 != null ? bigInteger2.hashCode() : 0)) * 31;
        Long l5 = this.diffSize;
        int hashCode12 = (hashCode11 + (l5 != null ? l5.hashCode() : 0)) * 31;
        String str6 = this.ipAddress;
        int hashCode13 = (hashCode12 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Boolean bool = this.multiConn;
        if (bool != null) {
            i2 = bool.hashCode();
        }
        return hashCode13 + i2;
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public String toString() {
        return "AppDownloaderModel(packageName=" + this.packageName + ", appName=" + this.appName + ", isFree=" + this.isFree + ", referrer=" + this.referrer + ", versionCode=" + this.versionCode + ", installedVersionCode=" + this.installedVersionCode + ", cdnPrefixes=" + this.cdnPrefixes + ", token=" + this.token + ", hash=" + this.hash + ", size=" + this.size + ", diffToken=" + this.diffToken + ", diffHash=" + this.diffHash + ", diffSize=" + this.diffSize + ", ipAddress=" + this.ipAddress + ", multiConn=" + this.multiConn + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.packageName);
        parcel.writeString(this.appName);
        parcel.writeByte(this.isFree ? (byte) 1 : 0);
        parcel.writeString(this.referrer);
        parcel.writeValue(this.versionCode);
        parcel.writeValue(this.installedVersionCode);
        parcel.writeStringList(this.cdnPrefixes);
        parcel.writeString(this.token);
        BigInteger bigInteger = this.hash;
        String str = null;
        parcel.writeString(bigInteger != null ? bigInteger.toString() : null);
        parcel.writeValue(this.size);
        parcel.writeString(this.diffToken);
        BigInteger bigInteger2 = this.diffHash;
        if (bigInteger2 != null) {
            str = bigInteger2.toString();
        }
        parcel.writeString(str);
        parcel.writeValue(this.diffSize);
        parcel.writeString(this.ipAddress);
        parcel.writeValue(this.multiConn);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ AppDownloaderModel(java.lang.String r20, java.lang.String r21, boolean r22, java.lang.String r23, java.lang.Long r24, java.lang.Long r25, java.util.List r26, java.lang.String r27, java.math.BigInteger r28, java.lang.Long r29, java.lang.String r30, java.math.BigInteger r31, java.lang.Long r32, java.lang.String r33, java.lang.Boolean r34, int r35, h.f.b.f r36) {
        /*
            r19 = this;
            r0 = r35
            r1 = r0 & 64
            r2 = 0
            if (r1 == 0) goto L_0x0009
            r10 = r2
            goto L_0x000b
        L_0x0009:
            r10 = r26
        L_0x000b:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L_0x0011
            r11 = r2
            goto L_0x0013
        L_0x0011:
            r11 = r27
        L_0x0013:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L_0x0019
            r12 = r2
            goto L_0x001b
        L_0x0019:
            r12 = r28
        L_0x001b:
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L_0x0021
            r13 = r2
            goto L_0x0023
        L_0x0021:
            r13 = r29
        L_0x0023:
            r1 = r0 & 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L_0x0029
            r14 = r2
            goto L_0x002b
        L_0x0029:
            r14 = r30
        L_0x002b:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L_0x0031
            r15 = r2
            goto L_0x0033
        L_0x0031:
            r15 = r31
        L_0x0033:
            r1 = r0 & 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L_0x003a
            r16 = r2
            goto L_0x003c
        L_0x003a:
            r16 = r32
        L_0x003c:
            r1 = r0 & 8192(0x2000, float:1.14794E-41)
            if (r1 == 0) goto L_0x0043
            r17 = r2
            goto L_0x0045
        L_0x0043:
            r17 = r33
        L_0x0045:
            r0 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r0 == 0) goto L_0x004c
            r18 = r2
            goto L_0x004e
        L_0x004c:
            r18 = r34
        L_0x004e:
            r3 = r19
            r4 = r20
            r5 = r21
            r6 = r22
            r7 = r23
            r8 = r24
            r9 = r25
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.ui.AppDownloaderModel.<init>(java.lang.String, java.lang.String, boolean, java.lang.String, java.lang.Long, java.lang.Long, java.util.List, java.lang.String, java.math.BigInteger, java.lang.Long, java.lang.String, java.math.BigInteger, java.lang.Long, java.lang.String, java.lang.Boolean, int, h.f.b.f):void");
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AppDownloaderModel(android.os.Parcel r19) {
        /*
            r18 = this;
            r0 = r19
            java.lang.String r1 = "parcel"
            h.f.b.j.b(r0, r1)
            java.lang.String r3 = r19.readString()
            r1 = 0
            if (r3 == 0) goto L_0x00b7
            java.lang.String r4 = r19.readString()
            if (r4 == 0) goto L_0x00b3
            byte r2 = r19.readByte()
            r5 = 0
            byte r6 = (byte) r5
            if (r2 == r6) goto L_0x001e
            r2 = 1
            r5 = 1
        L_0x001e:
            java.lang.String r6 = r19.readString()
            if (r6 == 0) goto L_0x00af
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r7 = r2 instanceof java.lang.Long
            if (r7 != 0) goto L_0x0033
            r2 = r1
        L_0x0033:
            r7 = r2
            java.lang.Long r7 = (java.lang.Long) r7
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r8 = r2 instanceof java.lang.Long
            if (r8 != 0) goto L_0x0045
            r2 = r1
        L_0x0045:
            r8 = r2
            java.lang.Long r8 = (java.lang.Long) r8
            java.util.ArrayList r9 = r19.createStringArrayList()
            java.lang.String r10 = r19.readString()
            java.lang.String r2 = r19.readString()
            if (r2 == 0) goto L_0x005c
            java.math.BigInteger r11 = new java.math.BigInteger
            r11.<init>(r2)
            goto L_0x005d
        L_0x005c:
            r11 = r1
        L_0x005d:
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r12 = r2 instanceof java.lang.Long
            if (r12 != 0) goto L_0x006c
            r2 = r1
        L_0x006c:
            r12 = r2
            java.lang.Long r12 = (java.lang.Long) r12
            java.lang.String r13 = r19.readString()
            java.lang.String r2 = r19.readString()
            if (r2 == 0) goto L_0x007f
            java.math.BigInteger r14 = new java.math.BigInteger
            r14.<init>(r2)
            goto L_0x0080
        L_0x007f:
            r14 = r1
        L_0x0080:
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r15 = r2 instanceof java.lang.Long
            if (r15 != 0) goto L_0x008f
            r2 = r1
        L_0x008f:
            r15 = r2
            java.lang.Long r15 = (java.lang.Long) r15
            java.lang.String r16 = r19.readString()
            java.lang.Class r2 = java.lang.Boolean.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r0 = r0.readValue(r2)
            boolean r2 = r0 instanceof java.lang.Boolean
            if (r2 != 0) goto L_0x00a5
            r0 = r1
        L_0x00a5:
            r17 = r0
            java.lang.Boolean r17 = (java.lang.Boolean) r17
            r2 = r18
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            return
        L_0x00af:
            h.f.b.j.a()
            throw r1
        L_0x00b3:
            h.f.b.j.a()
            throw r1
        L_0x00b7:
            h.f.b.j.a()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.ui.AppDownloaderModel.<init>(android.os.Parcel):void");
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public AppDownloaderModel(String str, String str2, boolean z, String str3, Long l2, Long l3) {
        this(str, str2, z, str3, l2, l3, null, null, null, null, null, null, null, null, null, 32640, null);
        j.b(str, "packageName");
        j.b(str2, "appName");
        j.b(str3, "referrer");
    }
}
