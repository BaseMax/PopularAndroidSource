package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class IdToken extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    private final String f2634a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2635b;

    public IdToken(String str, String str2) {
        ap.checkArgument(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        ap.checkArgument(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f2634a = str;
        this.f2635b = str2;
    }

    public final String getAccountType() {
        return this.f2634a;
    }

    public final String getIdToken() {
        return this.f2635b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, getAccountType(), false);
        el.zza(parcel, 2, getIdToken(), false);
        el.zzai(parcel, zze);
    }
}
