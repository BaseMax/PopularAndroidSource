package com.farsitel.bazaar.ui.cinema.episode;

import c.c.a.e.d.h.d.a.a;
import c.c.a.n.j.d.t;
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

@d(c = "com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$makeData$1", f = "EpisodeDetailViewModel.kt", l = {109}, m = "invokeSuspend")
/* compiled from: EpisodeDetailViewModel.kt */
final class EpisodeDetailViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ SeasonPickerParams $params;
    public int label;
    public H p$;
    public final /* synthetic */ t this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$makeData$1$1", f = "EpisodeDetailViewModel.kt", l = {109}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: EpisodeDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ EpisodeDetailViewModel$makeData$1 this$0;

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
                a b2 = this.this$0.this$0.B;
                String a3 = this.this$0.$params.a();
                String referrer = this.this$0.$params.getReferrer();
                this.label = 1;
                obj = b2.a(a3, referrer, this);
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
    public EpisodeDetailViewModel$makeData$1(t tVar, SeasonPickerParams seasonPickerParams, b bVar) {
        super(2, bVar);
        this.this$0 = tVar;
        this.$params = seasonPickerParams;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        EpisodeDetailViewModel$makeData$1 episodeDetailViewModel$makeData$1 = new EpisodeDetailViewModel$makeData$1(this.this$0, this.$params, bVar);
        episodeDetailViewModel$makeData$1.p$ = (H) obj;
        return episodeDetailViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((EpisodeDetailViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        t tVar = this.this$0;
        if (either instanceof Either.Success) {
            tVar.f((List<? extends RecyclerData>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            tVar.b(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        this.this$0.o.a(this.this$0.D.d(this.this$0.o()), new r(this));
        this.this$0.p.a(this.this$0.C.a(this.this$0.o()), new s(this));
        return h.f14579a;
    }
}
