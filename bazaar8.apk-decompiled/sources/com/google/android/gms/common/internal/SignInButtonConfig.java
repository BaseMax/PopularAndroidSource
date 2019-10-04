package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.D;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new D();

    /* renamed from: a  reason: collision with root package name */
    public final int f13082a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13083b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13084c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public final Scope[] f13085d;

    public SignInButtonConfig(int i2, int i3, int i4, Scope[] scopeArr) {
        this.f13082a = i2;
        this.f13083b = i3;
        this.f13084c = i4;
        this.f13085d = scopeArr;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13082a);
        a.a(parcel, 2, x());
        a.a(parcel, 3, y());
        a.a(parcel, 4, (T[]) z(), i2, false);
        a.a(parcel, a2);
    }

    public int x() {
        return this.f13083b;
    }

    public int y() {
        return this.f13084c;
    }

    @Deprecated
    public Scope[] z() {
        return this.f13085d;
    }
}
