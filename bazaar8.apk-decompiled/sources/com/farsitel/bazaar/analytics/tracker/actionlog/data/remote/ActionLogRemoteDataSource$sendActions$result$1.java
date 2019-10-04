package com.farsitel.bazaar.analytics.tracker.actionlog.data.remote;

import c.c.a.a.b.a.a.c.a;
import c.c.a.a.b.a.a.c.a.e;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: ActionLogRemoteDataSource.kt */
final class ActionLogRemoteDataSource$sendActions$result$1 extends Lambda implements b<e, Integer> {
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ActionLogRemoteDataSource$sendActions$result$1(a aVar) {
        super(1);
        this.this$0 = aVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Integer.valueOf(a((e) obj));
    }

    public final int a(e eVar) {
        j.b(eVar, "sendActionLogResponseDto");
        this.this$0.a(eVar.b());
        Integer a2 = eVar.a();
        if (a2 != null) {
            return a2.intValue();
        }
        return 0;
    }
}
