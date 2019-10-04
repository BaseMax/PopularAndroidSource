package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public class SignInAccount extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new k();
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    private String f2652a;

    /* renamed from: b  reason: collision with root package name */
    private GoogleSignInAccount f2653b;
    @Deprecated
    private String c;

    SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f2653b = googleSignInAccount;
        this.f2652a = ap.zzh(str, "8.3 and 8.4 SDKs require non-null email");
        this.c = ap.zzh(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    public final GoogleSignInAccount getGoogleSignInAccount() {
        return this.f2653b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 4, this.f2652a, false);
        el.zza(parcel, 7, (Parcelable) this.f2653b, i, false);
        el.zza(parcel, 8, this.c, false);
        el.zzai(parcel, zze);
    }
}
