package com.farsitel.bazaar.ui.appdetail;

import c.c.a.e.d.c.a;
import c.c.a.n.b.s;
import c.c.a.n.b.w;
import com.farsitel.bazaar.common.model.RecyclerData;
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

@d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$makeData$1", f = "AppDetailViewModel.kt", l = {80}, m = "invokeSuspend")
/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ s $params;
    public int label;
    public H p$;
    public final /* synthetic */ w this$0;

    @d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$makeData$1$1", f = "AppDetailViewModel.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: AppDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ AppDetailViewModel$makeData$1 this$0;

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
                a f2 = this.this$0.this$0.t;
                String a3 = this.this$0.$params.a();
                String b2 = this.this$0.$params.b();
                this.label = 1;
                obj = f2.a(a3, b2, 0, 3, this);
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
    public AppDetailViewModel$makeData$1(w wVar, s sVar, b bVar) {
        super(2, bVar);
        this.this$0 = wVar;
        this.$params = sVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppDetailViewModel$makeData$1 appDetailViewModel$makeData$1 = new AppDetailViewModel$makeData$1(this.this$0, this.$params, bVar);
        appDetailViewModel$makeData$1.p$ = (H) obj;
        return appDetailViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppDetailViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        w wVar = this.this$0;
        if (either instanceof Either.Success) {
            wVar.f((List<? extends RecyclerData>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            wVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        this.this$0.p.a(this.this$0.t.a(this.this$0.t()), new x(this));
        return h.f14579a;
    }
}
