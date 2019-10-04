package c.e.a.b.g.f;

import java.util.Collections;
import java.util.List;

public final class Fb extends Db {

    /* renamed from: c  reason: collision with root package name */
    public static final Class<?> f10156c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public Fb() {
        super();
    }

    public static <E> List<E> c(Object obj, long j2) {
        return (List) Fc.f(obj, j2);
    }

    public final <L> List<L> a(Object obj, long j2) {
        return a(obj, j2, 10);
    }

    public final void b(Object obj, long j2) {
        Object obj2;
        List list = (List) Fc.f(obj, j2);
        if (list instanceof Cb) {
            obj2 = ((Cb) list).u();
        } else if (!f10156c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof C0809cc) || !(list instanceof C0883vb)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                C0883vb vbVar = (C0883vb) list;
                if (vbVar.s()) {
                    vbVar.t();
                }
                return;
            }
        } else {
            return;
        }
        Fc.a(obj, j2, obj2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v9, resolved type: c.e.a.b.g.f.Bb} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: java.util.ArrayList} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v14, resolved type: c.e.a.b.g.f.Bb} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v15, resolved type: c.e.a.b.g.f.Bb} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <L> java.util.List<L> a(java.lang.Object r3, long r4, int r6) {
        /*
            java.util.List r0 = c(r3, r4)
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L_0x002d
            boolean r1 = r0 instanceof c.e.a.b.g.f.Cb
            if (r1 == 0) goto L_0x0014
            c.e.a.b.g.f.Bb r0 = new c.e.a.b.g.f.Bb
            r0.<init>((int) r6)
            goto L_0x0029
        L_0x0014:
            boolean r1 = r0 instanceof c.e.a.b.g.f.C0809cc
            if (r1 == 0) goto L_0x0024
            boolean r1 = r0 instanceof c.e.a.b.g.f.C0883vb
            if (r1 == 0) goto L_0x0024
            c.e.a.b.g.f.vb r0 = (c.e.a.b.g.f.C0883vb) r0
            c.e.a.b.g.f.vb r6 = r0.c(r6)
            r0 = r6
            goto L_0x0029
        L_0x0024:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r6)
        L_0x0029:
            c.e.a.b.g.f.Fc.a((java.lang.Object) r3, (long) r4, (java.lang.Object) r0)
            goto L_0x007f
        L_0x002d:
            java.lang.Class<?> r1 = f10156c
            java.lang.Class r2 = r0.getClass()
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L_0x004b
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r0.size()
            int r2 = r2 + r6
            r1.<init>(r2)
            r1.addAll(r0)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r3, (long) r4, (java.lang.Object) r1)
        L_0x0049:
            r0 = r1
            goto L_0x007f
        L_0x004b:
            boolean r1 = r0 instanceof c.e.a.b.g.f.Cc
            if (r1 == 0) goto L_0x0062
            c.e.a.b.g.f.Bb r1 = new c.e.a.b.g.f.Bb
            int r2 = r0.size()
            int r2 = r2 + r6
            r1.<init>((int) r2)
            c.e.a.b.g.f.Cc r0 = (c.e.a.b.g.f.Cc) r0
            r1.addAll(r0)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r3, (long) r4, (java.lang.Object) r1)
            goto L_0x0049
        L_0x0062:
            boolean r1 = r0 instanceof c.e.a.b.g.f.C0809cc
            if (r1 == 0) goto L_0x007f
            boolean r1 = r0 instanceof c.e.a.b.g.f.C0883vb
            if (r1 == 0) goto L_0x007f
            r1 = r0
            c.e.a.b.g.f.vb r1 = (c.e.a.b.g.f.C0883vb) r1
            boolean r2 = r1.s()
            if (r2 != 0) goto L_0x007f
            int r0 = r0.size()
            int r0 = r0 + r6
            c.e.a.b.g.f.vb r0 = r1.c(r0)
            c.e.a.b.g.f.Fc.a((java.lang.Object) r3, (long) r4, (java.lang.Object) r0)
        L_0x007f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Fb.a(java.lang.Object, long, int):java.util.List");
    }

    public final <E> void a(Object obj, Object obj2, long j2) {
        List c2 = c(obj2, j2);
        List a2 = a(obj, j2, c2.size());
        int size = a2.size();
        int size2 = c2.size();
        if (size > 0 && size2 > 0) {
            a2.addAll(c2);
        }
        if (size > 0) {
            c2 = a2;
        }
        Fc.a(obj, j2, (Object) c2);
    }
}
