package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.j;
import com.google.android.gms.common.zzc;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzz extends zzbfm {
    public static final Parcelable.Creator<zzz> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    String f2986a;

    /* renamed from: b  reason: collision with root package name */
    IBinder f2987b;
    Scope[] c;
    Bundle d;
    Account e;
    zzc[] f;
    private int g;
    private int h;
    private int i;

    public zzz(int i2) {
        this.g = 3;
        this.i = j.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.h = i2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: android.accounts.Account} */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v3, types: [com.google.android.gms.common.internal.o] */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    zzz(int r1, int r2, int r3, java.lang.String r4, android.os.IBinder r5, com.google.android.gms.common.api.Scope[] r6, android.os.Bundle r7, android.accounts.Account r8, com.google.android.gms.common.zzc[] r9) {
        /*
            r0 = this;
            r0.<init>()
            r0.g = r1
            r0.h = r2
            r0.i = r3
            java.lang.String r2 = "com.google.android.gms"
            boolean r3 = r2.equals(r4)
            if (r3 == 0) goto L_0x0014
            r0.f2986a = r2
            goto L_0x0016
        L_0x0014:
            r0.f2986a = r4
        L_0x0016:
            r2 = 2
            if (r1 >= r2) goto L_0x0038
            r1 = 0
            if (r5 == 0) goto L_0x0035
            if (r5 != 0) goto L_0x001f
            goto L_0x0031
        L_0x001f:
            java.lang.String r1 = "com.google.android.gms.common.internal.IAccountAccessor"
            android.os.IInterface r1 = r5.queryLocalInterface(r1)
            boolean r2 = r1 instanceof com.google.android.gms.common.internal.o
            if (r2 == 0) goto L_0x002c
            com.google.android.gms.common.internal.o r1 = (com.google.android.gms.common.internal.o) r1
            goto L_0x0031
        L_0x002c:
            com.google.android.gms.common.internal.q r1 = new com.google.android.gms.common.internal.q
            r1.<init>(r5)
        L_0x0031:
            android.accounts.Account r1 = com.google.android.gms.common.internal.a.zza(r1)
        L_0x0035:
            r0.e = r1
            goto L_0x003c
        L_0x0038:
            r0.f2987b = r5
            r0.e = r8
        L_0x003c:
            r0.c = r6
            r0.d = r7
            r0.f = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzz.<init>(int, int, int, java.lang.String, android.os.IBinder, com.google.android.gms.common.api.Scope[], android.os.Bundle, android.accounts.Account, com.google.android.gms.common.zzc[]):void");
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.g);
        el.zzc(parcel, 2, this.h);
        el.zzc(parcel, 3, this.i);
        el.zza(parcel, 4, this.f2986a, false);
        el.zza(parcel, 5, this.f2987b, false);
        el.zza(parcel, 6, (T[]) this.c, i2, false);
        el.zza(parcel, 7, this.d, false);
        el.zza(parcel, 8, (Parcelable) this.e, i2, false);
        el.zza(parcel, 10, (T[]) this.f, i2, false);
        el.zzai(parcel, zze);
    }
}
