package c.c.a.p;

import androidx.work.ListenableWorker;
import d.b.c;
import g.a.a;
import java.util.Map;

/* renamed from: c.c.a.p.g  reason: case insensitive filesystem */
/* compiled from: DaggerWorkerFactory_Factory */
public final class C0682g implements c<C0681f> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Map<Class<? extends ListenableWorker>, a<C0676a>>> f7163a;

    public C0682g(a<Map<Class<? extends ListenableWorker>, a<C0676a>>> aVar) {
        this.f7163a = aVar;
    }

    public static C0682g a(a<Map<Class<? extends ListenableWorker>, a<C0676a>>> aVar) {
        return new C0682g(aVar);
    }

    public static C0681f b(a<Map<Class<? extends ListenableWorker>, a<C0676a>>> aVar) {
        return new C0681f(aVar.get());
    }

    public C0681f get() {
        return b(this.f7163a);
    }
}
