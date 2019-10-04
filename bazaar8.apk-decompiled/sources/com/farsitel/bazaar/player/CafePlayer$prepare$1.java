package com.farsitel.bazaar.player;

import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.player.CafePlayer$prepare$1", f = "CafePlayer.kt", l = {133}, m = "invokeSuspend")
/* compiled from: CafePlayer.kt */
final class CafePlayer$prepare$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public Object L$0;
    public Object L$1;
    public int label;
    public H p$;
    public final /* synthetic */ CafePlayer this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafePlayer$prepare$1(CafePlayer cafePlayer, b bVar) {
        super(2, bVar);
        this.this$0 = cafePlayer;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CafePlayer$prepare$1 cafePlayer$prepare$1 = new CafePlayer$prepare$1(this.this$0, bVar);
        cafePlayer$prepare$1.p$ = (H) obj;
        return cafePlayer$prepare$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CafePlayer$prepare$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L_0x0020
            if (r1 != r2) goto L_0x0018
            java.lang.Object r0 = r6.L$1
            com.farsitel.bazaar.player.CafePlayer r0 = (com.farsitel.bazaar.player.CafePlayer) r0
            java.lang.Object r1 = r6.L$0
            c.e.a.a.X r1 = (c.e.a.a.X) r1
            h.e.a((java.lang.Object) r7)
            goto L_0x00a5
        L_0x0018:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L_0x0020:
            h.e.a((java.lang.Object) r7)
            i.a.H r7 = r6.p$
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            c.e.a.a.X r7 = r7.z
            if (r7 == 0) goto L_0x0049
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            java.lang.ref.WeakReference r7 = r7.A
            if (r7 == 0) goto L_0x0046
            java.lang.Object r7 = r7.get()
            com.google.android.exoplayer2.ui.PlayerView r7 = (com.google.android.exoplayer2.ui.PlayerView) r7
            if (r7 == 0) goto L_0x0046
            com.farsitel.bazaar.player.CafePlayer r0 = r6.this$0
            c.e.a.a.X r0 = r0.z
            r7.setPlayer(r0)
        L_0x0046:
            h.h r7 = h.h.f14579a
            return r7
        L_0x0049:
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            r7.w()
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            r7.y()
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            android.content.Context r1 = r7.K
            com.farsitel.bazaar.player.CafePlayer r3 = r6.this$0
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector r3 = r3.C
            c.e.a.a.X r1 = c.e.a.a.C0750x.a(r1, r3)
            r7.z = r1
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            java.lang.ref.WeakReference r7 = r7.A
            if (r7 == 0) goto L_0x007f
            java.lang.Object r7 = r7.get()
            com.google.android.exoplayer2.ui.PlayerView r7 = (com.google.android.exoplayer2.ui.PlayerView) r7
            if (r7 == 0) goto L_0x007f
            com.farsitel.bazaar.player.CafePlayer r1 = r6.this$0
            c.e.a.a.X r1 = r1.z
            r7.setPlayer(r1)
        L_0x007f:
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            c.e.a.a.X r1 = r7.z
            r7 = 0
            if (r1 == 0) goto L_0x00d6
            com.farsitel.bazaar.player.CafePlayer r3 = r6.this$0
            c.e.a.a.j.v r3 = r3.E
            if (r3 != 0) goto L_0x00aa
            com.farsitel.bazaar.player.CafePlayer r3 = r6.this$0
            com.farsitel.bazaar.player.CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1 r4 = new com.farsitel.bazaar.player.CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1
            r4.<init>(r7, r6)
            r6.L$0 = r1
            r6.L$1 = r3
            r6.label = r2
            java.lang.Object r7 = c.c.a.c.a.a.a(r4, r6)
            if (r7 != r0) goto L_0x00a4
            return r0
        L_0x00a4:
            r0 = r3
        L_0x00a5:
            c.e.a.a.j.v r7 = (c.e.a.a.j.v) r7
            r0.E = r7
        L_0x00aa:
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            c.e.a.a.j.v r7 = r7.E
            r1.a((c.e.a.a.j.v) r7)
            r1.b((boolean) r2)
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            long r2 = r7.F
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 == 0) goto L_0x00ce
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            long r2 = r7.F
            r1.a(r2)
        L_0x00ce:
            com.farsitel.bazaar.player.CafePlayer r7 = r6.this$0
            r1.a((c.e.a.a.M.b) r7)
            h.h r7 = h.h.f14579a
            return r7
        L_0x00d6:
            h.f.b.j.a()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.player.CafePlayer$prepare$1.d(java.lang.Object):java.lang.Object");
    }
}
