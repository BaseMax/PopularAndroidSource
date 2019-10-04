package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.SyncBookmarkWorker$doWork$1", f = "SyncBookmarkWorker.kt", l = {18}, m = "invokeSuspend")
/* compiled from: SyncBookmarkWorker.kt */
final class SyncBookmarkWorker$doWork$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ SyncBookmarkWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SyncBookmarkWorker$doWork$1(SyncBookmarkWorker syncBookmarkWorker, b bVar) {
        super(2, bVar);
        this.this$0 = syncBookmarkWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SyncBookmarkWorker$doWork$1 syncBookmarkWorker$doWork$1 = new SyncBookmarkWorker$doWork$1(this.this$0, bVar);
        syncBookmarkWorker$doWork$1.p$ = (H) obj;
        return syncBookmarkWorker$doWork$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SyncBookmarkWorker$doWork$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.d.b a3 = this.this$0.f12493h;
            this.label = 1;
            if (a3.b(this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ListenableWorker.a.c();
    }
}
