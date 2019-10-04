package b.H.a.b.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* compiled from: NetworkStateTracker */
public class f extends e<b.H.a.b.b> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f1410f = b.H.f.a("NetworkStateTracker");

    /* renamed from: g  reason: collision with root package name */
    public final ConnectivityManager f1411g = ((ConnectivityManager) this.f1406b.getSystemService("connectivity"));

    /* renamed from: h  reason: collision with root package name */
    public b f1412h;

    /* renamed from: i  reason: collision with root package name */
    public a f1413i;

    /* compiled from: NetworkStateTracker */
    private class a extends BroadcastReceiver {
        public a() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                b.H.f.a().a(f.f1410f, "Network broadcast received", new Throwable[0]);
                f fVar = f.this;
                fVar.a(fVar.d());
            }
        }
    }

    /* compiled from: NetworkStateTracker */
    private class b extends ConnectivityManager.NetworkCallback {
        public b() {
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            b.H.f.a().a(f.f1410f, String.format("Network capabilities changed: %s", new Object[]{networkCapabilities}), new Throwable[0]);
            f fVar = f.this;
            fVar.a(fVar.d());
        }

        public void onLost(Network network) {
            b.H.f.a().a(f.f1410f, "Network connection lost", new Throwable[0]);
            f fVar = f.this;
            fVar.a(fVar.d());
        }
    }

    public f(Context context) {
        super(context);
        if (f()) {
            this.f1412h = new b();
        } else {
            this.f1413i = new a();
        }
    }

    public static boolean f() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public void b() {
        if (f()) {
            b.H.f.a().a(f1410f, "Registering network callback", new Throwable[0]);
            this.f1411g.registerDefaultNetworkCallback(this.f1412h);
            return;
        }
        b.H.f.a().a(f1410f, "Registering broadcast receiver", new Throwable[0]);
        this.f1406b.registerReceiver(this.f1413i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void c() {
        if (f()) {
            try {
                b.H.f.a().a(f1410f, "Unregistering network callback", new Throwable[0]);
                this.f1411g.unregisterNetworkCallback(this.f1412h);
            } catch (IllegalArgumentException e2) {
                b.H.f.a().b(f1410f, "Received exception while unregistering network callback", e2);
            }
        } else {
            b.H.f.a().a(f1410f, "Unregistering broadcast receiver", new Throwable[0]);
            this.f1406b.unregisterReceiver(this.f1413i);
        }
    }

    public b.H.a.b.b d() {
        NetworkInfo activeNetworkInfo = this.f1411g.getActiveNetworkInfo();
        boolean z = true;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean e2 = e();
        boolean a2 = b.i.f.a.a(this.f1411g);
        if (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) {
            z = false;
        }
        return new b.H.a.b.b(z2, e2, a2, z);
    }

    public final boolean e() {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        NetworkCapabilities networkCapabilities = this.f1411g.getNetworkCapabilities(this.f1411g.getActiveNetwork());
        if (networkCapabilities != null && networkCapabilities.hasCapability(16)) {
            z = true;
        }
        return z;
    }

    public b.H.a.b.b a() {
        return d();
    }
}
