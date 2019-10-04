package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.eb  reason: case insensitive filesystem */
public final class C0915eb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f10871a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0909cb f10872b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0909cb f10873c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0912db f10874d;

    public C0915eb(C0912db dbVar, boolean z, C0909cb cbVar, C0909cb cbVar2) {
        this.f10874d = dbVar;
        this.f10871a = z;
        this.f10872b = cbVar;
        this.f10873c = cbVar2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0061, code lost:
        if (c.e.a.b.h.b.cc.e(r10.f10872b.f10841a, r10.f10873c.f10841a) != false) goto L_0x0064;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r10 = this;
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.pc r0 = r0.i()
            c.e.a.b.h.b.db r1 = r10.f10874d
            c.e.a.b.h.b.o r1 = r1.q()
            java.lang.String r1 = r1.C()
            boolean r0 = r0.c(r1)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x002f
            boolean r0 = r10.f10871a
            if (r0 == 0) goto L_0x0024
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.cb r0 = r0.f10855c
            if (r0 == 0) goto L_0x0024
            r0 = 1
            goto L_0x0025
        L_0x0024:
            r0 = 0
        L_0x0025:
            if (r0 == 0) goto L_0x003d
            c.e.a.b.h.b.db r3 = r10.f10874d
            c.e.a.b.h.b.cb r4 = r3.f10855c
            r3.a((c.e.a.b.h.b.C0909cb) r4, (boolean) r2)
            goto L_0x003d
        L_0x002f:
            boolean r0 = r10.f10871a
            if (r0 == 0) goto L_0x003c
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.cb r3 = r0.f10855c
            if (r3 == 0) goto L_0x003c
            r0.a((c.e.a.b.h.b.C0909cb) r3, (boolean) r2)
        L_0x003c:
            r0 = 0
        L_0x003d:
            c.e.a.b.h.b.cb r3 = r10.f10872b
            if (r3 == 0) goto L_0x0063
            long r4 = r3.f10843c
            c.e.a.b.h.b.cb r6 = r10.f10873c
            long r7 = r6.f10843c
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 != 0) goto L_0x0063
            java.lang.String r3 = r3.f10842b
            java.lang.String r4 = r6.f10842b
            boolean r3 = c.e.a.b.h.b.cc.e(r3, r4)
            if (r3 == 0) goto L_0x0063
            c.e.a.b.h.b.cb r3 = r10.f10872b
            java.lang.String r3 = r3.f10841a
            c.e.a.b.h.b.cb r4 = r10.f10873c
            java.lang.String r4 = r4.f10841a
            boolean r3 = c.e.a.b.h.b.cc.e(r3, r4)
            if (r3 != 0) goto L_0x0064
        L_0x0063:
            r1 = 1
        L_0x0064:
            if (r1 == 0) goto L_0x00cd
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            c.e.a.b.h.b.cb r3 = r10.f10873c
            c.e.a.b.h.b.C0912db.a((c.e.a.b.h.b.C0909cb) r3, (android.os.Bundle) r1, (boolean) r2)
            c.e.a.b.h.b.cb r2 = r10.f10872b
            if (r2 == 0) goto L_0x008f
            java.lang.String r2 = r2.f10841a
            if (r2 == 0) goto L_0x007d
            java.lang.String r3 = "_pn"
            r1.putString(r3, r2)
        L_0x007d:
            c.e.a.b.h.b.cb r2 = r10.f10872b
            java.lang.String r2 = r2.f10842b
            java.lang.String r3 = "_pc"
            r1.putString(r3, r2)
            c.e.a.b.h.b.cb r2 = r10.f10872b
            long r2 = r2.f10843c
            java.lang.String r4 = "_pi"
            r1.putLong(r4, r2)
        L_0x008f:
            c.e.a.b.h.b.db r2 = r10.f10874d
            c.e.a.b.h.b.pc r2 = r2.i()
            c.e.a.b.h.b.db r3 = r10.f10874d
            c.e.a.b.h.b.o r3 = r3.q()
            java.lang.String r3 = r3.C()
            boolean r2 = r2.c(r3)
            if (r2 == 0) goto L_0x00c0
            if (r0 == 0) goto L_0x00c0
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.Jb r0 = r0.u()
            long r2 = r0.E()
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x00c0
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.cc r0 = r0.g()
            r0.a((android.os.Bundle) r1, (long) r2)
        L_0x00c0:
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.Fa r0 = r0.p()
            java.lang.String r2 = "auto"
            java.lang.String r3 = "_vs"
            r0.c(r2, r3, r1)
        L_0x00cd:
            c.e.a.b.h.b.db r0 = r10.f10874d
            c.e.a.b.h.b.cb r1 = r10.f10873c
            r0.f10855c = r1
            c.e.a.b.h.b.gb r0 = r0.r()
            c.e.a.b.h.b.cb r1 = r10.f10873c
            r0.a((c.e.a.b.h.b.C0909cb) r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.C0915eb.run():void");
    }
}
