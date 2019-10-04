package b.H.a.d;

import androidx.work.impl.WorkDatabase;
import b.H.a.m;

/* compiled from: CancelWorkRunnable */
class a extends c {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ m f1501b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f1502c;

    public a(m mVar, String str) {
        this.f1501b = mVar;
        this.f1502c = str;
    }

    /* JADX INFO: finally extract failed */
    public void b() {
        WorkDatabase g2 = this.f1501b.g();
        g2.c();
        try {
            for (String a2 : g2.v().f(this.f1502c)) {
                a(this.f1501b, a2);
            }
            g2.o();
            g2.e();
            a(this.f1501b);
        } catch (Throwable th) {
            g2.e();
            throw th;
        }
    }
}
