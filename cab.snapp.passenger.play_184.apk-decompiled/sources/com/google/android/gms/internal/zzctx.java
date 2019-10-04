package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class zzctx extends zzbfm {
    public static final Parcelable.Creator<zzctx> CREATOR = new nw();

    /* renamed from: a  reason: collision with root package name */
    private static byte[][] f3605a = new byte[0][];

    /* renamed from: b  reason: collision with root package name */
    private static zzctx f3606b;
    private static final nv k = new nr();
    private static final nv l = new ns();
    private static final nv m = new nt();
    private static final nv n = new nu();
    private String c;
    private byte[] d;
    private byte[][] e;
    private byte[][] f;
    private byte[][] g;
    private byte[][] h;
    private int[] i;
    private byte[][] j;

    /* JADX WARNING: type inference failed for: r0v4, types: [com.google.android.gms.internal.nv, com.google.android.gms.internal.nr] */
    /* JADX WARNING: type inference failed for: r0v5, types: [com.google.android.gms.internal.nv, com.google.android.gms.internal.ns] */
    /* JADX WARNING: type inference failed for: r0v6, types: [com.google.android.gms.internal.nv, com.google.android.gms.internal.nt] */
    /* JADX WARNING: type inference failed for: r0v7, types: [com.google.android.gms.internal.nv, com.google.android.gms.internal.nu] */
    static {
        byte[][] bArr = f3605a;
        zzctx zzctx = new zzctx("", null, bArr, bArr, bArr, bArr, null, null);
        f3606b = zzctx;
    }

    public zzctx(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.c = str;
        this.d = bArr;
        this.e = bArr2;
        this.f = bArr3;
        this.g = bArr4;
        this.h = bArr5;
        this.i = iArr;
        this.j = bArr6;
    }

    private static List<Integer> a(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int valueOf : iArr) {
            arrayList.add(Integer.valueOf(valueOf));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List<String> a(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] encodeToString : bArr) {
            arrayList.add(Base64.encodeToString(encodeToString, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void a(StringBuilder sb, String str, int[] iArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (iArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = iArr.length;
            int i2 = 0;
            boolean z = true;
            while (i2 < length) {
                int i3 = iArr[i2];
                if (!z) {
                    sb.append(", ");
                }
                sb.append(i3);
                i2++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    private static void a(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = bArr.length;
            int i2 = 0;
            boolean z = true;
            while (i2 < length) {
                byte[] bArr2 = bArr[i2];
                if (!z) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i2++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzctx) {
            zzctx zzctx = (zzctx) obj;
            if (nx.a(this.c, zzctx.c) && Arrays.equals(this.d, zzctx.d) && nx.a(a(this.e), a(zzctx.e)) && nx.a(a(this.f), a(zzctx.f)) && nx.a(a(this.g), a(zzctx.g)) && nx.a(a(this.h), a(zzctx.h)) && nx.a(a(this.i), a(zzctx.i)) && nx.a(a(this.j), a(zzctx.j))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str2 = this.c;
        if (str2 == null) {
            str = "null";
        } else {
            StringBuilder sb2 = new StringBuilder("'".length() + String.valueOf(str2).length() + "'".length());
            sb2.append("'");
            sb2.append(str2);
            sb2.append("'");
            str = sb2.toString();
        }
        sb.append(str);
        sb.append(", ");
        byte[] bArr = this.d;
        sb.append("direct");
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        a(sb, "GAIA", this.e);
        sb.append(", ");
        a(sb, "PSEUDO", this.f);
        sb.append(", ");
        a(sb, "ALWAYS", this.g);
        sb.append(", ");
        a(sb, "OTHER", this.h);
        sb.append(", ");
        a(sb, "weak", this.i);
        sb.append(", ");
        a(sb, "directs", this.j);
        sb.append(")");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.c, false);
        el.zza(parcel, 3, this.d, false);
        el.zza(parcel, 4, this.e, false);
        el.zza(parcel, 5, this.f, false);
        el.zza(parcel, 6, this.g, false);
        el.zza(parcel, 7, this.h, false);
        el.zza(parcel, 8, this.i, false);
        el.zza(parcel, 9, this.j, false);
        el.zzai(parcel, zze);
    }
}
