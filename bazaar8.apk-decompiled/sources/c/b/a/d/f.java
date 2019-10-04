package c.b.a.d;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import c.b.a.d.c;
import c.b.a.i.i;

/* compiled from: DefaultConnectivityMonitor */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4283a;

    /* renamed from: b  reason: collision with root package name */
    public final c.a f4284b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4285c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4286d;

    /* renamed from: e  reason: collision with root package name */
    public final BroadcastReceiver f4287e = new e(this);

    public f(Context context, c.a aVar) {
        this.f4283a = context.getApplicationContext();
        this.f4284b = aVar;
    }

    @SuppressLint({"MissingPermission"})
    public boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        i.a(connectivityManager);
        boolean z = true;
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                z = false;
            }
            return z;
        } catch (RuntimeException e2) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e2);
            }
            return true;
        }
    }

    public void b() {
        d();
    }

    public final void c() {
        if (!this.f4286d) {
            this.f4285c = a(this.f4283a);
            try {
                this.f4283a.registerReceiver(this.f4287e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f4286d = true;
            } catch (SecurityException e2) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register", e2);
                }
            }
        }
    }

    public final void d() {
        if (this.f4286d) {
            this.f4283a.unregisterReceiver(this.f4287e);
            this.f4286d = false;
        }
    }

    public void onDestroy() {
    }

    public void a() {
        c();
    }
}
