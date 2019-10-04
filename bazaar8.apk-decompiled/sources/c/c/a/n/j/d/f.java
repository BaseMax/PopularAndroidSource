package c.c.a.n.j.d;

import b.r.u;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;

/* compiled from: EpisodeDetailFragment.kt */
final class f<T> implements u<DownloaderProgressInfo> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f6524a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6525b;

    public f(t tVar, EpisodeDetailFragment episodeDetailFragment) {
        this.f6524a = tVar;
        this.f6525b = episodeDetailFragment;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        CinemaActionsItem a2 = t.a(this.f6524a, null, 1, null);
        if (a2 != null) {
            a2.setProgressInfo(downloaderProgressInfo);
        }
        this.f6525b.ub();
    }
}
