package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.e.b.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f13126a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13127b;

    /* renamed from: c  reason: collision with root package name */
    public final FastJsonResponse.Field<?, ?> f13128c;

    public zam(int i2, String str, FastJsonResponse.Field<?, ?> field) {
        this.f13126a = i2;
        this.f13127b = str;
        this.f13128c = field;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13126a);
        a.a(parcel, 2, this.f13127b, false);
        a.a(parcel, 3, (Parcelable) this.f13128c, i2, false);
        a.a(parcel, a2);
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.f13126a = 1;
        this.f13127b = str;
        this.f13128c = field;
    }
}
