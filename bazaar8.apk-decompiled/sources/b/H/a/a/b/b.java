package b.H.a.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import b.H.a.a;
import b.H.a.a.b.f;
import b.H.a.c.o;
import b.H.f;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CommandHandler */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1334a = f.a("CommandHandler");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1335b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, a> f1336c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Object f1337d = new Object();

    public b(Context context) {
        this.f1335b = context;
    }

    public static Intent a(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public final void d(Intent intent, int i2, f fVar) {
        f.a().a(f1334a, String.format("Handling reschedule %s, %s", new Object[]{intent, Integer.valueOf(i2)}), new Throwable[0]);
        fVar.d().j();
    }

    public final void e(Intent intent, int i2, f fVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        f.a().a(f1334a, String.format("Handling schedule work for %s", new Object[]{string}), new Throwable[0]);
        WorkDatabase g2 = fVar.d().g();
        g2.c();
        try {
            o d2 = g2.v().d(string);
            if (d2 == null) {
                f a2 = f.a();
                String str = f1334a;
                a2.e(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
            } else if (d2.f1467d.f()) {
                f a3 = f.a();
                String str2 = f1334a;
                a3.e(str2, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                g2.e();
            } else {
                long a4 = d2.a();
                if (!d2.b()) {
                    f.a().a(f1334a, String.format("Setting up Alarms for %s at %s", new Object[]{string, Long.valueOf(a4)}), new Throwable[0]);
                    a.a(this.f1335b, fVar.d(), string, a4);
                } else {
                    f.a().a(f1334a, String.format("Opportunistically setting an alarm for %s at %s", new Object[]{string, Long.valueOf(a4)}), new Throwable[0]);
                    a.a(this.f1335b, fVar.d(), string, a4);
                    fVar.a((Runnable) new f.a(fVar, a(this.f1335b), i2));
                }
                g2.o();
                g2.e();
            }
        } finally {
            g2.e();
        }
    }

    public final void f(Intent intent, int i2, f fVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        b.H.f.a().a(f1334a, String.format("Handing stopWork work for %s", new Object[]{string}), new Throwable[0]);
        fVar.d().d(string);
        a.a(this.f1335b, fVar.d(), string);
        fVar.a(string, false);
    }

    public void g(Intent intent, int i2, f fVar) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            a(intent, i2, fVar);
        } else if ("ACTION_RESCHEDULE".equals(action)) {
            d(intent, i2, fVar);
        } else {
            if (!a(intent.getExtras(), "KEY_WORKSPEC_ID")) {
                b.H.f.a().b(f1334a, String.format("Invalid request for %s, requires %s.", new Object[]{action, "KEY_WORKSPEC_ID"}), new Throwable[0]);
            } else if ("ACTION_SCHEDULE_WORK".equals(action)) {
                e(intent, i2, fVar);
            } else if ("ACTION_DELAY_MET".equals(action)) {
                b(intent, i2, fVar);
            } else if ("ACTION_STOP_WORK".equals(action)) {
                f(intent, i2, fVar);
            } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
                c(intent, i2, fVar);
            } else {
                b.H.f.a().e(f1334a, String.format("Ignoring intent %s", new Object[]{intent}), new Throwable[0]);
            }
        }
    }

    public static Intent a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    public static Intent b(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    public final void c(Intent intent, int i2, f fVar) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        b.H.f.a().a(f1334a, String.format("Handling onExecutionCompleted %s, %s", new Object[]{intent, Integer.valueOf(i2)}), new Throwable[0]);
        a(string, z);
    }

    public static Intent a(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    public final void b(Intent intent, int i2, f fVar) {
        Bundle extras = intent.getExtras();
        synchronized (this.f1337d) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            b.H.f.a().a(f1334a, String.format("Handing delay met for %s", new Object[]{string}), new Throwable[0]);
            if (!this.f1336c.containsKey(string)) {
                d dVar = new d(this.f1335b, i2, string, fVar);
                this.f1336c.put(string, dVar);
                dVar.b();
            } else {
                b.H.f.a().a(f1334a, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", new Object[]{string}), new Throwable[0]);
            }
        }
    }

    public void a(String str, boolean z) {
        synchronized (this.f1337d) {
            a remove = this.f1336c.remove(str);
            if (remove != null) {
                remove.a(str, z);
            }
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.f1337d) {
            z = !this.f1336c.isEmpty();
        }
        return z;
    }

    public final void a(Intent intent, int i2, f fVar) {
        b.H.f.a().a(f1334a, String.format("Handling constraints changed %s", new Object[]{intent}), new Throwable[0]);
        new c(this.f1335b, i2, fVar).a();
    }

    public static boolean a(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }
}
