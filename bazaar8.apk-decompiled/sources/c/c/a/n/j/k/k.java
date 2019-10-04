package c.c.a.n.j.k;

import android.app.Activity;
import android.net.Uri;
import b.o.a.C0285i;
import b.o.a.C0290n;
import c.c.a.c.d.e;
import c.c.a.l.f;
import c.c.a.n.c.a.b;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.analytics.model.what.ScreenShotClick;
import com.farsitel.bazaar.analytics.model.what.TrailerClick;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoDetailFragment.kt */
public final class k implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6630a;

    public k(VideoDetailFragment videoDetailFragment) {
        this.f6630a = videoDetailFragment;
    }

    public void a(TrailerCoverItem trailerCoverItem) {
        j.b(trailerCoverItem, "trailerCover");
        String str = this.f6630a.Za() + "_trailer";
        b.a(this.f6630a, new TrailerClick(trailerCoverItem.getPreviewUrl(), str, VideoDetailFragment.d(this.f6630a).a()), null, null, 6, null);
        VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
        C0285i Ga = this.f6630a.Ga();
        j.a((Object) Ga, "requireActivity()");
        Uri parse = Uri.parse(trailerCoverItem.getVideoUrl());
        j.a((Object) parse, "Uri.parse(this)");
        f fVar = new f(str, parse, null, null, null, e.a(), 28, null);
        aVar.a((Activity) Ga, fVar);
    }

    public void a(int i2, List<? extends EntityScreenshotItem> list) {
        j.b(list, "imageListURL");
        VideoDetailFragment videoDetailFragment = this.f6630a;
        b.a(videoDetailFragment, new ScreenShotClick(VideoDetailFragment.d(videoDetailFragment).b(), i2, VideoDetailFragment.d(this.f6630a).a()), null, null, 6, null);
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new c.c.a.n.v.e(new ScreenShotPagerItem(i2, list)).b());
        C0290n D = this.f6630a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }
}
