package c.c.a.n.c.c;

import c.c.a.n.c.c.a.a.a.i;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import h.f.b.j;

/* compiled from: PageFragment.kt */
public final class b implements i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6315a;

    public b(n nVar) {
        this.f6315a = nVar;
    }

    public void a(ListItem.Episode episode) {
        j.b(episode, "videoItem");
        if (episode.getEpisode().getCanBePlayed()) {
            c.c.a.n.j.b.c.b a2 = n.a(this.f6315a);
            PlayedVideoModel playedVideoModel = r3;
            PlayedVideoModel playedVideoModel2 = new PlayedVideoModel(episode.getEpisode().getEntityId(), episode.getEpisode().getName(), episode.getEpisode().getCoverUrl(), episode.getEpisode().getEntityId(), episode.getEpisode().getEpisodeIdx(), episode.getEpisode().getSeasonIdx(), PlayedVideoType.EPISODE, false, 0, 256, null);
            a2.a(playedVideoModel, PlayInfoType.EPISODE, episode.getEpisode().getReferrer());
            n.c(this.f6315a).d(episode.getEpisode().getEntityId());
            return;
        }
        PaymentActivity.w.b(this.f6315a, episode.getEpisode().getEpisodeId(), episode.getEpisode().getName());
    }

    public void b(ListItem.Episode episode) {
        j.b(episode, "episodeItem");
        this.f6315a.a(episode.getEpisode().getEpisodeId(), episode.getEpisode().getSeasonIdx(), episode.getEpisode().getReferrer());
    }
}
