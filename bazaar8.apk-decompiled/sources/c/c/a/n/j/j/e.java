package c.c.a.n.j.j;

import android.net.Uri;
import androidx.fragment.app.Fragment;
import b.o.a.C0290n;
import c.c.a.l.f;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.f.b.j;
import java.util.List;

/* compiled from: SeriesDetailFragment.kt */
public final class e implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeriesDetailFragment f6598a;

    public e(SeriesDetailFragment seriesDetailFragment) {
        this.f6598a = seriesDetailFragment;
    }

    public void a(TrailerCoverItem trailerCoverItem) {
        j.b(trailerCoverItem, "trailerCover");
        VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
        SeriesDetailFragment seriesDetailFragment = this.f6598a;
        Uri parse = Uri.parse(trailerCoverItem.getVideoUrl());
        j.a((Object) parse, "Uri.parse(trailerCover.videoUrl)");
        f fVar = new f(SeriesDetailFragment.b(this.f6598a).c() + "_trailer", parse, null, null, null, c.c.a.c.d.e.a(), 28, null);
        aVar.a((Fragment) seriesDetailFragment, fVar);
    }

    public void a(int i2, List<? extends EntityScreenshotItem> list) {
        j.b(list, "imageListURL");
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new c.c.a.n.v.e(new ScreenShotPagerItem(i2, list)).b());
        C0290n D = this.f6598a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }
}
