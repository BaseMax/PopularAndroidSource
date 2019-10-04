package c.c.a.d.d;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import c.c.a.d.b.d;
import c.c.a.d.e.a;
import com.crashlytics.android.answers.SessionEvent;
import h.f.b.j;

/* compiled from: BroadcastReceiverManager.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final c.c.a.d.e.b f4768a = new c.c.a.d.e.b();

    /* renamed from: b  reason: collision with root package name */
    public static final b f4769b = new b();

    public final void a(Activity activity) {
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        if (Build.VERSION.SDK_INT >= 21) {
            Context applicationContext = activity.getApplicationContext();
            j.a((Object) applicationContext, "activity.applicationContext");
            ConnectivityManager b2 = d.b(applicationContext);
            if (Build.VERSION.SDK_INT >= 24) {
                b2.registerDefaultNetworkCallback(a.f4782c);
            } else {
                b2.registerNetworkCallback(new NetworkRequest.Builder().build(), a.f4782c);
            }
        } else {
            activity.registerReceiver(f4768a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    public final void b(Activity activity) {
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                Context applicationContext = activity.getApplicationContext();
                j.a((Object) applicationContext, "activity.applicationContext");
                d.b(applicationContext).unregisterNetworkCallback(a.f4782c);
                return;
            }
            activity.unregisterReceiver(f4768a);
        } catch (IllegalArgumentException e2) {
            c.c.a.c.c.a.f4699b.a((Throwable) e2);
        }
    }
}
