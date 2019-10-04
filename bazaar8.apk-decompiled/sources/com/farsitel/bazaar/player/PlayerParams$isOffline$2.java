package com.farsitel.bazaar.player;

import c.c.a.l.f;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: PlayerParams.kt */
final class PlayerParams$isOffline$2 extends Lambda implements a<Boolean> {
    public final /* synthetic */ f this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayerParams$isOffline$2(f fVar) {
        super(0);
        this.this$0 = fVar;
    }

    public final boolean invoke() {
        return this.this$0.d() == VideoSource.DISK;
    }
}
