package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

public final class bf implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final int f2943a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ax f2944b;

    public bf(ax axVar, int i) {
        this.f2944b = axVar;
        this.f2943a = i;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        x xVar;
        ax axVar = this.f2944b;
        if (iBinder == null) {
            ax.a(axVar);
            return;
        }
        synchronized (axVar.o) {
            ax axVar2 = this.f2944b;
            if (iBinder == null) {
                xVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                xVar = (queryLocalInterface == null || !(queryLocalInterface instanceof x)) ? new y(iBinder) : (x) queryLocalInterface;
            }
            x unused = axVar2.p = xVar;
        }
        this.f2944b.a(0, this.f2943a);
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f2944b.o) {
            x unused = this.f2944b.p = null;
        }
        this.f2944b.d.sendMessage(this.f2944b.d.obtainMessage(6, this.f2943a, 1));
    }
}
