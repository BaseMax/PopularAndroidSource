package i.a;

import h.c.c;
import h.c.e;
import h.f.b.j;
import i.a.e.b;

/* compiled from: CoroutineContext.kt */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f14631a;

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0.equals("on") != false) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r0.equals("") != false) goto L_0x0033;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = i.a.c.w.a(r0)
            if (r0 != 0) goto L_0x0009
            goto L_0x0033
        L_0x0009:
            int r1 = r0.hashCode()
            if (r1 == 0) goto L_0x002b
            r2 = 3551(0xddf, float:4.976E-42)
            if (r1 == r2) goto L_0x0022
            r2 = 109935(0x1ad6f, float:1.54052E-40)
            if (r1 != r2) goto L_0x0037
            java.lang.String r1 = "off"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L_0x0037
            r0 = 0
            goto L_0x0034
        L_0x0022:
            java.lang.String r1 = "on"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L_0x0037
            goto L_0x0033
        L_0x002b:
            java.lang.String r1 = ""
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L_0x0037
        L_0x0033:
            r0 = 1
        L_0x0034:
            f14631a = r0
            return
        L_0x0037:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            r1.append(r2)
            r1.append(r0)
            r0 = 39
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.B.<clinit>():void");
    }

    public static final C a() {
        return f14631a ? b.f14792g : C1127t.f14864c;
    }

    public static final e a(H h2, e eVar) {
        j.b(h2, "$this$newCoroutineContext");
        j.b(eVar, "context");
        e plus = h2.a().plus(eVar);
        e plus2 = K.c() ? plus.plus(new F(K.b().incrementAndGet())) : plus;
        return (plus == W.a() || plus.get(c.f14536c) != null) ? plus2 : plus2.plus(W.a());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0025, code lost:
        if (r4 != null) goto L_0x002a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.String a(h.c.e r4) {
        /*
            java.lang.String r0 = "$this$coroutineName"
            h.f.b.j.b(r4, r0)
            boolean r0 = i.a.K.c()
            r1 = 0
            if (r0 != 0) goto L_0x000d
            return r1
        L_0x000d:
            i.a.F$a r0 = i.a.F.f14635a
            h.c.e$b r0 = r4.get(r0)
            i.a.F r0 = (i.a.F) r0
            if (r0 == 0) goto L_0x0043
            i.a.G$a r1 = i.a.G.f14637a
            h.c.e$b r4 = r4.get(r1)
            i.a.G r4 = (i.a.G) r4
            if (r4 == 0) goto L_0x0028
            java.lang.String r4 = r4.x()
            if (r4 == 0) goto L_0x0028
            goto L_0x002a
        L_0x0028:
            java.lang.String r4 = "coroutine"
        L_0x002a:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r4 = 35
            r1.append(r4)
            long r2 = r0.x()
            r1.append(r2)
            java.lang.String r4 = r1.toString()
            return r4
        L_0x0043:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.B.a(h.c.e):java.lang.String");
    }
}
