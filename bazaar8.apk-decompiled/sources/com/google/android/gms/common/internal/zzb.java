package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.F;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new F();

    /* renamed from: a  reason: collision with root package name */
    public Bundle f13086a;

    /* renamed from: b  reason: collision with root package name */
    public Feature[] f13087b;

    public zzb(Bundle bundle, Feature[] featureArr) {
        this.f13086a = bundle;
        this.f13087b = featureArr;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13086a, false);
        a.a(parcel, 2, (T[]) this.f13087b, i2, false);
        a.a(parcel, a2);
    }

    public zzb() {
    }
}
