package c.c.a.n.c.c;

import c.c.a.n.c.c.a.a.a.k;
import c.c.a.n.j.b.c.b;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import h.f.b.j;

/* compiled from: PageFragment.kt */
public final class e implements k {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6324a;

    public e(n nVar) {
        this.f6324a = nVar;
    }

    public void a(ListItem.Video video) {
        j.b(video, "videoItem");
        if (video.getVideo().getCanBePlayed()) {
            b a2 = n.a(this.f6324a);
            PlayedVideoModel playedVideoModel = r3;
            PlayedVideoModel playedVideoModel2 = new PlayedVideoModel(video.getVideo().getEntityId(), video.getVideo().getVideoName(), video.getVideo().getCoverUrl(), null, null, null, PlayedVideoType.VIDEO, video.getVideo().isLive(), 0, 256, null);
            a2.a(playedVideoModel, PlayInfoType.VIDEO, video.getVideo().getReferrer());
            n.c(this.f6324a).d(video.getVideo().getEntityId());
            return;
        }
        PaymentActivity.w.b(this.f6324a, video.getVideo().getVideoId(), video.getVideo().getVideoName());
    }

    public void b(ListItem.Video video) {
        j.b(video, "videoItem");
        this.f6324a.b(video.getVideo().getVideoId(), video.getVideo().getReferrer());
    }
}
