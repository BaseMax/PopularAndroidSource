package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.metadata.Metadata;

public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f12601a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12602b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12603c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12604d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12605e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12606f;

    public IcyHeaders(int i2, String str, String str2, String str3, boolean z, int i3) {
        C0737e.a(i3 == -1 || i3 > 0);
        this.f12601a = i2;
        this.f12602b = str;
        this.f12603c = str2;
        this.f12604d = str3;
        this.f12605e = z;
        this.f12606f = i3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00eb  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00f6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r13) {
        /*
            java.lang.String r0 = "Invalid metadata interval: "
            java.lang.String r1 = "icy-br"
            java.lang.Object r1 = r13.get(r1)
            java.util.List r1 = (java.util.List) r1
            java.lang.String r2 = "IcyHeaders"
            r3 = -1
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L_0x0051
            java.lang.Object r1 = r1.get(r5)
            java.lang.String r1 = (java.lang.String) r1
            int r6 = java.lang.Integer.parseInt(r1)     // Catch:{ NumberFormatException -> 0x0039 }
            int r6 = r6 * 1000
            if (r6 <= 0) goto L_0x0021
            r1 = 1
            goto L_0x0037
        L_0x0021:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x003a }
            r7.<init>()     // Catch:{ NumberFormatException -> 0x003a }
            java.lang.String r8 = "Invalid bitrate: "
            r7.append(r8)     // Catch:{ NumberFormatException -> 0x003a }
            r7.append(r1)     // Catch:{ NumberFormatException -> 0x003a }
            java.lang.String r7 = r7.toString()     // Catch:{ NumberFormatException -> 0x003a }
            c.e.a.a.o.p.d(r2, r7)     // Catch:{ NumberFormatException -> 0x003a }
            r1 = 0
            r6 = -1
        L_0x0037:
            r7 = r6
            goto L_0x0053
        L_0x0039:
            r6 = -1
        L_0x003a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Invalid bitrate header: "
            r7.append(r8)
            r7.append(r1)
            java.lang.String r1 = r7.toString()
            c.e.a.a.o.p.d(r2, r1)
            r7 = r6
            r1 = 0
            goto L_0x0053
        L_0x0051:
            r1 = 0
            r7 = -1
        L_0x0053:
            java.lang.String r6 = "icy-genre"
            java.lang.Object r6 = r13.get(r6)
            java.util.List r6 = (java.util.List) r6
            r8 = 0
            if (r6 == 0) goto L_0x0066
            java.lang.Object r1 = r6.get(r5)
            java.lang.String r1 = (java.lang.String) r1
            r6 = 1
            goto L_0x0068
        L_0x0066:
            r6 = r1
            r1 = r8
        L_0x0068:
            java.lang.String r9 = "icy-name"
            java.lang.Object r9 = r13.get(r9)
            java.util.List r9 = (java.util.List) r9
            if (r9 == 0) goto L_0x007b
            java.lang.Object r6 = r9.get(r5)
            java.lang.String r6 = (java.lang.String) r6
            r9 = r6
            r6 = 1
            goto L_0x007c
        L_0x007b:
            r9 = r8
        L_0x007c:
            java.lang.String r10 = "icy-url"
            java.lang.Object r10 = r13.get(r10)
            java.util.List r10 = (java.util.List) r10
            if (r10 == 0) goto L_0x008f
            java.lang.Object r6 = r10.get(r5)
            java.lang.String r6 = (java.lang.String) r6
            r10 = r6
            r6 = 1
            goto L_0x0090
        L_0x008f:
            r10 = r8
        L_0x0090:
            java.lang.String r11 = "icy-pub"
            java.lang.Object r11 = r13.get(r11)
            java.util.List r11 = (java.util.List) r11
            if (r11 == 0) goto L_0x00a9
            java.lang.Object r6 = r11.get(r5)
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r11 = "1"
            boolean r6 = r6.equals(r11)
            r11 = r6
            r6 = 1
            goto L_0x00aa
        L_0x00a9:
            r11 = 0
        L_0x00aa:
            java.lang.String r12 = "icy-metaint"
            java.lang.Object r13 = r13.get(r12)
            java.util.List r13 = (java.util.List) r13
            if (r13 == 0) goto L_0x00eb
            java.lang.Object r13 = r13.get(r5)
            java.lang.String r13 = (java.lang.String) r13
            int r5 = java.lang.Integer.parseInt(r13)     // Catch:{ NumberFormatException -> 0x00d7 }
            if (r5 <= 0) goto L_0x00c3
            r3 = r5
            r6 = 1
            goto L_0x00e9
        L_0x00c3:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x00d6 }
            r4.<init>()     // Catch:{ NumberFormatException -> 0x00d6 }
            r4.append(r0)     // Catch:{ NumberFormatException -> 0x00d6 }
            r4.append(r13)     // Catch:{ NumberFormatException -> 0x00d6 }
            java.lang.String r4 = r4.toString()     // Catch:{ NumberFormatException -> 0x00d6 }
            c.e.a.a.o.p.d(r2, r4)     // Catch:{ NumberFormatException -> 0x00d6 }
            goto L_0x00e9
        L_0x00d6:
            r3 = r5
        L_0x00d7:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r0)
            r4.append(r13)
            java.lang.String r13 = r4.toString()
            c.e.a.a.o.p.d(r2, r13)
        L_0x00e9:
            r12 = r3
            goto L_0x00ec
        L_0x00eb:
            r12 = -1
        L_0x00ec:
            if (r6 == 0) goto L_0x00f6
            com.google.android.exoplayer2.metadata.icy.IcyHeaders r13 = new com.google.android.exoplayer2.metadata.icy.IcyHeaders
            r6 = r13
            r8 = r1
            r6.<init>(r7, r8, r9, r10, r11, r12)
            goto L_0x00f7
        L_0x00f6:
            r13 = r8
        L_0x00f7:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.f12601a != icyHeaders.f12601a || !I.a((Object) this.f12602b, (Object) icyHeaders.f12602b) || !I.a((Object) this.f12603c, (Object) icyHeaders.f12603c) || !I.a((Object) this.f12604d, (Object) icyHeaders.f12604d) || this.f12605e != icyHeaders.f12605e || this.f12606f != icyHeaders.f12606f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = (527 + this.f12601a) * 31;
        String str = this.f12602b;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12603c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f12604d;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return ((((hashCode2 + i3) * 31) + (this.f12605e ? 1 : 0)) * 31) + this.f12606f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f12603c + "\", genre=\"" + this.f12602b + "\", bitrate=" + this.f12601a + ", metadataInterval=" + this.f12606f;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12601a);
        parcel.writeString(this.f12602b);
        parcel.writeString(this.f12603c);
        parcel.writeString(this.f12604d);
        I.a(parcel, this.f12605e);
        parcel.writeInt(this.f12606f);
    }

    public IcyHeaders(Parcel parcel) {
        this.f12601a = parcel.readInt();
        this.f12602b = parcel.readString();
        this.f12603c = parcel.readString();
        this.f12604d = parcel.readString();
        this.f12605e = I.a(parcel);
        this.f12606f = parcel.readInt();
    }
}
