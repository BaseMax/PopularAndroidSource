package c.c.a.n.j.k;

import b.r.u;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;

/* compiled from: VideoDetailFragment.kt */
final class h<T> implements u<DownloaderProgressInfo> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ s f6626a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6627b;

    public h(s sVar, VideoDetailFragment videoDetailFragment) {
        this.f6626a = sVar;
        this.f6627b = videoDetailFragment;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        CinemaActionsItem a2 = s.a(this.f6626a, null, 1, null);
        if (a2 != null) {
            a2.setProgressInfo(downloaderProgressInfo);
        }
        this.f6627b.ub();
    }
}
