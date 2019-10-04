package com.farsitel.bazaar.ui.boughtvideos;

import c.c.a.c.d.c;
import c.c.a.n.f.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
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

@d(c = "com.farsitel.bazaar.ui.boughtvideos.BoughtVideosViewModel$makeData$1", f = "BoughtVideosViewModel.kt", l = {27}, m = "invokeSuspend")
/* compiled from: BoughtVideosViewModel.kt */
final class BoughtVideosViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "com.farsitel.bazaar.ui.boughtvideos.BoughtVideosViewModel$makeData$1$1", f = "BoughtVideosViewModel.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.boughtvideos.BoughtVideosViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: BoughtVideosViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends PageTypeItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BoughtVideosViewModel$makeData$1 this$0;

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
                c.c.a.e.d.f.a a3 = this.this$0.this$0.z;
                int c2 = this.this$0.this$0.h();
                String a4 = c.c.a.c.d.d.a(new c.e(), null, 1, null);
                this.label = 1;
                obj = a3.a(c2, a4, this);
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
    public BoughtVideosViewModel$makeData$1(a aVar, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BoughtVideosViewModel$makeData$1 boughtVideosViewModel$makeData$1 = new BoughtVideosViewModel$makeData$1(this.this$0, bVar);
        boughtVideosViewModel$makeData$1.p$ = (H) obj;
        return boughtVideosViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BoughtVideosViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r13 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r13, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        a aVar = this.this$0;
        if (either instanceof Either.Success) {
            a aVar2 = this.this$0;
            Page page = new Page(aVar2.y.getString(R.string.bought_items), null, null, (List) ((Either.Success) either).getValue(), c.c.a.c.d.d.a(new c.e(), null, 1, null), 6, null);
            aVar2.a(page);
        } else if (either instanceof Either.Failure) {
            aVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
