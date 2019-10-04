package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.ap;

class bq extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static String f3096a = bq.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private final z f3097b;
    private boolean c;
    private boolean d;

    bq(z zVar) {
        ap.checkNotNull(zVar);
        this.f3097b = zVar;
    }

    private final void a() {
        this.f3097b.zzwt();
        this.f3097b.zzwx();
    }

    private final boolean b() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f3097b.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
        } catch (SecurityException unused) {
        }
        return false;
    }

    public final boolean isConnected() {
        if (!this.c) {
            this.f3097b.zzwt().zzdx("Connectivity unknown. Receiver not registered");
        }
        return this.d;
    }

    public final void unregister() {
        if (this.c) {
            this.f3097b.zzwt().zzdu("Unregistering connectivity change receiver");
            this.c = false;
            this.d = false;
            try {
                this.f3097b.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f3097b.zzwt().zze("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void zzzp() {
        a();
        if (!this.c) {
            Context context = this.f3097b.getContext();
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
            intentFilter.addCategory(context.getPackageName());
            context.registerReceiver(this, intentFilter);
            this.d = b();
            this.f3097b.zzwt().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.d));
            this.c = true;
        }
    }

    public final void zzzr() {
        Context context = this.f3097b.getContext();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(f3096a, true);
        context.sendOrderedBroadcast(intent, null);
    }

    public void onReceive(Context context, Intent intent) {
        a();
        String action = intent.getAction();
        this.f3097b.zzwt().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean b2 = b();
            if (this.d != b2) {
                this.d = b2;
                o zzwx = this.f3097b.zzwx();
                zzwx.zza("Network connectivity status changed", Boolean.valueOf(b2));
                zzwx.zzdta.zzwv().zzc(new q(zzwx, b2));
            }
        } else if ("com.google.analytics.RADIO_POWERED".equals(action)) {
            if (!intent.hasExtra(f3096a)) {
                o zzwx2 = this.f3097b.zzwx();
                zzwx2.zzdu("Radio powered up");
                zzwx2.zzwn();
            }
        } else {
            this.f3097b.zzwt().zzd("NetworkBroadcastReceiver received unknown action", action);
        }
    }
}
