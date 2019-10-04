package c.c.a.n.j.j;

import c.c.a.i.c;
import com.farsitel.bazaar.common.model.cinema.EpisodeItemClickListener;
import com.farsitel.bazaar.common.model.cinema.EpisodeModel;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;
import h.f.b.j;

/* compiled from: SeriesDetailFragment.kt */
public final class b implements EpisodeItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeriesDetailFragment f6595a;

    public b(SeriesDetailFragment seriesDetailFragment) {
        this.f6595a = seriesDetailFragment;
    }

    public void onEpisodeItemClicked(EpisodeModel episodeModel) {
        j.b(episodeModel, "episodeItem");
        c.a(b.w.b.b.a(this.f6595a), j.f6606a.a(episodeModel.getIdentifier(), SeriesDetailFragment.d(this.f6595a).j(), episodeModel.getReferrer()));
    }

    public void onPlayOrBuyClicked(EpisodeModel episodeModel) {
        j.b(episodeModel, "episodeItem");
        this.f6595a.a(episodeModel);
    }
}
