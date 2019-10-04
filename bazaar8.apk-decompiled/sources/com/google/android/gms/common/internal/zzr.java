package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.U;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

@Deprecated
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new U();

    /* renamed from: a  reason: collision with root package name */
    public final int f13088a;

    public zzr(int i2) {
        this.f13088a = i2;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13088a);
        a.a(parcel, a2);
    }
}
