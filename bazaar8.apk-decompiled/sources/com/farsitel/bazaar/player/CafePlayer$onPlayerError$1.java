package com.farsitel.bazaar.player;

import com.google.android.exoplayer2.ExoPlaybackException;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.player.CafePlayer$onPlayerError$1", f = "CafePlayer.kt", l = {310}, m = "invokeSuspend")
/* compiled from: CafePlayer.kt */
final class CafePlayer$onPlayerError$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ ExoPlaybackException $error;
    public int label;
    public H p$;
    public final /* synthetic */ CafePlayer this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafePlayer$onPlayerError$1(CafePlayer cafePlayer, ExoPlaybackException exoPlaybackException, b bVar) {
        super(2, bVar);
        this.this$0 = cafePlayer;
        this.$error = exoPlaybackException;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CafePlayer$onPlayerError$1 cafePlayer$onPlayerError$1 = new CafePlayer$onPlayerError$1(this.this$0, this.$error, bVar);
        cafePlayer$onPlayerError$1.p$ = (H) obj;
        return cafePlayer$onPlayerError$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CafePlayer$onPlayerError$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.l.b.b k2 = this.this$0.N;
            String g2 = this.this$0.L.g();
            String uri = this.this$0.L.f().toString();
            j.a((Object) uri, "params.url.toString()");
            String a3 = this.this$0.b(this.$error);
            this.label = 1;
            if (k2.a(g2, uri, a3, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
