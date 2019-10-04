package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class o<TResult> implements y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11157a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11158b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public C0979b f11159c;

    public o(Executor executor, C0979b bVar) {
        this.f11157a = executor;
        this.f11159c = bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0010, code lost:
        r1.f11157a.execute(new c.e.a.b.j.p(r1));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.b.j.g r2) {
        /*
            r1 = this;
            boolean r2 = r2.c()
            if (r2 == 0) goto L_0x001e
            java.lang.Object r2 = r1.f11158b
            monitor-enter(r2)
            c.e.a.b.j.b r0 = r1.f11159c     // Catch:{ all -> 0x001b }
            if (r0 != 0) goto L_0x000f
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            return
        L_0x000f:
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            java.util.concurrent.Executor r2 = r1.f11157a
            c.e.a.b.j.p r0 = new c.e.a.b.j.p
            r0.<init>(r1)
            r2.execute(r0)
            goto L_0x001e
        L_0x001b:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x001b }
            throw r0
        L_0x001e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.j.o.a(c.e.a.b.j.g):void");
    }
}
