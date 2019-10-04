package b.H.a.b.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import b.H.f;

/* compiled from: BroadcastReceiverConstraintTracker */
public abstract class d<T> extends e<T> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f1403f = f.a("BrdcstRcvrCnstrntTrckr");

    /* renamed from: g  reason: collision with root package name */
    public final BroadcastReceiver f1404g = new c(this);

    public d(Context context) {
        super(context);
    }

    public abstract void a(Context context, Intent intent);

    public void b() {
        f.a().a(f1403f, String.format("%s: registering receiver", new Object[]{getClass().getSimpleName()}), new Throwable[0]);
        this.f1406b.registerReceiver(this.f1404g, d());
    }

    public void c() {
        f.a().a(f1403f, String.format("%s: unregistering receiver", new Object[]{getClass().getSimpleName()}), new Throwable[0]);
        this.f1406b.unregisterReceiver(this.f1404g);
    }

    public abstract IntentFilter d();
}
