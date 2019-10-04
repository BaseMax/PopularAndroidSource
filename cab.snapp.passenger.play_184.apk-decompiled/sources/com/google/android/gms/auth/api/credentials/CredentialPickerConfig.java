package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class CredentialPickerConfig extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    private int f2626a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2627b;
    private final boolean c;
    @Deprecated
    private final boolean d;
    private final int e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f2628a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f2629b = true;
        int c = 1;

        public final CredentialPickerConfig build() {
            return new CredentialPickerConfig(this, (byte) 0);
        }

        @Deprecated
        public final a setForNewAccount(boolean z) {
            this.c = z ? 3 : 1;
            return this;
        }

        public final a setPrompt(int i) {
            this.c = i;
            return this;
        }

        public final a setShowAddAccountButton(boolean z) {
            this.f2628a = z;
            return this;
        }

        public final a setShowCancelButton(boolean z) {
            this.f2629b = z;
            return this;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: int} */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    CredentialPickerConfig(int r2, boolean r3, boolean r4, boolean r5, int r6) {
        /*
            r1 = this;
            r1.<init>()
            r1.f2626a = r2
            r1.f2627b = r3
            r1.c = r4
            r3 = 1
            r4 = 3
            r0 = 2
            if (r2 >= r0) goto L_0x0016
            r1.d = r5
            if (r5 == 0) goto L_0x0013
            r3 = 3
        L_0x0013:
            r1.e = r3
            return
        L_0x0016:
            if (r6 != r4) goto L_0x0019
            goto L_0x001a
        L_0x0019:
            r3 = 0
        L_0x001a:
            r1.d = r3
            r1.e = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.credentials.CredentialPickerConfig.<init>(int, boolean, boolean, boolean, int):void");
    }

    /* synthetic */ CredentialPickerConfig(a aVar, byte b2) {
        this(aVar);
    }

    @Deprecated
    public final boolean isForNewAccount() {
        return this.e == 3;
    }

    public final boolean shouldShowAddAccountButton() {
        return this.f2627b;
    }

    public final boolean shouldShowCancelButton() {
        return this.c;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, shouldShowAddAccountButton());
        el.zza(parcel, 2, shouldShowCancelButton());
        el.zza(parcel, 3, isForNewAccount());
        el.zzc(parcel, 4, this.e);
        el.zzc(parcel, 1000, this.f2626a);
        el.zzai(parcel, zze);
    }

    private CredentialPickerConfig(a aVar) {
        this(2, aVar.f2628a, aVar.f2629b, false, aVar.c);
    }
}
