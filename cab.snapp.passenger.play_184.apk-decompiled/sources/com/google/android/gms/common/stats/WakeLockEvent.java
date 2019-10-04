package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.el;
import java.util.List;

public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    private int f2996a;

    /* renamed from: b  reason: collision with root package name */
    private final long f2997b;
    private int c;
    private final String d;
    private final String e;
    private final String f;
    private final int g;
    private final List<String> h;
    private final String i;
    private final long j;
    private int k;
    private final String l;
    private final float m;
    private final long n;
    private long o;

    WakeLockEvent(int i2, long j2, int i3, String str, int i4, List<String> list, String str2, long j3, int i5, String str3, String str4, float f2, long j4, String str5) {
        this.f2996a = i2;
        this.f2997b = j2;
        this.c = i3;
        this.d = str;
        this.e = str3;
        this.f = str5;
        this.g = i4;
        this.o = -1;
        this.h = list;
        this.i = str2;
        this.j = j3;
        this.k = i5;
        this.l = str4;
        this.m = f2;
        this.n = j4;
    }

    public WakeLockEvent(long j2, int i2, String str, int i3, List<String> list, String str2, long j3, int i4, String str3, String str4, float f2, long j4, String str5) {
        this(2, j2, i2, str, i3, list, str2, j3, i4, str3, str4, f2, j4, str5);
    }

    public final int getEventType() {
        return this.c;
    }

    public final long getTimeMillis() {
        return this.f2997b;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2996a);
        el.zza(parcel, 2, getTimeMillis());
        el.zza(parcel, 4, this.d, false);
        el.zzc(parcel, 5, this.g);
        el.zzb(parcel, 6, this.h, false);
        el.zza(parcel, 8, this.j);
        el.zza(parcel, 10, this.e, false);
        el.zzc(parcel, 11, getEventType());
        el.zza(parcel, 12, this.i, false);
        el.zza(parcel, 13, this.l, false);
        el.zzc(parcel, 14, this.k);
        el.zza(parcel, 15, this.m);
        el.zza(parcel, 16, this.n);
        el.zza(parcel, 17, this.f, false);
        el.zzai(parcel, zze);
    }

    public final long zzamd() {
        return this.o;
    }

    public final String zzame() {
        String str = this.d;
        int i2 = this.g;
        List<String> list = this.h;
        String str2 = "";
        String join = list == null ? str2 : TextUtils.join(",", list);
        int i3 = this.k;
        String str3 = this.e;
        if (str3 == null) {
            str3 = str2;
        }
        String str4 = this.l;
        if (str4 == null) {
            str4 = str2;
        }
        float f2 = this.m;
        String str5 = this.f;
        if (str5 != null) {
            str2 = str5;
        }
        StringBuilder sb = new StringBuilder("\t".length() + 37 + String.valueOf(str).length() + "\t".length() + "\t".length() + String.valueOf(join).length() + "\t".length() + "\t".length() + String.valueOf(str3).length() + "\t".length() + String.valueOf(str4).length() + "\t".length() + "\t".length() + String.valueOf(str2).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i3);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(f2);
        sb.append("\t");
        sb.append(str2);
        return sb.toString();
    }
}
