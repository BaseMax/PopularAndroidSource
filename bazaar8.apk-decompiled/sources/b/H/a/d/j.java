package b.H.a.d;

import androidx.work.WorkInfo;
import b.H.a.d.a.c;
import b.H.a.m;
import c.e.b.a.a.a;
import java.util.List;

/* compiled from: StatusRunnable */
public abstract class j<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final c<T> f1556a = c.e();

    public a<T> a() {
        return this.f1556a;
    }

    public abstract T b();

    public void run() {
        try {
            this.f1556a.c(b());
        } catch (Throwable th) {
            this.f1556a.a(th);
        }
    }

    public static j<List<WorkInfo>> a(m mVar, String str) {
        return new i(mVar, str);
    }
}
