package com.farsitel.bazaar.player;

import h.c.b.a.d;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.player.CafePlayer$authorizeVideoUrl$1", f = "CafePlayer.kt", l = {408}, m = "invokeSuspend")
/* compiled from: CafePlayer.kt */
final class CafePlayer$authorizeVideoUrl$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public Object L$0;
    public int label;
    public final /* synthetic */ CafePlayer this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafePlayer$authorizeVideoUrl$1(CafePlayer cafePlayer, h.c.b bVar) {
        super(1, bVar);
        this.this$0 = cafePlayer;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new CafePlayer$authorizeVideoUrl$1(this.this$0, bVar);
    }

    public final Object a(Object obj) {
        return ((CafePlayer$authorizeVideoUrl$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0066 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r11.label
            r2 = 1
            if (r1 == 0) goto L_0x001b
            if (r1 != r2) goto L_0x0013
            java.lang.Object r0 = r11.L$0
            c.c.a.l.b.a r0 = (c.c.a.l.b.a) r0
            h.e.a((java.lang.Object) r12)
            goto L_0x0069
        L_0x0013:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L_0x001b:
            h.e.a((java.lang.Object) r12)
            com.farsitel.bazaar.player.CafePlayer r12 = r11.this$0
            c.c.a.l.b.a r12 = r12.I
            if (r12 == 0) goto L_0x008f
            com.farsitel.bazaar.player.CafePlayer r1 = r11.this$0
            c.c.a.l.b.b r3 = r1.N
            com.farsitel.bazaar.player.CafePlayer r1 = r11.this$0
            c.c.a.l.f r1 = r1.L
            java.lang.String r4 = r1.g()
            com.farsitel.bazaar.player.CafePlayer r1 = r11.this$0
            c.e.a.a.X r1 = r1.z
            if (r1 == 0) goto L_0x004d
            long r5 = r1.getCurrentPosition()
            java.lang.Long r1 = h.c.b.a.a.a((long) r5)
            if (r1 == 0) goto L_0x004d
            long r5 = r1.longValue()
            goto L_0x004f
        L_0x004d:
            r5 = 0
        L_0x004f:
            java.lang.String r7 = r12.c()
            java.lang.String r8 = r12.b()
            int r9 = r12.a()
            r11.L$0 = r12
            r11.label = r2
            r10 = r11
            java.lang.Object r1 = r3.a(r4, r5, r7, r8, r9, r10)
            if (r1 != r0) goto L_0x0067
            return r0
        L_0x0067:
            r0 = r12
            r12 = r1
        L_0x0069:
            com.farsitel.bazaar.data.entity.Either r12 = (com.farsitel.bazaar.data.entity.Either) r12
            boolean r1 = r12 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r1 == 0) goto L_0x007b
            com.farsitel.bazaar.data.entity.Either$Success r12 = (com.farsitel.bazaar.data.entity.Either.Success) r12
            java.lang.Object r12 = r12.getValue()
            java.lang.String r12 = (java.lang.String) r12
            r0.a((java.lang.String) r12)
            goto L_0x008f
        L_0x007b:
            boolean r1 = r12 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r1 == 0) goto L_0x0089
            com.farsitel.bazaar.data.entity.Either$Failure r12 = (com.farsitel.bazaar.data.entity.Either.Failure) r12
            com.farsitel.bazaar.data.entity.ErrorModel r12 = r12.getError()
            r0.a((com.farsitel.bazaar.data.entity.ErrorModel) r12)
            goto L_0x008f
        L_0x0089:
            kotlin.NoWhenBranchMatchedException r12 = new kotlin.NoWhenBranchMatchedException
            r12.<init>()
            throw r12
        L_0x008f:
            h.h r12 = h.h.f14579a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer$authorizeVideoUrl$1.d(java.lang.Object):java.lang.Object");
    }
}
