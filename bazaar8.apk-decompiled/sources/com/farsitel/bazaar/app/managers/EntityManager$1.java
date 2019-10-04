package com.farsitel.bazaar.app.managers;

import c.c.a.b.d.i;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.managers.EntityManager$1", f = "EntityManager.kt", l = {171}, m = "invokeSuspend")
/* compiled from: EntityManager.kt */
final class EntityManager$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public H p$;
    public final /* synthetic */ i this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EntityManager$1(i iVar, b bVar) {
        super(2, bVar);
        this.this$0 = iVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        EntityManager$1 entityManager$1 = new EntityManager$1(this.this$0, bVar);
        entityManager$1.p$ = (H) obj;
        return entityManager$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((EntityManager$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0068 A[Catch:{ Throwable -> 0x0080, all -> 0x007e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r11.label
            r2 = 1
            if (r1 == 0) goto L_0x0031
            if (r1 != r2) goto L_0x0029
            java.lang.Object r1 = r11.L$5
            i.a.b.k r1 = (i.a.b.k) r1
            java.lang.Object r3 = r11.L$4
            i.a.b.t r3 = (i.a.b.t) r3
            java.lang.Object r4 = r11.L$3
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Object r5 = r11.L$2
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r11.L$1
            com.farsitel.bazaar.app.managers.EntityManager$1 r6 = (com.farsitel.bazaar.app.managers.EntityManager$1) r6
            java.lang.Object r7 = r11.L$0
            i.a.b.t r7 = (i.a.b.t) r7
            h.e.a((java.lang.Object) r12)     // Catch:{ Throwable -> 0x0080 }
            r8 = r0
            r0 = r11
            goto L_0x0060
        L_0x0029:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L_0x0031:
            h.e.a((java.lang.Object) r12)
            i.a.H r12 = r11.p$
            com.farsitel.bazaar.app.download.DownloadService$a r12 = com.farsitel.bazaar.app.download.DownloadService.f12108b
            i.a.b.t r5 = r12.a()
            r4 = 0
            i.a.b.k r12 = r5.iterator()     // Catch:{ Throwable -> 0x0080 }
            r1 = r12
            r6 = r0
            r3 = r5
            r7 = r3
            r12 = r11
            r0 = r12
        L_0x0047:
            r0.L$0 = r7     // Catch:{ Throwable -> 0x0080 }
            r0.L$1 = r12     // Catch:{ Throwable -> 0x0080 }
            r0.L$2 = r5     // Catch:{ Throwable -> 0x0080 }
            r0.L$3 = r4     // Catch:{ Throwable -> 0x0080 }
            r0.L$4 = r3     // Catch:{ Throwable -> 0x0080 }
            r0.L$5 = r1     // Catch:{ Throwable -> 0x0080 }
            r0.label = r2     // Catch:{ Throwable -> 0x0080 }
            java.lang.Object r8 = r1.a(r12)     // Catch:{ Throwable -> 0x0080 }
            if (r8 != r6) goto L_0x005c
            return r6
        L_0x005c:
            r10 = r6
            r6 = r12
            r12 = r8
            r8 = r10
        L_0x0060:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch:{ Throwable -> 0x0080 }
            boolean r12 = r12.booleanValue()     // Catch:{ Throwable -> 0x0080 }
            if (r12 == 0) goto L_0x0076
            java.lang.Object r12 = r1.next()     // Catch:{ Throwable -> 0x0080 }
            c.c.a.b.b.b r12 = (c.c.a.b.b.b) r12     // Catch:{ Throwable -> 0x0080 }
            c.c.a.b.d.i r9 = r0.this$0     // Catch:{ Throwable -> 0x0080 }
            r9.a((c.c.a.b.b.b) r12)     // Catch:{ Throwable -> 0x0080 }
            r12 = r6
            r6 = r8
            goto L_0x0047
        L_0x0076:
            h.h r12 = h.h.f14579a     // Catch:{ Throwable -> 0x0080 }
            i.a.b.m.a(r5, r4)
            h.h r12 = h.h.f14579a
            return r12
        L_0x007e:
            r12 = move-exception
            goto L_0x0083
        L_0x0080:
            r12 = move-exception
            r4 = r12
            throw r4     // Catch:{ all -> 0x007e }
        L_0x0083:
            i.a.b.m.a(r5, r4)
            goto L_0x0088
        L_0x0087:
            throw r12
        L_0x0088:
            goto L_0x0087
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.managers.EntityManager$1.d(java.lang.Object):java.lang.Object");
    }
}
