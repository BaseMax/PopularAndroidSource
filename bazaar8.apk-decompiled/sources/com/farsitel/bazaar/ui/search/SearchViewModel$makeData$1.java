package com.farsitel.bazaar.ui.search;

import c.c.a.c.a.a;
import c.c.a.c.b.i;
import c.c.a.n.w.l;
import c.c.a.n.w.q;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.SearchItems;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.search.SearchViewModel$makeData$1", f = "SearchViewModel.kt", l = {33}, m = "invokeSuspend")
/* compiled from: SearchViewModel.kt */
final class SearchViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ l $params;
    public int label;
    public H p$;
    public final /* synthetic */ q this$0;

    @d(c = "com.farsitel.bazaar.ui.search.SearchViewModel$makeData$1$1", f = "SearchViewModel.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.search.SearchViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: SearchViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends SearchItems>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SearchViewModel$makeData$1 this$0;

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
                c.c.a.e.d.s.h b2 = this.this$0.this$0.B;
                String obj2 = i.a(this.this$0.$params.a()).toString();
                String c2 = this.this$0.this$0.y;
                if (c2 == null) {
                    c2 = this.this$0.$params.c();
                }
                String str = c2;
                int a3 = this.this$0.this$0.h();
                String b3 = this.this$0.$params.b();
                if (b3 == null) {
                    b3 = c.c.a.c.d.e.a();
                }
                this.label = 1;
                obj = b2.a(obj2, str, a3, b3, this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchViewModel$makeData$1(q qVar, l lVar, b bVar) {
        super(2, bVar);
        this.this$0 = qVar;
        this.$params = lVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SearchViewModel$makeData$1 searchViewModel$makeData$1 = new SearchViewModel$makeData$1(this.this$0, this.$params, bVar);
        searchViewModel$makeData$1.p$ = (H) obj;
        return searchViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SearchViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        q qVar = this.this$0;
        if (either instanceof Either.Success) {
            qVar.a((SearchItems) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            qVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
