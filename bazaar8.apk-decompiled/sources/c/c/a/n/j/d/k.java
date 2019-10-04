package c.c.a.n.j.d;

import android.net.Uri;
import androidx.fragment.app.Fragment;
import b.o.a.C0290n;
import c.c.a.c.d.e;
import c.c.a.l.f;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.f.b.j;
import java.util.List;

/* compiled from: EpisodeDetailFragment.kt */
public final class k implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6530a;

    public k(EpisodeDetailFragment episodeDetailFragment) {
        this.f6530a = episodeDetailFragment;
    }

    public void a(TrailerCoverItem trailerCoverItem) {
        j.b(trailerCoverItem, "trailerCover");
        VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
        EpisodeDetailFragment episodeDetailFragment = this.f6530a;
        Uri parse = Uri.parse(trailerCoverItem.getVideoUrl());
        j.a((Object) parse, "Uri.parse(this)");
        f fVar = new f(EpisodeDetailFragment.a(this.f6530a).a() + "_trailer", parse, null, null, null, e.a(), 28, null);
        aVar.a((Fragment) episodeDetailFragment, fVar);
    }

    public void a(int i2, List<? extends EntityScreenshotItem> list) {
        j.b(list, "imageListURL");
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new c.c.a.n.v.e(new ScreenShotPagerItem(i2, list)).b());
        C0290n D = this.f6530a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }
}
