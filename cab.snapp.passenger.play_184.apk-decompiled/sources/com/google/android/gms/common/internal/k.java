package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.stats.a;
import java.util.HashSet;
import java.util.Set;

final class k implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Set<ServiceConnection> f2971a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private int f2972b = 2;
    private boolean c;
    private IBinder d;
    private final i e;
    private ComponentName f;
    private /* synthetic */ j g;

    public k(j jVar, i iVar) {
        this.g = jVar;
        this.e = iVar;
    }

    public final IBinder getBinder() {
        return this.d;
    }

    public final ComponentName getComponentName() {
        return this.f;
    }

    public final int getState() {
        return this.f2972b;
    }

    public final boolean isBound() {
        return this.c;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.f2969a) {
            this.g.c.removeMessages(1, this.e);
            this.d = iBinder;
            this.f = componentName;
            for (ServiceConnection onServiceConnected : this.f2971a) {
                onServiceConnected.onServiceConnected(componentName, iBinder);
            }
            this.f2972b = 1;
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.f2969a) {
            this.g.c.removeMessages(1, this.e);
            this.d = null;
            this.f = componentName;
            for (ServiceConnection onServiceDisconnected : this.f2971a) {
                onServiceDisconnected.onServiceDisconnected(componentName);
            }
            this.f2972b = 2;
        }
    }

    public final void zza(ServiceConnection serviceConnection, String str) {
        a unused = this.g.d;
        Context unused2 = this.g.f2970b;
        this.e.zzall();
        this.f2971a.add(serviceConnection);
    }

    public final boolean zza(ServiceConnection serviceConnection) {
        return this.f2971a.contains(serviceConnection);
    }

    public final boolean zzalm() {
        return this.f2971a.isEmpty();
    }

    public final void zzb(ServiceConnection serviceConnection, String str) {
        a unused = this.g.d;
        Context unused2 = this.g.f2970b;
        this.f2971a.remove(serviceConnection);
    }

    public final void zzgi(String str) {
        this.f2972b = 3;
        this.c = this.g.d.zza(this.g.f2970b, str, this.e.zzall(), this, this.e.zzalk());
        if (this.c) {
            this.g.c.sendMessageDelayed(this.g.c.obtainMessage(1, this.e), this.g.f);
            return;
        }
        this.f2972b = 2;
        try {
            a unused = this.g.d;
            this.g.f2970b.unbindService(this);
        } catch (IllegalArgumentException unused2) {
        }
    }

    public final void zzgj(String str) {
        this.g.c.removeMessages(1, this.e);
        a unused = this.g.d;
        this.g.f2970b.unbindService(this);
        this.c = false;
        this.f2972b = 2;
    }
}
