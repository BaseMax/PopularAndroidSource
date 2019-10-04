package c.b.a.a;

import java.util.concurrent.Callable;

/* compiled from: DiskLruCache */
class a implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f3688a;

    public a(b bVar) {
        this.f3688a = bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Void call() {
        /*
            r4 = this;
            c.b.a.a.b r0 = r4.f3688a
            monitor-enter(r0)
            c.b.a.a.b r1 = r4.f3688a     // Catch:{ all -> 0x0028 }
            java.io.Writer r1 = r1.f3697i     // Catch:{ all -> 0x0028 }
            r2 = 0
            if (r1 != 0) goto L_0x000e
            monitor-exit(r0)     // Catch:{ all -> 0x0028 }
            return r2
        L_0x000e:
            c.b.a.a.b r1 = r4.f3688a     // Catch:{ all -> 0x0028 }
            r1.y()     // Catch:{ all -> 0x0028 }
            c.b.a.a.b r1 = r4.f3688a     // Catch:{ all -> 0x0028 }
            boolean r1 = r1.u()     // Catch:{ all -> 0x0028 }
            if (r1 == 0) goto L_0x0026
            c.b.a.a.b r1 = r4.f3688a     // Catch:{ all -> 0x0028 }
            r1.x()     // Catch:{ all -> 0x0028 }
            c.b.a.a.b r1 = r4.f3688a     // Catch:{ all -> 0x0028 }
            r3 = 0
            int unused = r1.f3699k = r3     // Catch:{ all -> 0x0028 }
        L_0x0026:
            monitor-exit(r0)     // Catch:{ all -> 0x0028 }
            return r2
        L_0x0028:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0028 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.a.a.call():java.lang.Void");
    }
}
