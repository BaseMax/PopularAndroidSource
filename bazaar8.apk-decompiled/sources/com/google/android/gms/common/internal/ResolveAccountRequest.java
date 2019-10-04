package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.B;
import c.e.a.b.d.d.a.a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new B();

    /* renamed from: a  reason: collision with root package name */
    public final int f13073a;

    /* renamed from: b  reason: collision with root package name */
    public final Account f13074b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13075c;

    /* renamed from: d  reason: collision with root package name */
    public final GoogleSignInAccount f13076d;

    public ResolveAccountRequest(int i2, Account account, int i3, GoogleSignInAccount googleSignInAccount) {
        this.f13073a = i2;
        this.f13074b = account;
        this.f13075c = i3;
        this.f13076d = googleSignInAccount;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13073a);
        a.a(parcel, 2, (Parcelable) x(), i2, false);
        a.a(parcel, 3, y());
        a.a(parcel, 4, (Parcelable) z(), i2, false);
        a.a(parcel, a2);
    }

    public Account x() {
        return this.f13074b;
    }

    public int y() {
        return this.f13075c;
    }

    public GoogleSignInAccount z() {
        return this.f13076d;
    }

    public ResolveAccountRequest(Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i2, googleSignInAccount);
    }
}
