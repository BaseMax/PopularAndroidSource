package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.b.a.b.a.c;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final int f12962a;

    /* renamed from: b  reason: collision with root package name */
    public int f12963b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f12964c;

    public GoogleSignInOptionsExtensionParcelable(int i2, int i3, Bundle bundle) {
        this.f12962a = i2;
        this.f12963b = i3;
        this.f12964c = bundle;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f12962a);
        a.a(parcel, 2, x());
        a.a(parcel, 3, this.f12964c, false);
        a.a(parcel, a2);
    }

    public int x() {
        return this.f12963b;
    }
}
