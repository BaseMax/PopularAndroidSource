package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.bumptech.glide.g.j;
import com.bumptech.glide.manager.c;

final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    final c.a f2407a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2408b;
    private final Context c;
    private boolean d;
    private final BroadcastReceiver e = new BroadcastReceiver() {
        public final void onReceive(Context context, Intent intent) {
            boolean z = e.this.f2408b;
            e.this.f2408b = e.a(context);
            if (z != e.this.f2408b) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    new StringBuilder("connectivity changed, isConnected: ").append(e.this.f2408b);
                }
                e.this.f2407a.onConnectivityChanged(e.this.f2408b);
            }
        }
    };

    public final void onDestroy() {
    }

    e(Context context, c.a aVar) {
        this.c = context.getApplicationContext();
        this.f2407a = aVar;
    }

    static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) j.checkNotNull((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            return true;
        } catch (RuntimeException unused) {
            return true;
        }
    }

    public final void onStart() {
        if (!this.d) {
            this.f2408b = a(this.c);
            try {
                this.c.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.d = true;
            } catch (SecurityException unused) {
            }
        }
    }

    public final void onStop() {
        if (this.d) {
            this.c.unregisterReceiver(this.e);
            this.d = false;
        }
    }
}
