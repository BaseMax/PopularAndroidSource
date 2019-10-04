package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import c.e.a.b.d.d.M;
import c.e.a.b.d.m;
import c.e.a.b.d.n;
import c.e.a.b.d.s;
import c.e.a.b.e.a;
import c.e.a.b.e.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new s();

    /* renamed from: a  reason: collision with root package name */
    public final String f13141a;

    /* renamed from: b  reason: collision with root package name */
    public final m f13142b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f13143c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f13144d;

    public zzk(String str, IBinder iBinder, boolean z, boolean z2) {
        this.f13141a = str;
        this.f13142b = a(iBinder);
        this.f13143c = z;
        this.f13144d = z2;
    }

    public static m a(IBinder iBinder) {
        byte[] bArr;
        n nVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            a y = M.a(iBinder).y();
            if (y == null) {
                bArr = null;
            } else {
                bArr = (byte[]) b.a(y);
            }
            if (bArr != null) {
                nVar = new n(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return nVar;
        } catch (RemoteException e2) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e2);
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f13141a, false);
        m mVar = this.f13142b;
        if (mVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            mVar = null;
        } else {
            mVar.asBinder();
        }
        c.e.a.b.d.d.a.a.a(parcel, 2, (IBinder) mVar, false);
        c.e.a.b.d.d.a.a.a(parcel, 3, this.f13143c);
        c.e.a.b.d.d.a.a.a(parcel, 4, this.f13144d);
        c.e.a.b.d.d.a.a.a(parcel, a2);
    }

    public zzk(String str, m mVar, boolean z, boolean z2) {
        this.f13141a = str;
        this.f13142b = mVar;
        this.f13143c = z;
        this.f13144d = z2;
    }
}
