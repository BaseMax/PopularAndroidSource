package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C;
import c.e.a.b.d.d.C0789l;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new C();

    /* renamed from: a  reason: collision with root package name */
    public final int f13077a;

    /* renamed from: b  reason: collision with root package name */
    public IBinder f13078b;

    /* renamed from: c  reason: collision with root package name */
    public ConnectionResult f13079c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13080d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13081e;

    public ResolveAccountResponse(int i2, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f13077a = i2;
        this.f13078b = iBinder;
        this.f13079c = connectionResult;
        this.f13080d = z;
        this.f13081e = z2;
    }

    public boolean A() {
        return this.f13081e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f13079c.equals(resolveAccountResponse.f13079c) && x().equals(resolveAccountResponse.x());
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13077a);
        a.a(parcel, 2, this.f13078b, false);
        a.a(parcel, 3, (Parcelable) y(), i2, false);
        a.a(parcel, 4, z());
        a.a(parcel, 5, A());
        a.a(parcel, a2);
    }

    public C0789l x() {
        return C0789l.a.a(this.f13078b);
    }

    public ConnectionResult y() {
        return this.f13079c;
    }

    public boolean z() {
        return this.f13080d;
    }
}
