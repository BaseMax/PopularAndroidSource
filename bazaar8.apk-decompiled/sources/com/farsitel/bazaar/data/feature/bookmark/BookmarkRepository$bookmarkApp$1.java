package com.farsitel.bazaar.data.feature.bookmark;

import c.c.a.e.d.d.b;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import h.c.b.a.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository", f = "BookmarkRepository.kt", l = {22}, m = "bookmarkApp")
/* compiled from: BookmarkRepository.kt */
final class BookmarkRepository$bookmarkApp$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkRepository$bookmarkApp$1(b bVar, h.c.b bVar2) {
        super(bVar2);
        this.this$0 = bVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((BookmarkModel) null, (h.c.b<? super Boolean>) this);
    }
}
