package b.H.a.d;

import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import b.H.a.c.p;
import b.H.a.m;
import b.H.f;

/* compiled from: StopWorkRunnable */
public class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1557a = f.a("StopWorkRunnable");

    /* renamed from: b  reason: collision with root package name */
    public m f1558b;

    /* renamed from: c  reason: collision with root package name */
    public String f1559c;

    public k(m mVar, String str) {
        this.f1558b = mVar;
        this.f1559c = str;
    }

    public void run() {
        WorkDatabase g2 = this.f1558b.g();
        p v = g2.v();
        g2.c();
        try {
            if (v.c(this.f1559c) == WorkInfo.State.RUNNING) {
                v.a(WorkInfo.State.ENQUEUED, this.f1559c);
            }
            boolean e2 = this.f1558b.e().e(this.f1559c);
            f.a().a(f1557a, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", new Object[]{this.f1559c, Boolean.valueOf(e2)}), new Throwable[0]);
            g2.o();
        } finally {
            g2.e();
        }
    }
}
