package c.c.a.n.j.d;

import b.r.u;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;

/* compiled from: EpisodeDetailViewModel.kt */
final class s<T> implements u<S> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailViewModel$makeData$1 f6547a;

    public s(EpisodeDetailViewModel$makeData$1 episodeDetailViewModel$makeData$1) {
        this.f6547a = episodeDetailViewModel$makeData$1;
    }

    public final void a(Boolean bool) {
        CinemaActionsItem a2 = t.a(this.f6547a.this$0, null, 1, null);
        if (a2 != null) {
            this.f6547a.this$0.b(a2);
            this.f6547a.this$0.o.a(a2.getVideoState());
            int n = this.f6547a.this$0.n();
            if (n >= 0) {
                this.f6547a.this$0.p.a(Integer.valueOf(n));
            }
        }
    }
}
