package com.farsitel.bazaar.player;

import c.c.a.l.f;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: PlayerParams.kt */
final class PlayerParams$source$2 extends Lambda implements a<VideoSource> {
    public final /* synthetic */ f this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayerParams$source$2(f fVar) {
        super(0);
        this.this$0 = fVar;
    }

    public final VideoSource invoke() {
        f fVar = this.this$0;
        if (fVar.b(fVar.a())) {
            return VideoSource.DISK;
        }
        f fVar2 = this.this$0;
        if (fVar2.a(fVar2.a())) {
            return VideoSource.APARAT;
        }
        return VideoSource.NETWORK;
    }
}
