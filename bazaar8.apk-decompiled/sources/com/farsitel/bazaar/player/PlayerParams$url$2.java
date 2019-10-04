package com.farsitel.bazaar.player;

import android.net.Uri;
import c.c.a.l.f;
import c.c.a.l.g;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: PlayerParams.kt */
final class PlayerParams$url$2 extends Lambda implements a<Uri> {
    public final /* synthetic */ f this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayerParams$url$2(f fVar) {
        super(0);
        this.this$0 = fVar;
    }

    public final Uri invoke() {
        int i2 = g.f6126a[this.this$0.d().ordinal()];
        if (i2 == 1) {
            f fVar = this.this$0;
            return fVar.c(fVar.a());
        } else if (i2 != 2) {
            return this.this$0.a();
        } else {
            return Uri.parse(this.this$0.f6116c + this.this$0.a().getPath());
        }
    }
}
