package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.e.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f13089a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13090b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13091c;

    public FavaDiagnosticsEntity(int i2, String str, int i3) {
        this.f13089a = i2;
        this.f13090b = str;
        this.f13091c = i3;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f13089a);
        c.e.a.b.d.d.a.a.a(parcel, 2, this.f13090b, false);
        c.e.a.b.d.d.a.a.a(parcel, 3, this.f13091c);
        c.e.a.b.d.d.a.a.a(parcel, a2);
    }
}
