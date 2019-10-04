package c.e.a.b.d.a.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* renamed from: c.e.a.b.d.a.a.z  reason: case insensitive filesystem */
public final class C0777z extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public Context f9916a;

    /* renamed from: b  reason: collision with root package name */
    public final A f9917b;

    public C0777z(A a2) {
        this.f9917b = a2;
    }

    public final void a(Context context) {
        this.f9916a = context;
    }

    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f9917b.a();
            a();
        }
    }

    public final synchronized void a() {
        if (this.f9916a != null) {
            this.f9916a.unregisterReceiver(this);
        }
        this.f9916a = null;
    }
}
