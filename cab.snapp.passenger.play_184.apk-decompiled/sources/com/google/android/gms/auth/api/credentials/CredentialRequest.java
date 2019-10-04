package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public final class CredentialRequest extends zzbfm {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    private int f2630a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2631b;
    private final String[] c;
    private final CredentialPickerConfig d;
    private final CredentialPickerConfig e;
    private final boolean f;
    private final String g;
    private final String h;
    private final boolean i;

    CredentialRequest(int i2, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.f2630a = i2;
        this.f2631b = z;
        this.c = (String[]) ap.checkNotNull(strArr);
        this.d = credentialPickerConfig == null ? new CredentialPickerConfig.a().build() : credentialPickerConfig;
        this.e = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().build() : credentialPickerConfig2;
        if (i2 < 3) {
            this.f = true;
            this.g = null;
            this.h = null;
        } else {
            this.f = z2;
            this.g = str;
            this.h = str2;
        }
        this.i = z3;
    }

    public final String[] getAccountTypes() {
        return this.c;
    }

    public final Set<String> getAccountTypesSet() {
        return new HashSet(Arrays.asList(this.c));
    }

    public final CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.e;
    }

    public final CredentialPickerConfig getCredentialPickerConfig() {
        return this.d;
    }

    public final String getIdTokenNonce() {
        return this.h;
    }

    public final String getServerClientId() {
        return this.g;
    }

    @Deprecated
    public final boolean getSupportsPasswordLogin() {
        return isPasswordLoginSupported();
    }

    public final boolean isIdTokenRequested() {
        return this.f;
    }

    public final boolean isPasswordLoginSupported() {
        return this.f2631b;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, isPasswordLoginSupported());
        el.zza(parcel, 2, getAccountTypes(), false);
        el.zza(parcel, 3, (Parcelable) getCredentialPickerConfig(), i2, false);
        el.zza(parcel, 4, (Parcelable) getCredentialHintPickerConfig(), i2, false);
        el.zza(parcel, 5, isIdTokenRequested());
        el.zza(parcel, 6, getServerClientId(), false);
        el.zza(parcel, 7, getIdTokenNonce(), false);
        el.zzc(parcel, 1000, this.f2630a);
        el.zza(parcel, 8, this.i);
        el.zzai(parcel, zze);
    }
}
