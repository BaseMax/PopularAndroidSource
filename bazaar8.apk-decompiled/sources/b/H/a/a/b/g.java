package b.H.a.a.b;

import android.content.Context;
import b.H.a.c.o;
import b.H.a.d;
import b.H.f;

/* compiled from: SystemAlarmScheduler */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1368a = f.a("SystemAlarmScheduler");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1369b;

    public g(Context context) {
        this.f1369b = context.getApplicationContext();
    }

    public void a(o... oVarArr) {
        for (o a2 : oVarArr) {
            a(a2);
        }
    }

    public void a(String str) {
        this.f1369b.startService(b.c(this.f1369b, str));
    }

    public final void a(o oVar) {
        f.a().a(f1368a, String.format("Scheduling work with workSpecId %s", new Object[]{oVar.f1466c}), new Throwable[0]);
        this.f1369b.startService(b.b(this.f1369b, oVar.f1466c));
    }
}
