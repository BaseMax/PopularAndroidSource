package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.g.f.nd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzy> CREATOR = new nd();

    /* renamed from: a  reason: collision with root package name */
    public final long f13210a;

    /* renamed from: b  reason: collision with root package name */
    public final long f13211b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f13212c;

    /* renamed from: d  reason: collision with root package name */
    public final String f13213d;

    /* renamed from: e  reason: collision with root package name */
    public final String f13214e;

    /* renamed from: f  reason: collision with root package name */
    public final String f13215f;

    /* renamed from: g  reason: collision with root package name */
    public final Bundle f13216g;

    public zzy(long j2, long j3, boolean z, String str, String str2, String str3, Bundle bundle) {
        this.f13210a = j2;
        this.f13211b = j3;
        this.f13212c = z;
        this.f13213d = str;
        this.f13214e = str2;
        this.f13215f = str3;
        this.f13216g = bundle;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13210a);
        a.a(parcel, 2, this.f13211b);
        a.a(parcel, 3, this.f13212c);
        a.a(parcel, 4, this.f13213d, false);
        a.a(parcel, 5, this.f13214e, false);
        a.a(parcel, 6, this.f13215f, false);
        a.a(parcel, 7, this.f13216g, false);
        a.a(parcel, a2);
    }
}
