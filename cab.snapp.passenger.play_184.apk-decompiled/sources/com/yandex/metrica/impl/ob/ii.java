package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.a;
import com.yandex.metrica.impl.as;
import com.yandex.metrica.impl.v;

class ii {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6161a;

    /* renamed from: b  reason: collision with root package name */
    private ma f6162b;
    private hq c;
    private as d;
    private ft e;
    private fs f;
    private nq g;
    private id h;
    private final a i;
    private boolean j;

    public ii(Context context, ma maVar, hq hqVar, ft ftVar, fs fsVar) {
        this(context, maVar, hqVar, new as(), ftVar, fsVar, new np(), new id(), v.a().g());
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x001d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(com.yandex.metrica.impl.ob.fk r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.hq r0 = r9.c
            r1 = 0
            if (r0 == 0) goto L_0x003d
            r2 = 1
            if (r0 == 0) goto L_0x001a
            int r0 = r0.e
            long r3 = (long) r0
            long r5 = r10.a()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 < 0) goto L_0x0015
            r0 = 1
            goto L_0x0016
        L_0x0015:
            r0 = 0
        L_0x0016:
            if (r0 == 0) goto L_0x001a
            r0 = 1
            goto L_0x001b
        L_0x001a:
            r0 = 0
        L_0x001b:
            if (r0 != 0) goto L_0x003c
            com.yandex.metrica.impl.ob.hq r0 = r9.c
            if (r0 == 0) goto L_0x0039
            long r3 = r0.g
            com.yandex.metrica.impl.ob.nq r0 = r9.g
            long r5 = r0.a()
            long r7 = r10.b()
            long r5 = r5 - r7
            int r10 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r10 <= 0) goto L_0x0034
            r10 = 1
            goto L_0x0035
        L_0x0034:
            r10 = 0
        L_0x0035:
            if (r10 == 0) goto L_0x0039
            r10 = 1
            goto L_0x003a
        L_0x0039:
            r10 = 0
        L_0x003a:
            if (r10 == 0) goto L_0x003d
        L_0x003c:
            return r2
        L_0x003d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ii.a(com.yandex.metrica.impl.ob.fk):boolean");
    }

    public void a(ma maVar, hq hqVar) {
        this.f6162b = maVar;
        this.c = hqVar;
    }

    ii(Context context, ma maVar, hq hqVar, as asVar, ft ftVar, fs fsVar, nq nqVar, id idVar, a aVar) {
        this.j = false;
        this.f6161a = context;
        this.c = hqVar;
        this.f6162b = maVar;
        this.d = asVar;
        this.e = ftVar;
        this.f = fsVar;
        this.g = nqVar;
        this.h = idVar;
        this.i = aVar;
    }

    public void a() {
        if (a(this.e) || a(this.f)) {
            if (!this.j) {
                this.i.b();
                this.j = true;
            }
            hq hqVar = this.c;
            if (hqVar != null) {
                hz a2 = this.h.a(this.f6161a, this.f6162b, hqVar);
                boolean b2 = a2.b();
                if (!b2) {
                    a2.D();
                } else if (a2.d().b()) {
                    while (!Thread.currentThread().isInterrupted() && b2) {
                        this.d.a(a2);
                        b2 = !a2.c() && a2.u();
                    }
                }
            }
        }
    }
}
