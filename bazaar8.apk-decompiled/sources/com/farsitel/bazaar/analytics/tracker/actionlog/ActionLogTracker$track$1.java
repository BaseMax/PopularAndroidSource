package com.farsitel.bazaar.analytics.tracker.actionlog;

import c.c.a.a.b.a.a;
import h.c.b;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker", f = "ActionLogTracker.kt", l = {26}, m = "track")
/* compiled from: ActionLogTracker.kt */
final class ActionLogTracker$track$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ActionLogTracker$track$1(a aVar, b bVar) {
        super(bVar);
        this.this$0 = aVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
