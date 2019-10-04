package c.c.a.n.j.d;

import b.r.u;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;

/* compiled from: EpisodeDetailFragment.kt */
final class e<T> implements u<EntityState> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6522a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ t f6523b;

    public e(EpisodeDetailFragment episodeDetailFragment, t tVar) {
        this.f6522a = episodeDetailFragment;
        this.f6523b = tVar;
    }

    public final void a(EntityState entityState) {
        CinemaActionsItem a2 = t.a(this.f6523b, null, 1, null);
        if (a2 != null) {
            if (entityState == null) {
                entityState = this.f6523b.l();
            }
            a2.setVideoState(entityState);
            this.f6522a.ub();
            this.f6523b.b(entityState);
            this.f6522a.a(entityState);
        }
    }
}
