package i.a;

import h.c.e;
import h.f.b.j;
import i.a.f.b;

/* compiled from: Builders.common.kt */
public class O<T> extends C1088a<T> implements N<T>, b<T> {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public O(e eVar, boolean z) {
        super(eVar, z);
        j.b(eVar, "parentContext");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static /* synthetic */ java.lang.Object a(i.a.O r4, h.c.b r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.DeferredCoroutine$await$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            kotlinx.coroutines.DeferredCoroutine$await$1 r0 = (kotlinx.coroutines.DeferredCoroutine$await$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            kotlinx.coroutines.DeferredCoroutine$await$1 r0 = new kotlinx.coroutines.DeferredCoroutine$await$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r4 = r0.L$0
            i.a.O r4 = (i.a.O) r4
            h.e.a((java.lang.Object) r5)
            goto L_0x0043
        L_0x002d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.b((h.c.b<java.lang.Object>) r0)
            if (r5 != r1) goto L_0x0043
            return r1
        L_0x0043:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.O.a(i.a.O, h.c.b):java.lang.Object");
    }

    public Object a(h.c.b<? super T> bVar) {
        return a(this, bVar);
    }
}
