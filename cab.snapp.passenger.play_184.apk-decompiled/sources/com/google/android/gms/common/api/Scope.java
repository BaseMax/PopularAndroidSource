package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class Scope extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new t();

    /* renamed from: a  reason: collision with root package name */
    private int f2730a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2731b;

    Scope(int i, String str) {
        ap.zzh(str, "scopeUri must not be null or empty");
        this.f2730a = i;
        this.f2731b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f2731b.equals(((Scope) obj).f2731b);
    }

    public final int hashCode() {
        return this.f2731b.hashCode();
    }

    public final String toString() {
        return this.f2731b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2730a);
        el.zza(parcel, 2, this.f2731b, false);
        el.zzai(parcel, zze);
    }

    public final String zzagw() {
        return this.f2731b;
    }
}
