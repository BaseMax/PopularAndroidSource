package b.H.a.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import b.H.a.a;
import b.H.a.a.b.f;
import b.H.a.a.b.i;
import b.H.a.b.c;
import b.H.a.c.o;
import b.H.a.d.l;
import b.H.f;
import java.util.Collections;
import java.util.List;

/* compiled from: DelayMetCommandHandler */
public class d implements c, a, i.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1343a = f.a("DelayMetCommandHandler");

    /* renamed from: b  reason: collision with root package name */
    public final Context f1344b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1345c;

    /* renamed from: d  reason: collision with root package name */
    public final String f1346d;

    /* renamed from: e  reason: collision with root package name */
    public final f f1347e;

    /* renamed from: f  reason: collision with root package name */
    public final b.H.a.b.d f1348f = new b.H.a.b.d(this.f1344b, this);

    /* renamed from: g  reason: collision with root package name */
    public final Object f1349g = new Object();

    /* renamed from: h  reason: collision with root package name */
    public boolean f1350h = false;

    /* renamed from: i  reason: collision with root package name */
    public PowerManager.WakeLock f1351i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1352j = false;

    public d(Context context, int i2, String str, f fVar) {
        this.f1344b = context;
        this.f1345c = i2;
        this.f1347e = fVar;
        this.f1346d = str;
    }

    public void a(String str, boolean z) {
        f.a().a(f1343a, String.format("onExecuted %s, %s", new Object[]{str, Boolean.valueOf(z)}), new Throwable[0]);
        a();
        if (z) {
            Intent b2 = b.b(this.f1344b, this.f1346d);
            f fVar = this.f1347e;
            fVar.a((Runnable) new f.a(fVar, b2, this.f1345c));
        }
        if (this.f1352j) {
            Intent a2 = b.a(this.f1344b);
            f fVar2 = this.f1347e;
            fVar2.a((Runnable) new f.a(fVar2, a2, this.f1345c));
        }
    }

    public void b(List<String> list) {
        if (list.contains(this.f1346d)) {
            b.H.f.a().a(f1343a, String.format("onAllConstraintsMet for %s", new Object[]{this.f1346d}), new Throwable[0]);
            if (this.f1347e.c().c(this.f1346d)) {
                this.f1347e.e().a(this.f1346d, 600000, this);
            } else {
                a();
            }
        }
    }

    public final void c() {
        synchronized (this.f1349g) {
            if (!this.f1350h) {
                b.H.f.a().a(f1343a, String.format("Stopping work for workspec %s", new Object[]{this.f1346d}), new Throwable[0]);
                this.f1347e.a((Runnable) new f.a(this.f1347e, b.c(this.f1344b, this.f1346d), this.f1345c));
                if (this.f1347e.c().b(this.f1346d)) {
                    b.H.f.a().a(f1343a, String.format("WorkSpec %s needs to be rescheduled", new Object[]{this.f1346d}), new Throwable[0]);
                    this.f1347e.a((Runnable) new f.a(this.f1347e, b.b(this.f1344b, this.f1346d), this.f1345c));
                } else {
                    b.H.f.a().a(f1343a, String.format("Processor does not have WorkSpec %s. No need to reschedule ", new Object[]{this.f1346d}), new Throwable[0]);
                }
                this.f1350h = true;
            } else {
                b.H.f.a().a(f1343a, String.format("Already stopped work for %s", new Object[]{this.f1346d}), new Throwable[0]);
            }
        }
    }

    public void b() {
        this.f1351i = l.a(this.f1344b, String.format("%s (%s)", new Object[]{this.f1346d, Integer.valueOf(this.f1345c)}));
        b.H.f.a().a(f1343a, String.format("Acquiring wakelock %s for WorkSpec %s", new Object[]{this.f1351i, this.f1346d}), new Throwable[0]);
        this.f1351i.acquire();
        o d2 = this.f1347e.d().g().v().d(this.f1346d);
        if (d2 == null) {
            c();
            return;
        }
        this.f1352j = d2.b();
        if (!this.f1352j) {
            b.H.f.a().a(f1343a, String.format("No constraints for %s", new Object[]{this.f1346d}), new Throwable[0]);
            b(Collections.singletonList(this.f1346d));
        } else {
            this.f1348f.c(Collections.singletonList(d2));
        }
    }

    public void a(String str) {
        b.H.f.a().a(f1343a, String.format("Exceeded time limits on execution for %s", new Object[]{str}), new Throwable[0]);
        c();
    }

    public void a(List<String> list) {
        c();
    }

    public final void a() {
        synchronized (this.f1349g) {
            this.f1348f.a();
            this.f1347e.e().a(this.f1346d);
            if (this.f1351i != null && this.f1351i.isHeld()) {
                b.H.f.a().a(f1343a, String.format("Releasing wakelock %s for WorkSpec %s", new Object[]{this.f1351i, this.f1346d}), new Throwable[0]);
                this.f1351i.release();
            }
        }
    }
}
