package c.c.a.c.a;

import h.c.b;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.C1099e;
import i.a.H;
import i.a.b.p;

/* compiled from: Coroutines.kt */
public final class a {
    public static final <T> Object a(c<? super H, ? super b<? super T>, ? extends Object> cVar, b<? super T> bVar) {
        return C1099e.a(b.f4693c.a(), cVar, bVar);
    }

    public static final <E> Object a(p<E> pVar, E e2, b<? super h> bVar) {
        if (j.a((Object) pVar.c(), (Object) e2)) {
            return h.f14579a;
        }
        return a(pVar, e2, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> java.lang.Object a(i.a.b.x<? super T> r4, T r5, h.c.b<? super h.h> r6) {
        /*
            boolean r0 = r6 instanceof com.farsitel.bazaar.common.coroutines.CoroutinesKt$safeSend$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.common.coroutines.CoroutinesKt$safeSend$1 r0 = (com.farsitel.bazaar.common.coroutines.CoroutinesKt$safeSend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.common.coroutines.CoroutinesKt$safeSend$1 r0 = new com.farsitel.bazaar.common.coroutines.CoroutinesKt$safeSend$1
            r0.<init>(r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0037
            if (r2 != r3) goto L_0x002f
            java.lang.Object r4 = r0.L$1
            java.lang.Object r4 = r0.L$0
            i.a.b.x r4 = (i.a.b.x) r4
            h.e.a((java.lang.Object) r6)     // Catch:{ Exception -> 0x004d }
            goto L_0x004d
        L_0x002f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L_0x0037:
            h.e.a((java.lang.Object) r6)
            boolean r6 = r4.a()
            if (r6 != 0) goto L_0x004d
            r0.L$0 = r4     // Catch:{ Exception -> 0x004d }
            r0.L$1 = r5     // Catch:{ Exception -> 0x004d }
            r0.label = r3     // Catch:{ Exception -> 0x004d }
            java.lang.Object r4 = r4.a(r5, r0)     // Catch:{ Exception -> 0x004d }
            if (r4 != r1) goto L_0x004d
            return r1
        L_0x004d:
            h.h r4 = h.h.f14579a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.c.a.a.a(i.a.b.x, java.lang.Object, h.c.b):java.lang.Object");
    }
}
