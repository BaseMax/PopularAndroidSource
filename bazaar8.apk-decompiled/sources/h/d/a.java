package h.d;

import h.f.b.j;
import java.lang.reflect.Method;

/* compiled from: PlatformImplementations.kt */
public class a {

    /* renamed from: h.d.a$a  reason: collision with other inner class name */
    /* compiled from: PlatformImplementations.kt */
    private static final class C0143a {

        /* renamed from: a  reason: collision with root package name */
        public static final Method f14538a;

        /* renamed from: b  reason: collision with root package name */
        public static final C0143a f14539b = new C0143a();

        /* JADX WARNING: Removed duplicated region for block: B:13:0x0049 A[EDGE_INSN: B:13:0x0049->B:11:0x0049 ?: BREAK  , SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:9:0x0045 A[LOOP:0: B:1:0x0015->B:9:0x0045, LOOP_END] */
        static {
            /*
                h.d.a$a r0 = new h.d.a$a
                r0.<init>()
                f14539b = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableClass.methods"
                h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            L_0x0015:
                if (r4 >= r2) goto L_0x0048
                r5 = r1[r4]
                java.lang.String r6 = "it"
                h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r6)
                java.lang.String r6 = r5.getName()
                java.lang.String r7 = "addSuppressed"
                boolean r6 = h.f.b.j.a((java.lang.Object) r6, (java.lang.Object) r7)
                if (r6 == 0) goto L_0x0041
                java.lang.Class[] r6 = r5.getParameterTypes()
                java.lang.String r7 = "it.parameterTypes"
                h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r7)
                java.lang.Object r6 = h.a.i.c(r6)
                java.lang.Class r6 = (java.lang.Class) r6
                boolean r6 = h.f.b.j.a((java.lang.Object) r6, (java.lang.Object) r0)
                if (r6 == 0) goto L_0x0041
                r6 = 1
                goto L_0x0042
            L_0x0041:
                r6 = 0
            L_0x0042:
                if (r6 == 0) goto L_0x0045
                goto L_0x0049
            L_0x0045:
                int r4 = r4 + 1
                goto L_0x0015
            L_0x0048:
                r5 = 0
            L_0x0049:
                f14538a = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: h.d.a.C0143a.<clinit>():void");
        }
    }

    public void a(Throwable th, Throwable th2) {
        j.b(th, "cause");
        j.b(th2, "exception");
        Method method = C0143a.f14538a;
        if (method != null) {
            method.invoke(th, new Object[]{th2});
        }
    }
}
