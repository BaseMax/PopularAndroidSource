package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class s<TResult> implements y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11166a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11167b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public d f11168c;

    public s(Executor executor, d dVar) {
        this.f11166a = executor;
        this.f11168c = dVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0016, code lost:
        r2.f11166a.execute(new c.e.a.b.j.t(r2, r3));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.b.j.g<TResult> r3) {
        /*
            r2 = this;
            boolean r0 = r3.e()
            if (r0 != 0) goto L_0x0024
            boolean r0 = r3.c()
            if (r0 != 0) goto L_0x0024
            java.lang.Object r0 = r2.f11167b
            monitor-enter(r0)
            c.e.a.b.j.d r1 = r2.f11168c     // Catch:{ all -> 0x0021 }
            if (r1 != 0) goto L_0x0015
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            return
        L_0x0015:
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            java.util.concurrent.Executor r0 = r2.f11166a
            c.e.a.b.j.t r1 = new c.e.a.b.j.t
            r1.<init>(r2, r3)
            r0.execute(r1)
            goto L_0x0024
        L_0x0021:
            r3 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            throw r3
        L_0x0024:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.j.s.a(c.e.a.b.j.g):void");
    }
}
