package c.c.a.n.j.k;

import b.o.a.C0290n;
import b.w.C0313j;
import c.c.a.c.b.i;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import c.c.a.n.j.c.d;
import c.c.a.n.j.k.p;
import c.c.a.n.v.e;
import com.farsitel.bazaar.analytics.model.what.DownloadVideoButtonClick;
import com.farsitel.bazaar.analytics.model.what.PublisherItemClick;
import com.farsitel.bazaar.analytics.model.what.PurchaseVideoButtonClick;
import com.farsitel.bazaar.analytics.model.what.VideoCoverImageItemClick;
import com.farsitel.bazaar.analytics.model.what.VideoDownloadClick;
import com.farsitel.bazaar.analytics.model.what.VideoGenreItemClick;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadFragment;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.a.k;
import h.f.b.j;

/* compiled from: VideoDetailFragment.kt */
public final class n implements VideoInfoClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6633a;

    public n(VideoDetailFragment videoDetailFragment) {
        this.f6633a = videoDetailFragment;
    }

    public void onCoverImageClicked(EntityScreenshotItem entityScreenshotItem) {
        j.b(entityScreenshotItem, "item");
        b.a(this.f6633a, new VideoCoverImageItemClick(entityScreenshotItem.getMainUrl(), entityScreenshotItem.getThumbnailUrl(), VideoDetailFragment.d(this.f6633a).a()), null, null, 6, null);
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new e(new ScreenShotPagerItem(0, k.a(entityScreenshotItem))).b());
        C0290n D = this.f6633a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }

    public void onDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoDetailFragment videoDetailFragment = this.f6633a;
        b.a(videoDetailFragment, new DownloadVideoButtonClick(VideoDetailFragment.d(videoDetailFragment).a()), null, null, 6, null);
        VideoDownloadFragment videoDownloadFragment = new VideoDownloadFragment();
        String id = cinemaActionsItem.getId();
        String name = cinemaActionsItem.getName();
        String downloadDescription = cinemaActionsItem.getDownloadDescription();
        String qb = this.f6633a.qb();
        d dVar = new d(id, name, downloadDescription, qb != null ? i.b(qb) : null, cinemaActionsItem.getReferrer());
        videoDownloadFragment.m(dVar.f());
        videoDownloadFragment.a(this.f6633a.D(), (String) null);
    }

    public void onGenreClicked(GenreItem genreItem) {
        j.b(genreItem, "genreItem");
        VideoDetailFragment videoDetailFragment = this.f6633a;
        String name = genreItem.getName();
        if (name == null) {
            name = "";
        }
        b.a(videoDetailFragment, new VideoGenreItemClick(name, genreItem.getReferrer()), null, null, 6, null);
        String slug = genreItem.getSlug();
        String name2 = genreItem.getName();
        if (slug != null && name2 != null) {
            if (slug.length() > 0) {
                C0313j a2 = b.w.b.b.a(this.f6633a);
                p.b bVar = p.f6637a;
                c.a(a2, p.b.a(bVar, "video_cat_" + slug, false, name2, genreItem.getReferrer(), 2, null));
            }
        }
    }

    public void onPlayClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        this.f6633a.wb();
    }

    public void onPublisherClicked(PublisherModel publisherModel) {
        j.b(publisherModel, "publisher");
        VideoDetailFragment videoDetailFragment = this.f6633a;
        String name = publisherModel.getName();
        if (name == null) {
            name = "";
        }
        b.a(videoDetailFragment, new PublisherItemClick(name, publisherModel.getReferrer()), null, null, 6, null);
        String slug = publisherModel.getSlug();
        String name2 = publisherModel.getName();
        if (slug != null && name2 != null) {
            if (slug.length() > 0) {
                c.a(b.w.b.b.a(this.f6633a), p.b.a(p.f6637a, slug, false, name2, publisherModel.getReferrer(), 2, null));
            }
        }
    }

    public void onPurchaseClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoDetailFragment videoDetailFragment = this.f6633a;
        String id = cinemaActionsItem.getId();
        String downloadDescription = cinemaActionsItem.getDownloadDescription();
        if (downloadDescription == null) {
            downloadDescription = "";
        }
        String str = downloadDescription;
        Integer price = cinemaActionsItem.getPrice();
        PurchaseVideoButtonClick purchaseVideoButtonClick = new PurchaseVideoButtonClick(id, str, price != null ? (long) price.intValue() : -1, cinemaActionsItem.getReferrer());
        b.a(videoDetailFragment, purchaseVideoButtonClick, null, null, 6, null);
        PaymentActivity.w.b(this.f6633a, cinemaActionsItem.getId(), cinemaActionsItem.getName());
    }

    public void onStopDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoDetailFragment videoDetailFragment = this.f6633a;
        b.a(videoDetailFragment, new VideoDownloadClick(EntityState.PAUSE, VideoDetailFragment.d(videoDetailFragment).a()), null, null, 6, null);
        VideoDetailFragment.e(this.f6633a).b(cinemaActionsItem);
    }

    public void onVideoNameClicked(CinemaInfoItem cinemaInfoItem) {
        j.b(cinemaInfoItem, "cinemaInfoItem");
    }
}
