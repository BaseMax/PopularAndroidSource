package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzcln extends zzbfm {
    public static final Parcelable.Creator<zzcln> CREATOR = new my();

    /* renamed from: a  reason: collision with root package name */
    private int f3603a;

    /* renamed from: b  reason: collision with root package name */
    private Long f3604b;
    private Float c;
    private String d;
    private Double e;
    public final String name;
    public final String zziyf;
    public final long zzjji;

    zzcln(int i, String str, long j, Long l, Float f, String str2, String str3, Double d2) {
        this.f3603a = i;
        this.name = str;
        this.zzjji = j;
        this.f3604b = l;
        Double d3 = null;
        this.c = null;
        if (i == 1) {
            this.e = f != null ? Double.valueOf(f.doubleValue()) : d3;
        } else {
            this.e = d2;
        }
        this.d = str2;
        this.zziyf = str3;
    }

    zzcln(mz mzVar) {
        this(mzVar.c, mzVar.d, mzVar.e, mzVar.f3409b);
    }

    zzcln(String str, long j, Object obj, String str2) {
        ap.zzgm(str);
        this.f3603a = 2;
        this.name = str;
        this.zzjji = j;
        this.zziyf = str2;
        if (obj == null) {
            this.f3604b = null;
            this.c = null;
            this.e = null;
            this.d = null;
        } else if (obj instanceof Long) {
            this.f3604b = (Long) obj;
            this.c = null;
            this.e = null;
            this.d = null;
        } else if (obj instanceof String) {
            this.f3604b = null;
            this.c = null;
            this.e = null;
            this.d = (String) obj;
        } else if (obj instanceof Double) {
            this.f3604b = null;
            this.c = null;
            this.e = (Double) obj;
            this.d = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    public final Object getValue() {
        Long l = this.f3604b;
        if (l != null) {
            return l;
        }
        Double d2 = this.e;
        if (d2 != null) {
            return d2;
        }
        String str = this.d;
        if (str != null) {
            return str;
        }
        return null;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3603a);
        el.zza(parcel, 2, this.name, false);
        el.zza(parcel, 3, this.zzjji);
        el.zza(parcel, 4, this.f3604b, false);
        el.zza(parcel, 5, (Float) null, false);
        el.zza(parcel, 6, this.d, false);
        el.zza(parcel, 7, this.zziyf, false);
        el.zza(parcel, 8, this.e, false);
        el.zzai(parcel, zze);
    }
}
