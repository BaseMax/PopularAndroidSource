package com.farsitel.bazaar.analytics.tracker.actionlog.data.remote;

import c.c.a.a.b.a.a.c.a;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.analytics.tracker.actionlog.data.remote.ActionLogRemoteDataSource", f = "ActionLogRemoteDataSource.kt", l = {41, 48}, m = "sendActions")
/* compiled from: ActionLogRemoteDataSource.kt */
final class ActionLogRemoteDataSource$sendActions$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ActionLogRemoteDataSource$sendActions$1(a aVar, b bVar) {
        super(bVar);
        this.this$0 = aVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((List<c.c.a.a.b.a.a.a.a>) null, (b<? super Either<Integer>>) this);
    }
}
