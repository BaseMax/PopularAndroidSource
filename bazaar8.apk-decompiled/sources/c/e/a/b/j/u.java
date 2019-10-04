package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class u<TResult> implements y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11171a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11172b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public e<? super TResult> f11173c;

    public u(Executor executor, e<? super TResult> eVar) {
        this.f11171a = executor;
        this.f11173c = eVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0010, code lost:
        r2.f11171a.execute(new c.e.a.b.j.v(r2, r3));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.b.j.g<TResult> r3) {
        /*
            r2 = this;
            boolean r0 = r3.e()
            if (r0 == 0) goto L_0x001e
            java.lang.Object r0 = r2.f11172b
            monitor-enter(r0)
            c.e.a.b.j.e<? super TResult> r1 = r2.f11173c     // Catch:{ all -> 0x001b }
            if (r1 != 0) goto L_0x000f
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            return
        L_0x000f:
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            java.util.concurrent.Executor r0 = r2.f11171a
            c.e.a.b.j.v r1 = new c.e.a.b.j.v
            r1.<init>(r2, r3)
            r0.execute(r1)
            goto L_0x001e
        L_0x001b:
            r3 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001b }
            throw r3
        L_0x001e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.j.u.a(c.e.a.b.j.g):void");
    }
}
