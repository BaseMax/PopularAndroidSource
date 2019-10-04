package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new D();
    public final String A;
    public final int B;
    public int C;

    /* renamed from: a  reason: collision with root package name */
    public final String f12506a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12507b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12508c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12509d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12510e;

    /* renamed from: f  reason: collision with root package name */
    public final String f12511f;

    /* renamed from: g  reason: collision with root package name */
    public final Metadata f12512g;

    /* renamed from: h  reason: collision with root package name */
    public final String f12513h;

    /* renamed from: i  reason: collision with root package name */
    public final String f12514i;

    /* renamed from: j  reason: collision with root package name */
    public final int f12515j;

    /* renamed from: k  reason: collision with root package name */
    public final List<byte[]> f12516k;

    /* renamed from: l  reason: collision with root package name */
    public final DrmInitData f12517l;
    public final long m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;
    public final int s;
    public final byte[] t;
    public final ColorInfo u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    public Format(String str, String str2, int i2, int i3, int i4, String str3, Metadata metadata, String str4, String str5, int i5, List<byte[]> list, DrmInitData drmInitData, long j2, int i6, int i7, float f2, int i8, float f3, byte[] bArr, int i9, ColorInfo colorInfo, int i10, int i11, int i12, int i13, int i14, String str6, int i15) {
        int i16;
        int i17;
        int i18;
        this.f12506a = str;
        this.f12507b = str2;
        this.f12508c = i2;
        this.f12509d = i3;
        this.f12510e = i4;
        this.f12511f = str3;
        this.f12512g = metadata;
        this.f12513h = str4;
        this.f12514i = str5;
        this.f12515j = i5;
        this.f12516k = list == null ? Collections.emptyList() : list;
        this.f12517l = drmInitData;
        this.m = j2;
        this.n = i6;
        this.o = i7;
        this.p = f2;
        this.q = i16 == -1 ? 0 : i8;
        this.r = f3 == -1.0f ? 1.0f : f3;
        this.t = bArr;
        this.s = i9;
        this.u = colorInfo;
        this.v = i10;
        this.w = i11;
        this.x = i12;
        this.y = i17 == -1 ? 0 : i13;
        this.z = i18 == -1 ? 0 : i14;
        this.A = I.h(str6);
        this.B = i15;
    }

    public static Format a(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, float f2, List<byte[]> list, int i5, int i6) {
        int i7 = i2;
        int i8 = i5;
        int i9 = i6;
        Format format = new Format(str, str2, i8, i9, i7, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, i3, i4, f2, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
        return format;
    }

    public static Format b(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, String str6) {
        return a(str, str2, str3, str4, str5, i2, i3, i4, str6, -1);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i2 = this.C;
        if (i2 != 0) {
            int i3 = format.C;
            if (!(i3 == 0 || i2 == i3)) {
                return false;
            }
        }
        if (!(this.f12508c == format.f12508c && this.f12509d == format.f12509d && this.f12510e == format.f12510e && this.f12515j == format.f12515j && this.m == format.m && this.n == format.n && this.o == format.o && this.q == format.q && this.s == format.s && this.v == format.v && this.w == format.w && this.x == format.x && this.y == format.y && this.z == format.z && this.B == format.B && Float.compare(this.p, format.p) == 0 && Float.compare(this.r, format.r) == 0 && I.a((Object) this.f12506a, (Object) format.f12506a) && I.a((Object) this.f12507b, (Object) format.f12507b) && I.a((Object) this.f12511f, (Object) format.f12511f) && I.a((Object) this.f12513h, (Object) format.f12513h) && I.a((Object) this.f12514i, (Object) format.f12514i) && I.a((Object) this.A, (Object) format.A) && Arrays.equals(this.t, format.t) && I.a((Object) this.f12512g, (Object) format.f12512g) && I.a((Object) this.u, (Object) format.u) && I.a((Object) this.f12517l, (Object) format.f12517l) && b(format))) {
            z2 = false;
        }
        return z2;
    }

    public int hashCode() {
        if (this.C == 0) {
            String str = this.f12506a;
            int i2 = 0;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f12507b;
            int hashCode2 = (((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f12508c) * 31) + this.f12509d) * 31) + this.f12510e) * 31;
            String str3 = this.f12511f;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Metadata metadata = this.f12512g;
            int hashCode4 = (hashCode3 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str4 = this.f12513h;
            int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.f12514i;
            int hashCode6 = (((((((((((((((((((((((((((hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.f12515j) * 31) + ((int) this.m)) * 31) + this.n) * 31) + this.o) * 31) + Float.floatToIntBits(this.p)) * 31) + this.q) * 31) + Float.floatToIntBits(this.r)) * 31) + this.s) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31) + this.z) * 31;
            String str6 = this.A;
            if (str6 != null) {
                i2 = str6.hashCode();
            }
            this.C = ((hashCode6 + i2) * 31) + this.B;
        }
        return this.C;
    }

    public String toString() {
        return "Format(" + this.f12506a + ", " + this.f12507b + ", " + this.f12513h + ", " + this.f12514i + ", " + this.f12511f + ", " + this.f12510e + ", " + this.A + ", [" + this.n + ", " + this.o + ", " + this.p + "], [" + this.v + ", " + this.w + "])";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12506a);
        parcel.writeString(this.f12507b);
        parcel.writeInt(this.f12508c);
        parcel.writeInt(this.f12509d);
        parcel.writeInt(this.f12510e);
        parcel.writeString(this.f12511f);
        boolean z2 = false;
        parcel.writeParcelable(this.f12512g, 0);
        parcel.writeString(this.f12513h);
        parcel.writeString(this.f12514i);
        parcel.writeInt(this.f12515j);
        int size = this.f12516k.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeByteArray(this.f12516k.get(i3));
        }
        parcel.writeParcelable(this.f12517l, 0);
        parcel.writeLong(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeFloat(this.p);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.r);
        if (this.t != null) {
            z2 = true;
        }
        I.a(parcel, z2);
        byte[] bArr = this.t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.s);
        parcel.writeParcelable(this.u, i2);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        parcel.writeString(this.A);
        parcel.writeInt(this.B);
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, int i4, int i5, float f2, List<byte[]> list, int i6, float f3, DrmInitData drmInitData) {
        return a(str, str2, str3, i2, i3, i4, i5, f2, list, i6, f3, (byte[]) null, -1, (ColorInfo) null, drmInitData);
    }

    public Format b(int i2) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, this.f12512g, this.f12513h, this.f12514i, i2, this.f12516k, this.f12517l, this.m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, int i4, int i5, float f2, List<byte[]> list, int i6, float f3, byte[] bArr, int i7, ColorInfo colorInfo, DrmInitData drmInitData) {
        int i8 = i2;
        Format format = new Format(str, null, 0, 0, i8, str3, null, null, str2, i3, list, drmInitData, Long.MAX_VALUE, i4, i5, f2, i6, f3, bArr, i7, colorInfo, -1, -1, -1, -1, -1, null, -1);
        return format;
    }

    public boolean b(Format format) {
        if (this.f12516k.size() != format.f12516k.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.f12516k.size(); i2++) {
            if (!Arrays.equals(this.f12516k.get(i2), format.f12516k.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static Format a(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, List<byte[]> list, int i5, int i6, String str6) {
        int i7 = i2;
        int i8 = i5;
        int i9 = i6;
        Format format = new Format(str, str2, i8, i9, i7, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, -1, -1, -1, str6, -1);
        return format;
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return a(str, str2, str3, i2, i3, i4, i5, -1, list, drmInitData, i6, str4);
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, List<byte[]> list, DrmInitData drmInitData, int i7, String str4) {
        return a(str, str2, str3, i2, i3, i4, i5, i6, -1, -1, list, drmInitData, i7, str4, (Metadata) null);
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, List<byte[]> list, DrmInitData drmInitData, int i9, String str4, Metadata metadata) {
        int i10 = i2;
        int i11 = i9;
        Metadata metadata2 = metadata;
        Format format = new Format(str, null, i11, 0, i10, str3, metadata2, null, str2, i3, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i4, i5, i6, i7, i8, str4, -1);
        return format;
    }

    public static Format a(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, String str6, int i5) {
        int i6 = i2;
        int i7 = i3;
        int i8 = i4;
        Format format = new Format(str, str2, i7, i8, i6, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i5);
        return format;
    }

    public static Format a(String str, String str2, int i2, String str3) {
        return a(str, str2, i2, str3, (DrmInitData) null);
    }

    public static Format a(String str, String str2, int i2, String str3, DrmInitData drmInitData) {
        return a(str, str2, (String) null, -1, i2, str3, -1, drmInitData, Long.MAX_VALUE, (List<byte[]>) Collections.emptyList());
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, String str4, DrmInitData drmInitData, long j2) {
        return a(str, str2, str3, i2, i3, str4, -1, drmInitData, j2, (List<byte[]>) Collections.emptyList());
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, String str4, int i4, DrmInitData drmInitData, long j2, List<byte[]> list) {
        int i5 = i2;
        int i6 = i3;
        List<byte[]> list2 = list;
        Format format = new Format(str, null, i6, 0, i5, str3, null, null, str2, -1, list2, drmInitData, j2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i4);
        return format;
    }

    public static Format a(String str, String str2, String str3, int i2, int i3, List<byte[]> list, String str4, DrmInitData drmInitData) {
        int i4 = i2;
        int i5 = i3;
        Format format = new Format(str, null, i5, 0, i4, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1);
        return format;
    }

    public static Format a(String str, String str2, String str3, String str4, String str5, int i2, int i3, int i4, String str6) {
        int i5 = i2;
        int i6 = i3;
        int i7 = i4;
        Format format = new Format(str, str2, i6, i7, i5, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1);
        return format;
    }

    public static Format a(String str, String str2, long j2) {
        Format format = new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
        return format;
    }

    public static Format a(String str, String str2, String str3, int i2, DrmInitData drmInitData) {
        int i3 = i2;
        Format format = new Format(str, null, 0, 0, i3, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
        return format;
    }

    public Format a(long j2) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, this.f12512g, this.f12513h, this.f12514i, this.f12515j, this.f12516k, this.f12517l, j2, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public Format a(String str, String str2, String str3, String str4, Metadata metadata, int i2, int i3, int i4, int i5, int i6, String str5) {
        Metadata metadata2 = this.f12512g;
        Format format = new Format(str, str2, i6, this.f12509d, i2, str4, metadata2 != null ? metadata2.a(metadata) : metadata, this.f12513h, str3, this.f12515j, this.f12516k, this.f12517l, this.m, i3, i4, this.p, this.q, this.r, this.t, this.s, this.u, i5, this.w, this.x, this.y, this.z, str5, this.B);
        return format;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x005a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.exoplayer2.Format a(com.google.android.exoplayer2.Format r34) {
        /*
            r33 = this;
            r0 = r33
            r1 = r34
            if (r0 != r1) goto L_0x0007
            return r0
        L_0x0007:
            java.lang.String r2 = r0.f12514i
            int r2 = c.e.a.a.o.s.f(r2)
            java.lang.String r4 = r1.f12506a
            java.lang.String r3 = r1.f12507b
            if (r3 == 0) goto L_0x0014
            goto L_0x0016
        L_0x0014:
            java.lang.String r3 = r0.f12507b
        L_0x0016:
            r5 = r3
            java.lang.String r3 = r0.A
            r6 = 3
            r7 = 1
            if (r2 == r6) goto L_0x001f
            if (r2 != r7) goto L_0x0026
        L_0x001f:
            java.lang.String r6 = r1.A
            if (r6 == 0) goto L_0x0026
            r31 = r6
            goto L_0x0028
        L_0x0026:
            r31 = r3
        L_0x0028:
            int r3 = r0.f12510e
            r6 = -1
            if (r3 != r6) goto L_0x002f
            int r3 = r1.f12510e
        L_0x002f:
            r8 = r3
            java.lang.String r3 = r0.f12511f
            if (r3 != 0) goto L_0x0043
            java.lang.String r6 = r1.f12511f
            java.lang.String r6 = c.e.a.a.o.I.a((java.lang.String) r6, (int) r2)
            java.lang.String[] r9 = c.e.a.a.o.I.k(r6)
            int r9 = r9.length
            if (r9 != r7) goto L_0x0043
            r9 = r6
            goto L_0x0044
        L_0x0043:
            r9 = r3
        L_0x0044:
            com.google.android.exoplayer2.metadata.Metadata r3 = r0.f12512g
            if (r3 != 0) goto L_0x004b
            com.google.android.exoplayer2.metadata.Metadata r3 = r1.f12512g
            goto L_0x0051
        L_0x004b:
            com.google.android.exoplayer2.metadata.Metadata r6 = r1.f12512g
            com.google.android.exoplayer2.metadata.Metadata r3 = r3.a((com.google.android.exoplayer2.metadata.Metadata) r6)
        L_0x0051:
            r10 = r3
            float r3 = r0.p
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r6 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r6 != 0) goto L_0x0062
            r6 = 2
            if (r2 != r6) goto L_0x0062
            float r2 = r1.p
            r20 = r2
            goto L_0x0064
        L_0x0062:
            r20 = r3
        L_0x0064:
            int r2 = r0.f12508c
            int r3 = r1.f12508c
            r6 = r2 | r3
            int r2 = r0.f12509d
            int r3 = r1.f12509d
            r7 = r2 | r3
            com.google.android.exoplayer2.drm.DrmInitData r1 = r1.f12517l
            com.google.android.exoplayer2.drm.DrmInitData r2 = r0.f12517l
            com.google.android.exoplayer2.drm.DrmInitData r15 = com.google.android.exoplayer2.drm.DrmInitData.a((com.google.android.exoplayer2.drm.DrmInitData) r1, (com.google.android.exoplayer2.drm.DrmInitData) r2)
            com.google.android.exoplayer2.Format r1 = new com.google.android.exoplayer2.Format
            r3 = r1
            java.lang.String r11 = r0.f12513h
            java.lang.String r12 = r0.f12514i
            int r13 = r0.f12515j
            java.util.List<byte[]> r14 = r0.f12516k
            r34 = r1
            long r1 = r0.m
            r16 = r1
            int r1 = r0.n
            r18 = r1
            int r1 = r0.o
            r19 = r1
            int r1 = r0.q
            r21 = r1
            float r1 = r0.r
            r22 = r1
            byte[] r1 = r0.t
            r23 = r1
            int r1 = r0.s
            r24 = r1
            com.google.android.exoplayer2.video.ColorInfo r1 = r0.u
            r25 = r1
            int r1 = r0.v
            r26 = r1
            int r1 = r0.w
            r27 = r1
            int r1 = r0.x
            r28 = r1
            int r1 = r0.y
            r29 = r1
            int r1 = r0.z
            r30 = r1
            int r1 = r0.B
            r32 = r1
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32)
            return r34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.Format.a(com.google.android.exoplayer2.Format):com.google.android.exoplayer2.Format");
    }

    public Format(Parcel parcel) {
        this.f12506a = parcel.readString();
        this.f12507b = parcel.readString();
        this.f12508c = parcel.readInt();
        this.f12509d = parcel.readInt();
        this.f12510e = parcel.readInt();
        this.f12511f = parcel.readString();
        this.f12512g = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f12513h = parcel.readString();
        this.f12514i = parcel.readString();
        this.f12515j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f12516k = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f12516k.add(parcel.createByteArray());
        }
        this.f12517l = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.m = parcel.readLong();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.p = parcel.readFloat();
        this.q = parcel.readInt();
        this.r = parcel.readFloat();
        this.t = I.a(parcel) ? parcel.createByteArray() : null;
        this.s = parcel.readInt();
        this.u = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.v = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.A = parcel.readString();
        this.B = parcel.readInt();
    }

    public Format a(int i2, int i3) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, this.f12512g, this.f12513h, this.f12514i, this.f12515j, this.f12516k, this.f12517l, this.m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, i2, i3, this.A, this.B);
        return format;
    }

    public Format a(float f2) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, this.f12512g, this.f12513h, this.f12514i, this.f12515j, this.f12516k, this.f12517l, this.m, this.n, this.o, f2, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public Format a(DrmInitData drmInitData) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, this.f12512g, this.f12513h, this.f12514i, this.f12515j, this.f12516k, drmInitData, this.m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public Format a(Metadata metadata) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, this.f12510e, this.f12511f, metadata, this.f12513h, this.f12514i, this.f12515j, this.f12516k, this.f12517l, this.m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public Format a(int i2) {
        Format format = new Format(this.f12506a, this.f12507b, this.f12508c, this.f12509d, i2, this.f12511f, this.f12512g, this.f12513h, this.f12514i, this.f12515j, this.f12516k, this.f12517l, this.m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
        return format;
    }

    public int a() {
        int i2 = this.n;
        if (i2 == -1) {
            return -1;
        }
        int i3 = this.o;
        if (i3 == -1) {
            return -1;
        }
        return i2 * i3;
    }
}
