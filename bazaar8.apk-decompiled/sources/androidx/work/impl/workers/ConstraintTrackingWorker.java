package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import b.H.a.b.c;
import b.H.a.b.d;
import b.H.a.c.o;
import b.H.a.m;
import b.H.f;
import c.e.b.a.a.a;
import java.util.Collections;
import java.util.List;

public class ConstraintTrackingWorker extends ListenableWorker implements c {

    /* renamed from: e  reason: collision with root package name */
    public static final String f1039e = f.a("ConstraintTrkngWrkr");

    /* renamed from: f  reason: collision with root package name */
    public WorkerParameters f1040f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f1041g = new Object();

    /* renamed from: h  reason: collision with root package name */
    public volatile boolean f1042h = false;

    /* renamed from: i  reason: collision with root package name */
    public b.H.a.d.a.c<ListenableWorker.a> f1043i = b.H.a.d.a.c.e();

    /* renamed from: j  reason: collision with root package name */
    public ListenableWorker f1044j;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f1040f = workerParameters;
    }

    public void a(List<String> list) {
        f.a().a(f1039e, String.format("Constraints changed for %s", new Object[]{list}), new Throwable[0]);
        synchronized (this.f1041g) {
            this.f1042h = true;
        }
    }

    public void b(List<String> list) {
    }

    public void g() {
        super.g();
        ListenableWorker listenableWorker = this.f1044j;
        if (listenableWorker != null) {
            listenableWorker.j();
        }
    }

    public a<ListenableWorker.a> i() {
        b().execute(new a(this));
        return this.f1043i;
    }

    public WorkDatabase k() {
        return m.a().g();
    }

    public void l() {
        this.f1043i.c(ListenableWorker.a.a());
    }

    public void m() {
        this.f1043i.c(ListenableWorker.a.b());
    }

    public void n() {
        String a2 = d().a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(a2)) {
            f.a().b(f1039e, "No worker to delegate to.", new Throwable[0]);
            l();
            return;
        }
        this.f1044j = e().b(a(), a2, this.f1040f);
        if (this.f1044j == null) {
            f.a().a(f1039e, "No worker to delegate to.", new Throwable[0]);
            l();
            return;
        }
        o d2 = k().v().d(c().toString());
        if (d2 == null) {
            l();
            return;
        }
        d dVar = new d(a(), this);
        dVar.c(Collections.singletonList(d2));
        if (dVar.a(c().toString())) {
            f.a().a(f1039e, String.format("Constraints met for delegate %s", new Object[]{a2}), new Throwable[0]);
            try {
                a<ListenableWorker.a> i2 = this.f1044j.i();
                i2.a(new b(this, i2), b());
            } catch (Throwable th) {
                f.a().a(f1039e, String.format("Delegated worker %s threw exception in startWork.", new Object[]{a2}), th);
                synchronized (this.f1041g) {
                    if (this.f1042h) {
                        f.a().a(f1039e, "Constraints were unmet, Retrying.", new Throwable[0]);
                        m();
                    } else {
                        l();
                    }
                }
            }
        } else {
            f.a().a(f1039e, String.format("Constraints not met for delegate %s. Requesting retry.", new Object[]{a2}), new Throwable[0]);
            m();
        }
    }
}
