package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class HintRequest extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    private int f2632a;

    /* renamed from: b  reason: collision with root package name */
    private final CredentialPickerConfig f2633b;
    private final boolean c;
    private final boolean d;
    private final String[] e;
    private final boolean f;
    private final String g;
    private final String h;

    HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.f2632a = i;
        this.f2633b = (CredentialPickerConfig) ap.checkNotNull(credentialPickerConfig);
        this.c = z;
        this.d = z2;
        this.e = (String[]) ap.checkNotNull(strArr);
        if (this.f2632a < 2) {
            this.f = true;
            this.g = null;
            this.h = null;
            return;
        }
        this.f = z3;
        this.g = str;
        this.h = str2;
    }

    public final String[] getAccountTypes() {
        return this.e;
    }

    public final CredentialPickerConfig getHintPickerConfig() {
        return this.f2633b;
    }

    public final String getIdTokenNonce() {
        return this.h;
    }

    public final String getServerClientId() {
        return this.g;
    }

    public final boolean isEmailAddressIdentifierSupported() {
        return this.c;
    }

    public final boolean isIdTokenRequested() {
        return this.f;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, (Parcelable) getHintPickerConfig(), i, false);
        el.zza(parcel, 2, isEmailAddressIdentifierSupported());
        el.zza(parcel, 3, this.d);
        el.zza(parcel, 4, getAccountTypes(), false);
        el.zza(parcel, 5, isIdTokenRequested());
        el.zza(parcel, 6, getServerClientId(), false);
        el.zza(parcel, 7, getIdTokenNonce(), false);
        el.zzc(parcel, 1000, this.f2632a);
        el.zzai(parcel, zze);
    }
}
