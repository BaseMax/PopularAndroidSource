package b.H.a.a.b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import b.H.a.c.C0184e;
import b.H.a.c.C0185f;
import b.H.a.d.e;
import b.H.a.m;
import b.H.f;

/* compiled from: Alarms */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1333a = f.a("Alarms");

    public static void a(Context context, m mVar, String str, long j2) {
        C0185f t = mVar.g().t();
        C0184e a2 = t.a(str);
        if (a2 != null) {
            a(context, str, a2.f1453b);
            a(context, str, a2.f1453b, j2);
            return;
        }
        int b2 = new e(context).b();
        t.a(new C0184e(str, b2));
        a(context, str, b2, j2);
    }

    public static void a(Context context, m mVar, String str) {
        C0185f t = mVar.g().t();
        C0184e a2 = t.a(str);
        if (a2 != null) {
            a(context, str, a2.f1453b);
            f.a().a(f1333a, String.format("Removing SystemIdInfo for workSpecId (%s)", new Object[]{str}), new Throwable[0]);
            t.b(str);
        }
    }

    public static void a(Context context, String str, int i2) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i2, b.a(context, str), 536870912);
        if (service != null && alarmManager != null) {
            f.a().a(f1333a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", new Object[]{str, Integer.valueOf(i2)}), new Throwable[0]);
            alarmManager.cancel(service);
        }
    }

    public static void a(Context context, String str, int i2, long j2) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i2, b.a(context, str), 1073741824);
        if (alarmManager == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, j2, service);
        } else {
            alarmManager.set(0, j2, service);
        }
    }
}
