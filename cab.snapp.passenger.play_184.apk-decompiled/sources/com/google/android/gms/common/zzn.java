package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class zzn extends zzbfm {
    public static final Parcelable.Creator<zzn> CREATOR = new r();

    /* renamed from: a  reason: collision with root package name */
    private final String f3022a;

    /* renamed from: b  reason: collision with root package name */
    private final l f3023b;
    private final boolean c;

    zzn(String str, IBinder iBinder, boolean z) {
        this.f3022a = str;
        this.f3023b = a(iBinder);
        this.c = z;
    }

    zzn(String str, l lVar, boolean z) {
        this.f3022a = str;
        this.f3023b = lVar;
        this.c = z;
    }

    private static l a(IBinder iBinder) {
        m mVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            a zzaga = t.zzam(iBinder).zzaga();
            byte[] bArr = zzaga == null ? null : (byte[]) m.zzx(zzaga);
            if (bArr != null) {
                mVar = new m(bArr);
            }
        } catch (RemoteException unused) {
        }
        return mVar;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f3022a, false);
        l lVar = this.f3023b;
        el.zza(parcel, 2, lVar == null ? null : lVar.asBinder(), false);
        el.zza(parcel, 3, this.c);
        el.zzai(parcel, zze);
    }
}
