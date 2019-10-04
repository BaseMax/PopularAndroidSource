package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.i.a.h;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zah> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    public final int f13272a;

    /* renamed from: b  reason: collision with root package name */
    public final ResolveAccountRequest f13273b;

    public zah(int i2, ResolveAccountRequest resolveAccountRequest) {
        this.f13272a = i2;
        this.f13273b = resolveAccountRequest;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13272a);
        a.a(parcel, 2, (Parcelable) this.f13273b, i2, false);
        a.a(parcel, a2);
    }

    public zah(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }
}
