package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import java.util.Arrays;

public final class zzbew extends zzbfm {
    public static final Parcelable.Creator<zzbew> CREATOR = new dw();

    /* renamed from: a  reason: collision with root package name */
    private String f3565a;

    /* renamed from: b  reason: collision with root package name */
    private int f3566b;
    private String c;
    private String d;
    private boolean e;
    private boolean f;
    private int g;
    public final String zzfjb;
    public final int zzfjc;

    public zzbew(String str, int i, int i2, String str2, String str3, String str4, boolean z, int i3) {
        this.f3565a = (String) ap.checkNotNull(str);
        this.f3566b = i;
        this.zzfjc = i2;
        this.zzfjb = str2;
        this.c = str3;
        this.d = str4;
        this.e = !z;
        this.f = z;
        this.g = i3;
    }

    public zzbew(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3) {
        this.f3565a = str;
        this.f3566b = i;
        this.zzfjc = i2;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.zzfjb = str4;
        this.f = z2;
        this.g = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbew) {
            zzbew zzbew = (zzbew) obj;
            return ag.equal(this.f3565a, zzbew.f3565a) && this.f3566b == zzbew.f3566b && this.zzfjc == zzbew.zzfjc && ag.equal(this.zzfjb, zzbew.zzfjb) && ag.equal(this.c, zzbew.c) && ag.equal(this.d, zzbew.d) && this.e == zzbew.e && this.f == zzbew.f && this.g == zzbew.g;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3565a, Integer.valueOf(this.f3566b), Integer.valueOf(this.zzfjc), this.zzfjb, this.c, this.d, Boolean.valueOf(this.e), Boolean.valueOf(this.f), Integer.valueOf(this.g)});
    }

    public final String toString() {
        return "PlayLoggerContext[" + "package=" + this.f3565a + ',' + "packageVersionCode=" + this.f3566b + ',' + "logSource=" + this.zzfjc + ',' + "logSourceName=" + this.zzfjb + ',' + "uploadAccount=" + this.c + ',' + "loggingId=" + this.d + ',' + "logAndroidId=" + this.e + ',' + "isAnonymous=" + this.f + ',' + "qosTier=" + this.g + "]";
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f3565a, false);
        el.zzc(parcel, 3, this.f3566b);
        el.zzc(parcel, 4, this.zzfjc);
        el.zza(parcel, 5, this.c, false);
        el.zza(parcel, 6, this.d, false);
        el.zza(parcel, 7, this.e);
        el.zza(parcel, 8, this.zzfjb, false);
        el.zza(parcel, 9, this.f);
        el.zzc(parcel, 10, this.g);
        el.zzai(parcel, zze);
    }
}
