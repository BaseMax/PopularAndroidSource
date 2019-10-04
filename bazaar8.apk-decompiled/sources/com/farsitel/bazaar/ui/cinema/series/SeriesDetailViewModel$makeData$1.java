package com.farsitel.bazaar.ui.cinema.series;

import c.c.a.e.d.h.d.a;
import c.c.a.n.j.j.l;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
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

@d(c = "com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$makeData$1", f = "SeriesDetailViewModel.kt", l = {79}, m = "invokeSuspend")
/* compiled from: SeriesDetailViewModel.kt */
final class SeriesDetailViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ SeasonPickerParams $params;
    public int label;
    public H p$;
    public final /* synthetic */ l this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$makeData$1$1", f = "SeriesDetailViewModel.kt", l = {79}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: SeriesDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SeriesDetailViewModel$makeData$1 this$0;

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
                a b2 = this.this$0.this$0.s;
                String a3 = this.this$0.$params.a();
                int j2 = this.this$0.this$0.j();
                String referrer = this.this$0.$params.getReferrer();
                this.label = 1;
                obj = b2.b(a3, j2, referrer, this);
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
    public SeriesDetailViewModel$makeData$1(l lVar, SeasonPickerParams seasonPickerParams, b bVar) {
        super(2, bVar);
        this.this$0 = lVar;
        this.$params = seasonPickerParams;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SeriesDetailViewModel$makeData$1 seriesDetailViewModel$makeData$1 = new SeriesDetailViewModel$makeData$1(this.this$0, this.$params, bVar);
        seriesDetailViewModel$makeData$1.p$ = (H) obj;
        return seriesDetailViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SeriesDetailViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        l lVar = this.this$0;
        if (either instanceof Either.Success) {
            lVar.g((List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            lVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
