package j;

/* renamed from: j.o  reason: case insensitive filesystem */
/* compiled from: ConnectionPool */
class C1148o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1149p f15675a;

    public C1148o(C1149p pVar) {
        this.f15675a = pVar;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
        L_0x0000:
            j.p r0 = r6.f15675a
            long r1 = java.lang.System.nanoTime()
            long r0 = r0.a((long) r1)
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x0011
            return
        L_0x0011:
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L_0x0000
            r2 = 1000000(0xf4240, double:4.940656E-318)
            long r4 = r0 / r2
            long r2 = r2 * r4
            long r0 = r0 - r2
            j.p r2 = r6.f15675a
            monitor-enter(r2)
            j.p r3 = r6.f15675a     // Catch:{ InterruptedException -> 0x002b }
            int r1 = (int) r0     // Catch:{ InterruptedException -> 0x002b }
            r3.wait(r4, r1)     // Catch:{ InterruptedException -> 0x002b }
            goto L_0x002b
        L_0x0029:
            r0 = move-exception
            goto L_0x002d
        L_0x002b:
            monitor-exit(r2)     // Catch:{ all -> 0x0029 }
            goto L_0x0000
        L_0x002d:
            monitor-exit(r2)     // Catch:{ all -> 0x0029 }
            goto L_0x0030
        L_0x002f:
            throw r0
        L_0x0030:
            goto L_0x002f
        */
        throw new UnsupportedOperationException("Method not decompiled: j.C1148o.run():void");
    }
}
