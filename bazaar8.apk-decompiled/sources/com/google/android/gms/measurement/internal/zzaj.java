package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.h.b.C0928j;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new C0928j();

    /* renamed from: a  reason: collision with root package name */
    public final String f13232a;

    /* renamed from: b  reason: collision with root package name */
    public final zzag f13233b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13234c;

    /* renamed from: d  reason: collision with root package name */
    public final long f13235d;

    public zzaj(String str, zzag zzag, String str2, long j2) {
        this.f13232a = str;
        this.f13233b = zzag;
        this.f13234c = str2;
        this.f13235d = j2;
    }

    public final String toString() {
        String str = this.f13234c;
        String str2 = this.f13232a;
        String valueOf = String.valueOf(this.f13233b);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 2, this.f13232a, false);
        a.a(parcel, 3, (Parcelable) this.f13233b, i2, false);
        a.a(parcel, 4, this.f13234c, false);
        a.a(parcel, 5, this.f13235d);
        a.a(parcel, a2);
    }

    public zzaj(zzaj zzaj, long j2) {
        r.a(zzaj);
        this.f13232a = zzaj.f13232a;
        this.f13233b = zzaj.f13233b;
        this.f13234c = zzaj.f13234c;
        this.f13235d = j2;
    }
}
