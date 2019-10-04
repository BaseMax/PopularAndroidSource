package com.farsitel.bazaar.ui.cinema.series;

import c.c.a.e.d.h.d.a;
import c.c.a.n.j.j.l;
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

@d(c = "com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$getEpisodes$1", f = "SeriesDetailViewModel.kt", l = {99}, m = "invokeSuspend")
/* compiled from: SeriesDetailViewModel.kt */
final class SeriesDetailViewModel$getEpisodes$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $referrer;
    public final /* synthetic */ int $seasonIndex;
    public final /* synthetic */ String $seriesId;
    public int label;
    public H p$;
    public final /* synthetic */ l this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$getEpisodes$1$1", f = "SeriesDetailViewModel.kt", l = {100}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.series.SeriesDetailViewModel$getEpisodes$1$1  reason: invalid class name */
    /* compiled from: SeriesDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SeriesDetailViewModel$getEpisodes$1 this$0;

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
                SeriesDetailViewModel$getEpisodes$1 seriesDetailViewModel$getEpisodes$1 = this.this$0;
                String str = seriesDetailViewModel$getEpisodes$1.$seriesId;
                int i3 = seriesDetailViewModel$getEpisodes$1.$seasonIndex;
                String str2 = seriesDetailViewModel$getEpisodes$1.$referrer;
                this.label = 1;
                obj = b2.a(str, i3, str2, this);
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
    public SeriesDetailViewModel$getEpisodes$1(l lVar, String str, int i2, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = lVar;
        this.$seriesId = str;
        this.$seasonIndex = i2;
        this.$referrer = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SeriesDetailViewModel$getEpisodes$1 seriesDetailViewModel$getEpisodes$1 = new SeriesDetailViewModel$getEpisodes$1(this.this$0, this.$seriesId, this.$seasonIndex, this.$referrer, bVar);
        seriesDetailViewModel$getEpisodes$1.p$ = (H) obj;
        return seriesDetailViewModel$getEpisodes$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SeriesDetailViewModel$getEpisodes$1) a(obj, (b) obj2)).d(h.f14579a);
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
            lVar.e((List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            lVar.a((Throwable) ((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
