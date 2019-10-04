package b.H.a.d;

import androidx.work.impl.WorkDatabase;
import b.H.a.m;

/* compiled from: CancelWorkRunnable */
class b extends c {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ m f1530b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f1531c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f1532d;

    public b(m mVar, String str, boolean z) {
        this.f1530b = mVar;
        this.f1531c = str;
        this.f1532d = z;
    }

    /* JADX INFO: finally extract failed */
    public void b() {
        WorkDatabase g2 = this.f1530b.g();
        g2.c();
        try {
            for (String a2 : g2.v().b(this.f1531c)) {
                a(this.f1530b, a2);
            }
            g2.o();
            g2.e();
            if (this.f1532d) {
                a(this.f1530b);
            }
        } catch (Throwable th) {
            g2.e();
            throw th;
        }
    }
}
