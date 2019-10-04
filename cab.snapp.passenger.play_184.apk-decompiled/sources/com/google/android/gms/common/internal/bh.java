package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

public final class bh extends ay {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f2946a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ax f2947b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public bh(ax axVar, int i, IBinder iBinder, Bundle bundle) {
        super(axVar, i, bundle);
        this.f2947b = axVar;
        this.f2946a = iBinder;
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult) {
        if (this.f2947b.v != null) {
            this.f2947b.v.onConnectionFailed(connectionResult);
        }
        this.f2947b.a(connectionResult);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        boolean z = false;
        try {
            String interfaceDescriptor = this.f2946a.getInterfaceDescriptor();
            if (!this.f2947b.zzhj().equals(interfaceDescriptor)) {
                String zzhj = this.f2947b.zzhj();
                StringBuilder sb = new StringBuilder(String.valueOf(zzhj).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(zzhj);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                return false;
            }
            IInterface zzd = this.f2947b.zzd(this.f2946a);
            if (zzd != null && (this.f2947b.a(2, 4, zzd) || this.f2947b.a(3, 4, zzd))) {
                ConnectionResult unused = this.f2947b.y = null;
                Bundle zzafi = this.f2947b.zzafi();
                if (this.f2947b.u != null) {
                    this.f2947b.u.onConnected(zzafi);
                }
                z = true;
            }
            return z;
        } catch (RemoteException unused2) {
        }
    }
}
