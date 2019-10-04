package com.farsitel.bazaar.work;

import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import h.c.b;
import h.c.b.a.a;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: PendingBookmarkWorker.kt */
final class PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ Ref$BooleanRef $aggregateResult$inlined;
    public final /* synthetic */ BookmarkModel $this_with;
    public int label;
    public H p$;
    public final /* synthetic */ PendingBookmarkWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1(BookmarkModel bookmarkModel, b bVar, PendingBookmarkWorker pendingBookmarkWorker, Ref$BooleanRef ref$BooleanRef) {
        super(2, bVar);
        this.$this_with = bookmarkModel;
        this.this$0 = pendingBookmarkWorker;
        this.$aggregateResult$inlined = ref$BooleanRef;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1 pendingBookmarkWorker$doWork$$inlined$forEach$lambda$1 = new PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1(this.$this_with, bVar, this.this$0, this.$aggregateResult$inlined);
        pendingBookmarkWorker$doWork$$inlined$forEach$lambda$1.p$ = (H) obj;
        return pendingBookmarkWorker$doWork$$inlined$forEach$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PendingBookmarkWorker$doWork$$inlined$forEach$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            if (this.$this_with.isBookmarked()) {
                c.c.a.e.d.d.b a3 = this.this$0.f12462h;
                BookmarkModel bookmarkModel = new BookmarkModel(this.$this_with.getPackageName(), this.$this_with.getIconUrl(), this.$this_with.getAppName(), true, this.$this_with.getPrice(), this.$this_with.getPriceString());
                this.label = 1;
                obj = a3.a(bookmarkModel, (b<? super Boolean>) this);
                if (obj == a2) {
                    return a2;
                }
            } else {
                c.c.a.e.d.d.b a4 = this.this$0.f12462h;
                String packageName = this.$this_with.getPackageName();
                this.label = 2;
                obj = a4.b(packageName, this);
                if (obj == a2) {
                    return a2;
                }
            }
        } else if (i2 == 1 || i2 == 2) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return a.a(((Boolean) obj).booleanValue());
    }
}
