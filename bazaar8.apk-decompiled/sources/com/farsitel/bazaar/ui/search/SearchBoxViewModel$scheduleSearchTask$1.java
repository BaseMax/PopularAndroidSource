package com.farsitel.bazaar.ui.search;

import c.c.a.n.w.c;
import h.f.a.a;
import h.h;
import java.util.Timer;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchBoxViewModel.kt */
final class SearchBoxViewModel$scheduleSearchTask$1 extends Lambda implements a<h> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchBoxViewModel$scheduleSearchTask$1(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final void invoke() {
        Timer d2 = this.this$0.f7034d;
        if (d2 != null) {
            d2.cancel();
            d2.purge();
        }
        this.this$0.f7034d = null;
        this.this$0.f7034d = new Timer();
    }
}
