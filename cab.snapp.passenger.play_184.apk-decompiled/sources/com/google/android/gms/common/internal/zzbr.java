package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzbr extends zzbfm {
    public static final Parcelable.Creator<zzbr> CREATOR = new aq();

    /* renamed from: a  reason: collision with root package name */
    private int f2980a;

    /* renamed from: b  reason: collision with root package name */
    private final Account f2981b;
    private final int c;
    private final GoogleSignInAccount d;

    zzbr(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f2980a = i;
        this.f2981b = account;
        this.c = i2;
        this.d = googleSignInAccount;
    }

    public zzbr(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2980a);
        el.zza(parcel, 2, (Parcelable) this.f2981b, i, false);
        el.zzc(parcel, 3, this.c);
        el.zza(parcel, 4, (Parcelable) this.d, i, false);
        el.zzai(parcel, zze);
    }
}
