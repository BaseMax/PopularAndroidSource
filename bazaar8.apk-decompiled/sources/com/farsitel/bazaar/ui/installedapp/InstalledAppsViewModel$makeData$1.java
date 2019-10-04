package com.farsitel.bazaar.ui.installedapp;

import c.c.a.n.n.a;
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

@d(c = "com.farsitel.bazaar.ui.installedapp.InstalledAppsViewModel$makeData$1", f = "InstalledAppsViewModel.kt", l = {30}, m = "invokeSuspend")
/* compiled from: InstalledAppsViewModel.kt */
final class InstalledAppsViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    @d(c = "com.farsitel.bazaar.ui.installedapp.InstalledAppsViewModel$makeData$1$1", f = "InstalledAppsViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.installedapp.InstalledAppsViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: InstalledAppsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ InstalledAppsViewModel$makeData$1 this$0;

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
            h.c.a.b.a();
            if (this.label == 0) {
                e.a(obj);
                H h2 = this.p$;
                return this.this$0.this$0.A.a(this.this$0.this$0.q());
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InstalledAppsViewModel$makeData$1(a aVar, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        InstalledAppsViewModel$makeData$1 installedAppsViewModel$makeData$1 = new InstalledAppsViewModel$makeData$1(this.this$0, bVar);
        installedAppsViewModel$makeData$1.p$ = (H) obj;
        return installedAppsViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((InstalledAppsViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        a aVar = this.this$0;
        if (either instanceof Either.Success) {
            aVar.a((List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            aVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}