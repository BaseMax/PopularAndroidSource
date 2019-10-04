package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.stats.a;
import java.util.HashMap;

final class j extends h implements Handler.Callback {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final HashMap<i, k> f2969a = new HashMap<>();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Context f2970b;
    /* access modifiers changed from: private */
    public final Handler c;
    /* access modifiers changed from: private */
    public final a d;
    private final long e;
    /* access modifiers changed from: private */
    public final long f;

    j(Context context) {
        this.f2970b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
        this.d = a.zzamc();
        this.e = 5000;
        this.f = 300000;
    }

    /* access modifiers changed from: protected */
    public final boolean a(i iVar, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        ap.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f2969a) {
            k kVar = this.f2969a.get(iVar);
            if (kVar == null) {
                kVar = new k(this, iVar);
                kVar.zza(serviceConnection, str);
                kVar.zzgi(str);
                this.f2969a.put(iVar, kVar);
            } else {
                this.c.removeMessages(0, iVar);
                if (!kVar.zza(serviceConnection)) {
                    kVar.zza(serviceConnection, str);
                    int state = kVar.getState();
                    if (state == 1) {
                        serviceConnection.onServiceConnected(kVar.getComponentName(), kVar.getBinder());
                    } else if (state == 2) {
                        kVar.zzgi(str);
                    }
                } else {
                    String valueOf = String.valueOf(iVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            isBound = kVar.isBound();
        }
        return isBound;
    }

    /* access modifiers changed from: protected */
    public final void b(i iVar, ServiceConnection serviceConnection, String str) {
        ap.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f2969a) {
            k kVar = this.f2969a.get(iVar);
            if (kVar == null) {
                String valueOf = String.valueOf(iVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (kVar.zza(serviceConnection)) {
                kVar.zzb(serviceConnection, str);
                if (kVar.zzalm()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, iVar), this.e);
                }
            } else {
                String valueOf2 = String.valueOf(iVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f2969a) {
                i iVar = (i) message.obj;
                k kVar = this.f2969a.get(iVar);
                if (kVar != null && kVar.zzalm()) {
                    if (kVar.isBound()) {
                        kVar.zzgj("GmsClientSupervisor");
                    }
                    this.f2969a.remove(iVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.f2969a) {
                i iVar2 = (i) message.obj;
                k kVar2 = this.f2969a.get(iVar2);
                if (kVar2 != null && kVar2.getState() == 3) {
                    String valueOf = String.valueOf(iVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.wtf("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = kVar2.getComponentName();
                    if (componentName == null) {
                        componentName = iVar2.getComponentName();
                    }
                    if (componentName == null) {
                        componentName = new ComponentName(iVar2.getPackage(), EnvironmentCompat.MEDIA_UNKNOWN);
                    }
                    kVar2.onServiceDisconnected(componentName);
                }
            }
            return true;
        }
    }
}
