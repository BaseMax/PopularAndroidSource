package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.i.a.i;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    public final int f13274a;

    /* renamed from: b  reason: collision with root package name */
    public final ConnectionResult f13275b;

    /* renamed from: c  reason: collision with root package name */
    public final ResolveAccountResponse f13276c;

    public zaj(int i2, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.f13274a = i2;
        this.f13275b = connectionResult;
        this.f13276c = resolveAccountResponse;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13274a);
        a.a(parcel, 2, (Parcelable) this.f13275b, i2, false);
        a.a(parcel, 3, (Parcelable) this.f13276c, i2, false);
        a.a(parcel, a2);
    }

    public final ConnectionResult x() {
        return this.f13275b;
    }

    public final ResolveAccountResponse y() {
        return this.f13276c;
    }

    public zaj(int i2) {
        this(new ConnectionResult(8, null), null);
    }

    public zaj(ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, null);
    }
}
