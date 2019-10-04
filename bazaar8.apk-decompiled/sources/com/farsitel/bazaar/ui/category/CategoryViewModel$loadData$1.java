package com.farsitel.bazaar.ui.category;

import c.c.a.e.d.g.a;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.category.CategoryViewModel$loadData$1", f = "CategoryViewModel.kt", l = {32}, m = "invokeSuspend")
/* compiled from: CategoryViewModel.kt */
final class CategoryViewModel$loadData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.h.c this$0;

    @d(c = "com.farsitel.bazaar.ui.category.CategoryViewModel$loadData$1$1", f = "CategoryViewModel.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.category.CategoryViewModel$loadData$1$1  reason: invalid class name */
    /* compiled from: CategoryViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends CategoryItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ CategoryViewModel$loadData$1 this$0;

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
                a a3 = this.this$0.this$0.f6418e;
                this.label = 1;
                obj = a3.a(this);
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
    public CategoryViewModel$loadData$1(c.c.a.n.h.c cVar, b bVar) {
        super(2, bVar);
        this.this$0 = cVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CategoryViewModel$loadData$1 categoryViewModel$loadData$1 = new CategoryViewModel$loadData$1(this.this$0, bVar);
        categoryViewModel$loadData$1.p$ = (H) obj;
        return categoryViewModel$loadData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CategoryViewModel$loadData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        c.c.a.n.h.c cVar = this.this$0;
        if (either instanceof Either.Success) {
            cVar.a((List<CategoryItem>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            cVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
