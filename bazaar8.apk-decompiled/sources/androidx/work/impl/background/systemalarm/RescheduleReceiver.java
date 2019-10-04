package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import b.H.a.a.b.b;
import b.H.a.m;
import b.H.f;

public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1027a = f.a("RescheduleReceiver");

    public void onReceive(Context context, Intent intent) {
        f.a().a(f1027a, String.format("Received intent %s", new Object[]{intent}), new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            m a2 = m.a();
            if (a2 == null) {
                f.a().b(f1027a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
            } else {
                a2.a(goAsync());
            }
        } else {
            context.startService(b.b(context));
        }
    }
}
