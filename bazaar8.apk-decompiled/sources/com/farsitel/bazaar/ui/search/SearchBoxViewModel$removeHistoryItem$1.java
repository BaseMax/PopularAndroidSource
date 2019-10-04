package com.farsitel.bazaar.ui.search;

import c.c.a.c.a.a;
import c.c.a.c.b.i;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.search.SearchBoxViewModel$removeHistoryItem$1", f = "SearchBoxViewModel.kt", l = {102}, m = "invokeSuspend")
/* compiled from: SearchBoxViewModel.kt */
final class SearchBoxViewModel$removeHistoryItem$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ SearchHistoryItem $searchHistoryItem;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.w.c this$0;

    @d(c = "com.farsitel.bazaar.ui.search.SearchBoxViewModel$removeHistoryItem$1$1", f = "SearchBoxViewModel.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.search.SearchBoxViewModel$removeHistoryItem$1$1  reason: invalid class name */
    /* compiled from: SearchBoxViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SearchBoxViewModel$removeHistoryItem$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                c.c.a.e.d.s.c c2 = this.this$0.this$0.f7039i;
                String obj2 = i.a(this.this$0.$searchHistoryItem.a()).toString();
                this.label = 1;
                if (c2.b(obj2, this) == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchBoxViewModel$removeHistoryItem$1(c.c.a.n.w.c cVar, SearchHistoryItem searchHistoryItem, b bVar) {
        super(2, bVar);
        this.this$0 = cVar;
        this.$searchHistoryItem = searchHistoryItem;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SearchBoxViewModel$removeHistoryItem$1 searchBoxViewModel$removeHistoryItem$1 = new SearchBoxViewModel$removeHistoryItem$1(this.this$0, this.$searchHistoryItem, bVar);
        searchBoxViewModel$removeHistoryItem$1.p$ = (H) obj;
        return searchBoxViewModel$removeHistoryItem$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SearchBoxViewModel$removeHistoryItem$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (a.a(r4, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
