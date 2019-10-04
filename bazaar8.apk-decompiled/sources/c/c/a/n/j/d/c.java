package c.c.a.n.j.d;

import b.w.b.b;
import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import h.f.b.j;

/* compiled from: EpisodeDetailFragment.kt */
public final class c implements i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6520a;

    public c(EpisodeDetailFragment episodeDetailFragment) {
        this.f6520a = episodeDetailFragment;
    }

    public void a(ListItem.Episode episode) {
        j.b(episode, "episodeItem");
        this.f6520a.a(episode.getEpisode());
    }

    public void b(ListItem.Episode episode) {
        j.b(episode, "episodeItem");
        c.c.a.i.c.a(b.a(this.f6520a), p.f6538a.a(episode.getEpisode().getEpisodeId(), EpisodeDetailFragment.e(this.f6520a).j(), episode.getEpisode().getReferrer()));
    }
}
