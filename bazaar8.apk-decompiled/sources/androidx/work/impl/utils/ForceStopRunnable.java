package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import b.H.a.c.o;
import b.H.a.c.p;
import b.H.a.e;
import b.H.a.m;
import b.H.f;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ForceStopRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1033a = f.a("ForceStopRunnable");

    /* renamed from: b  reason: collision with root package name */
    public static final long f1034b = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c  reason: collision with root package name */
    public final Context f1035c;

    /* renamed from: d  reason: collision with root package name */
    public final m f1036d;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        public static final String f1037a = f.a("ForceStopRunnable$Rcvr");

        public void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                f.a().d(f1037a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
                ForceStopRunnable.b(context);
            }
        }
    }

    public ForceStopRunnable(Context context, m mVar) {
        this.f1035c = context.getApplicationContext();
        this.f1036d = mVar;
    }

    public boolean a() {
        if (a(this.f1035c, 536870912) != null) {
            return false;
        }
        b(this.f1035c);
        return true;
    }

    public boolean b() {
        return this.f1036d.d().b();
    }

    /* JADX INFO: finally extract failed */
    public void run() {
        if (b()) {
            f.a().a(f1033a, "Rescheduling Workers.", new Throwable[0]);
            this.f1036d.j();
            this.f1036d.d().a(false);
        } else if (a()) {
            f.a().a(f1033a, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f1036d.j();
        } else {
            WorkDatabase g2 = this.f1036d.g();
            p v = g2.v();
            try {
                g2.c();
                List<o> b2 = v.b();
                if (b2 != null && !b2.isEmpty()) {
                    f.a().a(f1033a, "Found unfinished work, scheduling it.", new Throwable[0]);
                    for (o oVar : b2) {
                        v.a(oVar.f1466c, -1);
                    }
                    e.a(this.f1036d.c(), g2, this.f1036d.f());
                }
                g2.o();
                g2.e();
                f.a().a(f1033a, "Unfinished Workers exist, rescheduling.", new Throwable[0]);
            } catch (Throwable th) {
                g2.e();
                throw th;
            }
        }
        this.f1036d.i();
    }

    public static void b(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent a2 = a(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f1034b;
        if (alarmManager == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, currentTimeMillis, a2);
        } else {
            alarmManager.set(0, currentTimeMillis, a2);
        }
    }

    public static PendingIntent a(Context context, int i2) {
        return PendingIntent.getBroadcast(context, -1, a(context), i2);
    }

    public static Intent a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }
}
