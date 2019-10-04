package b.H.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import b.H.a;
import b.H.a.a.b.g;
import b.H.a.a.c.c;
import b.H.a.c.o;
import b.H.a.c.p;
import b.H.f;
import java.util.List;

/* compiled from: Schedulers */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1562a = f.a("Schedulers");

    public static void a(a aVar, WorkDatabase workDatabase, List<d> list) {
        if (list != null && list.size() != 0) {
            p v = workDatabase.v();
            workDatabase.c();
            try {
                List<o> a2 = v.a(aVar.d());
                if (a2 != null && a2.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (o oVar : a2) {
                        v.a(oVar.f1466c, currentTimeMillis);
                    }
                }
                workDatabase.o();
                if (a2 != null && a2.size() > 0) {
                    o[] oVarArr = (o[]) a2.toArray(new o[0]);
                    for (d a3 : list) {
                        a3.a(oVarArr);
                    }
                }
            } finally {
                workDatabase.e();
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static d a(Context context, m mVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            c cVar = new c(context, mVar);
            b.H.a.d.f.a(context, SystemJobService.class, true);
            f.a().a(f1562a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            return cVar;
        }
        d a2 = a(context);
        if (a2 != null) {
            return a2;
        }
        g gVar = new g(context);
        b.H.a.d.f.a(context, SystemAlarmService.class, true);
        f.a().a(f1562a, "Created SystemAlarmScheduler", new Throwable[0]);
        return gVar;
    }

    public static d a(Context context) {
        try {
            d dVar = (d) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(new Class[]{Context.class}).newInstance(new Object[]{context});
            f.a().a(f1562a, String.format("Created %s", new Object[]{"androidx.work.impl.background.gcm.GcmScheduler"}), new Throwable[0]);
            return dVar;
        } catch (Throwable th) {
            f.a().a(f1562a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
