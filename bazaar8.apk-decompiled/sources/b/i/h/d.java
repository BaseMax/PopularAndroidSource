package b.i.h;

import b.i.h.f;
import b.i.h.k;

/* compiled from: FontsContractCompat */
class d implements k.a<f.c> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f2672a;

    public d(String str) {
        this.f2672a = str;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (r0 >= r1.size()) goto L_0x002c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
        ((b.i.h.k.a) r1.get(r0)).a(r5);
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002c, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0019, code lost:
        r0 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(b.i.h.f.c r5) {
        /*
            r4 = this;
            java.lang.Object r0 = b.i.h.f.f2675c
            monitor-enter(r0)
            b.f.i<java.lang.String, java.util.ArrayList<b.i.h.k$a<b.i.h.f$c>>> r1 = b.i.h.f.f2676d     // Catch:{ all -> 0x002d }
            java.lang.String r2 = r4.f2672a     // Catch:{ all -> 0x002d }
            java.lang.Object r1 = r1.get(r2)     // Catch:{ all -> 0x002d }
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch:{ all -> 0x002d }
            if (r1 != 0) goto L_0x0011
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            return
        L_0x0011:
            b.f.i<java.lang.String, java.util.ArrayList<b.i.h.k$a<b.i.h.f$c>>> r2 = b.i.h.f.f2676d     // Catch:{ all -> 0x002d }
            java.lang.String r3 = r4.f2672a     // Catch:{ all -> 0x002d }
            r2.remove(r3)     // Catch:{ all -> 0x002d }
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            r0 = 0
        L_0x001a:
            int r2 = r1.size()
            if (r0 >= r2) goto L_0x002c
            java.lang.Object r2 = r1.get(r0)
            b.i.h.k$a r2 = (b.i.h.k.a) r2
            r2.a(r5)
            int r0 = r0 + 1
            goto L_0x001a
        L_0x002c:
            return
        L_0x002d:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            goto L_0x0031
        L_0x0030:
            throw r5
        L_0x0031:
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.h.d.a(b.i.h.f$c):void");
    }
}
