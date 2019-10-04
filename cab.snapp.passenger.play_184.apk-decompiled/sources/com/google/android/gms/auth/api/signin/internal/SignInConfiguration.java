package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class SignInConfiguration extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new w();

    /* renamed from: a  reason: collision with root package name */
    private final String f2660a;

    /* renamed from: b  reason: collision with root package name */
    private GoogleSignInOptions f2661b;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f2660a = ap.zzgm(str);
        this.f2661b = googleSignInOptions;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0021, code lost:
        if (r3.f2661b.equals(r4.f2661b) != false) goto L_0x0023;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            com.google.android.gms.auth.api.signin.internal.SignInConfiguration r4 = (com.google.android.gms.auth.api.signin.internal.SignInConfiguration) r4     // Catch:{ ClassCastException -> 0x0025 }
            java.lang.String r1 = r3.f2660a     // Catch:{ ClassCastException -> 0x0025 }
            java.lang.String r2 = r4.f2660a     // Catch:{ ClassCastException -> 0x0025 }
            boolean r1 = r1.equals(r2)     // Catch:{ ClassCastException -> 0x0025 }
            if (r1 == 0) goto L_0x0025
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r1 = r3.f2661b     // Catch:{ ClassCastException -> 0x0025 }
            if (r1 != 0) goto L_0x0019
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = r4.f2661b     // Catch:{ ClassCastException -> 0x0025 }
            if (r4 != 0) goto L_0x0025
            goto L_0x0023
        L_0x0019:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r1 = r3.f2661b     // Catch:{ ClassCastException -> 0x0025 }
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = r4.f2661b     // Catch:{ ClassCastException -> 0x0025 }
            boolean r4 = r1.equals(r4)     // Catch:{ ClassCastException -> 0x0025 }
            if (r4 == 0) goto L_0x0025
        L_0x0023:
            r4 = 1
            return r4
        L_0x0025:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.SignInConfiguration.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return new o().zzs(this.f2660a).zzs(this.f2661b).zzabn();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f2660a, false);
        el.zza(parcel, 5, (Parcelable) this.f2661b, i, false);
        el.zzai(parcel, zze);
    }

    public final GoogleSignInOptions zzabr() {
        return this.f2661b;
    }
}
