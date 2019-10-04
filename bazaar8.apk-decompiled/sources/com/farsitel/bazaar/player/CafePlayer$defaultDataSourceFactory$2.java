package com.farsitel.bazaar.player;

import c.e.a.a.n.q;
import c.e.a.a.o.I;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: CafePlayer.kt */
final class CafePlayer$defaultDataSourceFactory$2 extends Lambda implements a<q> {
    public final /* synthetic */ CafePlayer this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafePlayer$defaultDataSourceFactory$2(CafePlayer cafePlayer) {
        super(0);
        this.this$0 = cafePlayer;
    }

    public final q invoke() {
        return new q(this.this$0.K, I.a(this.this$0.K, "CafePlayer"));
    }
}
