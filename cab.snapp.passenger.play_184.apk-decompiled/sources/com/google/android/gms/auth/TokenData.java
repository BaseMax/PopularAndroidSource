package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;
import java.util.List;

public class TokenData extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    private int f2606a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2607b;
    private final Long c;
    private final boolean d;
    private final boolean e;
    private final List<String> f;

    TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.f2606a = i;
        this.f2607b = ap.zzgm(str);
        this.c = l;
        this.d = z;
        this.e = z2;
        this.f = list;
    }

    public static TokenData zzd(Bundle bundle, String str) {
        Class<TokenData> cls = TokenData.class;
        bundle.setClassLoader(cls.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(cls.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f2607b, tokenData.f2607b) && ag.equal(this.c, tokenData.c) && this.d == tokenData.d && this.e == tokenData.e && ag.equal(this.f, tokenData.f);
    }

    public final String getToken() {
        return this.f2607b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2607b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), this.f});
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2606a);
        el.zza(parcel, 2, this.f2607b, false);
        el.zza(parcel, 3, this.c, false);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e);
        el.zzb(parcel, 6, this.f, false);
        el.zzai(parcel, zze);
    }
}
