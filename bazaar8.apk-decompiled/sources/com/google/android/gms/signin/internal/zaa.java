package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.a.g;
import c.e.a.b.d.d.a.a;
import c.e.a.b.i.a.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zaa extends AbstractSafeParcelable implements g {
    public static final Parcelable.Creator<zaa> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f13269a;

    /* renamed from: b  reason: collision with root package name */
    public int f13270b;

    /* renamed from: c  reason: collision with root package name */
    public Intent f13271c;

    public zaa(int i2, int i3, Intent intent) {
        this.f13269a = i2;
        this.f13270b = i3;
        this.f13271c = intent;
    }

    public final Status w() {
        if (this.f13270b == 0) {
            return Status.f12976a;
        }
        return Status.f12980e;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13269a);
        a.a(parcel, 2, this.f13270b);
        a.a(parcel, 3, (Parcelable) this.f13271c, i2, false);
        a.a(parcel, a2);
    }

    public zaa() {
        this(0, null);
    }

    public zaa(int i2, Intent intent) {
        this(2, 0, null);
    }
}
