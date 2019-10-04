package j.a.a;

/* compiled from: DiskLruCache */
class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f15277a;

    public e(h hVar) {
        this.f15277a = hVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r5.f15277a.r = true;
        r5.f15277a.f15290k = k.s.a(k.s.a());
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x001d */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0033 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r5 = this;
            j.a.a.h r0 = r5.f15277a
            monitor-enter(r0)
            j.a.a.h r1 = r5.f15277a     // Catch:{ all -> 0x0045 }
            boolean r1 = r1.o     // Catch:{ all -> 0x0045 }
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L_0x000d
            r1 = 1
            goto L_0x000e
        L_0x000d:
            r1 = 0
        L_0x000e:
            j.a.a.h r4 = r5.f15277a     // Catch:{ all -> 0x0045 }
            boolean r4 = r4.p     // Catch:{ all -> 0x0045 }
            r1 = r1 | r4
            if (r1 == 0) goto L_0x0017
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            return
        L_0x0017:
            j.a.a.h r1 = r5.f15277a     // Catch:{ IOException -> 0x001d }
            r1.B()     // Catch:{ IOException -> 0x001d }
            goto L_0x0021
        L_0x001d:
            j.a.a.h r1 = r5.f15277a     // Catch:{ all -> 0x0045 }
            r1.q = r3     // Catch:{ all -> 0x0045 }
        L_0x0021:
            j.a.a.h r1 = r5.f15277a     // Catch:{ IOException -> 0x0033 }
            boolean r1 = r1.w()     // Catch:{ IOException -> 0x0033 }
            if (r1 == 0) goto L_0x0043
            j.a.a.h r1 = r5.f15277a     // Catch:{ IOException -> 0x0033 }
            r1.A()     // Catch:{ IOException -> 0x0033 }
            j.a.a.h r1 = r5.f15277a     // Catch:{ IOException -> 0x0033 }
            r1.m = r2     // Catch:{ IOException -> 0x0033 }
            goto L_0x0043
        L_0x0033:
            j.a.a.h r1 = r5.f15277a     // Catch:{ all -> 0x0045 }
            r1.r = r3     // Catch:{ all -> 0x0045 }
            j.a.a.h r1 = r5.f15277a     // Catch:{ all -> 0x0045 }
            k.y r2 = k.s.a()     // Catch:{ all -> 0x0045 }
            k.h r2 = k.s.a((k.y) r2)     // Catch:{ all -> 0x0045 }
            r1.f15290k = r2     // Catch:{ all -> 0x0045 }
        L_0x0043:
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            return
        L_0x0045:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0045 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.e.run():void");
    }
}
