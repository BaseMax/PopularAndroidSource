package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C0797u;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new C0797u();

    /* renamed from: a  reason: collision with root package name */
    public final int f13049a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public final IBinder f13050b;

    /* renamed from: c  reason: collision with root package name */
    public final Scope[] f13051c;

    /* renamed from: d  reason: collision with root package name */
    public Integer f13052d;

    /* renamed from: e  reason: collision with root package name */
    public Integer f13053e;

    /* renamed from: f  reason: collision with root package name */
    public Account f13054f;

    public AuthAccountRequest(int i2, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2, Account account) {
        this.f13049a = i2;
        this.f13050b = iBinder;
        this.f13051c = scopeArr;
        this.f13052d = num;
        this.f13053e = num2;
        this.f13054f = account;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13049a);
        a.a(parcel, 2, this.f13050b, false);
        a.a(parcel, 3, (T[]) this.f13051c, i2, false);
        a.a(parcel, 4, this.f13052d, false);
        a.a(parcel, 5, this.f13053e, false);
        a.a(parcel, 6, (Parcelable) this.f13054f, i2, false);
        a.a(parcel, a2);
    }
}
