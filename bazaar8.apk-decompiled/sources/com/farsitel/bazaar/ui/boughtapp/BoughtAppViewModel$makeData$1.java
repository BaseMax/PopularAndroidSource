package com.farsitel.bazaar.ui.boughtapp;

import c.c.a.e.d.e.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
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

@d(c = "com.farsitel.bazaar.ui.boughtapp.BoughtAppViewModel$makeData$1", f = "BoughtAppViewModel.kt", l = {25}, m = "invokeSuspend")
/* compiled from: BoughtAppViewModel.kt */
final class BoughtAppViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.e.b this$0;

    @d(c = "com.farsitel.bazaar.ui.boughtapp.BoughtAppViewModel$makeData$1$1", f = "BoughtAppViewModel.kt", l = {25}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.boughtapp.BoughtAppViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: BoughtAppViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends ListItem.App>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BoughtAppViewModel$makeData$1 this$0;

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
                a a3 = this.this$0.this$0.z;
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
    public BoughtAppViewModel$makeData$1(c.c.a.n.e.b bVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BoughtAppViewModel$makeData$1 boughtAppViewModel$makeData$1 = new BoughtAppViewModel$makeData$1(this.this$0, bVar);
        boughtAppViewModel$makeData$1.p$ = (H) obj;
        return boughtAppViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BoughtAppViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r10 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r10, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        c.c.a.n.e.b bVar = this.this$0;
        if (either instanceof Either.Success) {
            c.c.a.n.e.b bVar2 = this.this$0;
            Page page = new Page(bVar2.y.getString(R.string.bought_items), null, null, (List) ((Either.Success) either).getValue(), null, 22, null);
            bVar2.a(page);
        } else if (either instanceof Either.Failure) {
            bVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
