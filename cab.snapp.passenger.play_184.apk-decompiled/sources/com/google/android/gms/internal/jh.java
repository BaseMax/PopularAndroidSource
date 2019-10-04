package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.ap;

class jh extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static String f3241a = jh.class.getName();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final jx f3242b;
    private boolean c;
    private boolean d;

    jh(jx jxVar) {
        ap.checkNotNull(jxVar);
        this.f3242b = jxVar;
    }

    public void onReceive(Context context, Intent intent) {
        this.f3242b.a();
        String action = intent.getAction();
        this.f3242b.zzawy().zzazj().zzj("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zzzs = this.f3242b.zzbab().zzzs();
            if (this.d != zzzs) {
                this.d = zzzs;
                this.f3242b.zzawx().zzg(new ji(this, zzzs));
            }
            return;
        }
        this.f3242b.zzawy().zzazf().zzj("NetworkBroadcastReceiver received unknown action", action);
    }

    public final void unregister() {
        this.f3242b.a();
        this.f3242b.zzawx().zzve();
        this.f3242b.zzawx().zzve();
        if (this.c) {
            this.f3242b.zzawy().zzazj().log("Unregistering connectivity change receiver");
            this.c = false;
            this.d = false;
            try {
                this.f3242b.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f3242b.zzawy().zzazd().zzj("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void zzzp() {
        this.f3242b.a();
        this.f3242b.zzawx().zzve();
        if (!this.c) {
            this.f3242b.getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.d = this.f3242b.zzbab().zzzs();
            this.f3242b.zzawy().zzazj().zzj("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.d));
            this.c = true;
        }
    }
}
