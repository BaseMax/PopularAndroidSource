package com.farsitel.bazaar.ui.cinema.episode;

import c.c.a.e.d.h.d.a.a;
import c.c.a.n.j.d.t;
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
import kotlin.Pair;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$getEpisodes$1", f = "EpisodeDetailViewModel.kt", l = {220}, m = "invokeSuspend")
/* compiled from: EpisodeDetailViewModel.kt */
final class EpisodeDetailViewModel$getEpisodes$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ int $limit;
    public final /* synthetic */ int $seasonIndex;
    public final /* synthetic */ String $seriesId;
    public int label;
    public H p$;
    public final /* synthetic */ t this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$getEpisodes$1$1", f = "EpisodeDetailViewModel.kt", l = {221}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailViewModel$getEpisodes$1$1  reason: invalid class name */
    /* compiled from: EpisodeDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends Pair<? extends Integer, ? extends List<? extends RecyclerData>>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ EpisodeDetailViewModel$getEpisodes$1 this$0;

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
                EpisodeDetailViewModel$getEpisodes$1 episodeDetailViewModel$getEpisodes$1 = this.this$0;
                String str = episodeDetailViewModel$getEpisodes$1.$seriesId;
                int i3 = episodeDetailViewModel$getEpisodes$1.$seasonIndex;
                int h3 = episodeDetailViewModel$getEpisodes$1.this$0.h();
                EpisodeDetailViewModel$getEpisodes$1 episodeDetailViewModel$getEpisodes$12 = this.this$0;
                int i4 = episodeDetailViewModel$getEpisodes$12.$limit;
                String referrer = episodeDetailViewModel$getEpisodes$12.this$0.t().getReferrer();
                this.label = 1;
                obj = b2.a(str, i3, h3, i4, referrer, this);
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
    public EpisodeDetailViewModel$getEpisodes$1(t tVar, String str, int i2, int i3, b bVar) {
        super(2, bVar);
        this.this$0 = tVar;
        this.$seriesId = str;
        this.$seasonIndex = i2;
        this.$limit = i3;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        EpisodeDetailViewModel$getEpisodes$1 episodeDetailViewModel$getEpisodes$1 = new EpisodeDetailViewModel$getEpisodes$1(this.this$0, this.$seriesId, this.$seasonIndex, this.$limit, bVar);
        episodeDetailViewModel$getEpisodes$1.p$ = (H) obj;
        return episodeDetailViewModel$getEpisodes$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((EpisodeDetailViewModel$getEpisodes$1) a(obj, (b) obj2)).d(h.f14579a);
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
            tVar.a((Pair<Integer, ? extends List<? extends RecyclerData>>) (Pair) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            tVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
