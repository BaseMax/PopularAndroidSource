package c.e.a.b.h.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import c.e.a.b.d.d.r;

public class D extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final Tb f10595a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f10596b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10597c;

    public D(Tb tb) {
        r.a(tb);
        this.f10595a = tb;
    }

    public final void a() {
        this.f10595a.r();
        this.f10595a.d().l();
        this.f10595a.d().l();
        if (this.f10596b) {
            this.f10595a.e().B().a("Unregistering connectivity change receiver");
            this.f10596b = false;
            this.f10597c = false;
            try {
                this.f10595a.b().unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                this.f10595a.e().t().a("Failed to unregister the network broadcast receiver", e2);
            }
        }
    }

    public final void b() {
        this.f10595a.r();
        this.f10595a.d().l();
        if (!this.f10596b) {
            this.f10595a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f10597c = this.f10595a.n().v();
            this.f10595a.e().B().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f10597c));
            this.f10596b = true;
        }
    }

    public void onReceive(Context context, Intent intent) {
        this.f10595a.r();
        String action = intent.getAction();
        this.f10595a.e().B().a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean v = this.f10595a.n().v();
            if (this.f10597c != v) {
                this.f10597c = v;
                this.f10595a.d().a((Runnable) new E(this, v));
            }
            return;
        }
        this.f10595a.e().w().a("NetworkBroadcastReceiver received unknown action", action);
    }
}
