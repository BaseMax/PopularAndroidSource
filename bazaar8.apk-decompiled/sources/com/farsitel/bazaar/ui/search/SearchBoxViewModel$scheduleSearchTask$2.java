package com.farsitel.bazaar.ui.search;

import c.c.a.n.w.b;
import c.c.a.n.w.c;
import h.f.a.a;
import h.h;
import java.util.TimerTask;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchBoxViewModel.kt */
final class SearchBoxViewModel$scheduleSearchTask$2 extends Lambda implements a<h> {
    public final /* synthetic */ a $searchTask;
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchBoxViewModel$scheduleSearchTask$2(c cVar, a aVar) {
        super(0);
        this.this$0 = cVar;
        this.$searchTask = aVar;
    }

    public final void invoke() {
        TimerTask e2 = this.this$0.f7035e;
        if (e2 != null) {
            e2.cancel();
        }
        this.this$0.f7035e = new b(this);
    }
}
