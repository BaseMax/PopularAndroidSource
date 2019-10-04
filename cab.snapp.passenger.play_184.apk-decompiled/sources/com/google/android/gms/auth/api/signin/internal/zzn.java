package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.d;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzn extends zzbfm {
    public static final Parcelable.Creator<zzn> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    private int f2680a;

    /* renamed from: b  reason: collision with root package name */
    private int f2681b;
    private Bundle c;

    zzn(int i, int i2, Bundle bundle) {
        this.f2680a = i;
        this.f2681b = i2;
        this.c = bundle;
    }

    public zzn(d dVar) {
        this(1, dVar.getExtensionType(), dVar.toBundle());
    }

    public final int getType() {
        return this.f2681b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2680a);
        el.zzc(parcel, 2, this.f2681b);
        el.zza(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
