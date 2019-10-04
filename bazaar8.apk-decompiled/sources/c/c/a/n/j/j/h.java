package c.c.a.n.j.j;

import b.o.a.C0290n;
import b.w.C0313j;
import b.w.b.b;
import c.c.a.i.c;
import c.c.a.n.j.k.p;
import c.c.a.n.v.e;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.a.k;
import h.f.b.j;

/* compiled from: SeriesDetailFragment.kt */
public final class h implements VideoInfoClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeriesDetailFragment f6601a;

    public h(SeriesDetailFragment seriesDetailFragment) {
        this.f6601a = seriesDetailFragment;
    }

    public void onCoverImageClicked(EntityScreenshotItem entityScreenshotItem) {
        j.b(entityScreenshotItem, "item");
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new e(new ScreenShotPagerItem(0, k.a(entityScreenshotItem))).b());
        C0290n D = this.f6601a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }

    public void onDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoInfoClickListener.DefaultImpls.onDownloadClicked(this, cinemaActionsItem);
    }

    public void onGenreClicked(GenreItem genreItem) {
        j.b(genreItem, "genreItem");
        String slug = genreItem.getSlug();
        String name = genreItem.getName();
        if (slug != null && name != null) {
            if (slug.length() > 0) {
                C0313j a2 = b.a(this.f6601a);
                p.b bVar = p.f6637a;
                c.a(a2, p.b.a(bVar, "video_cat_" + slug, false, name, genreItem.getReferrer(), 2, null));
            }
        }
    }

    public void onPlayClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoInfoClickListener.DefaultImpls.onPlayClicked(this, cinemaActionsItem);
    }

    public void onPublisherClicked(PublisherModel publisherModel) {
        j.b(publisherModel, "publisher");
        String slug = publisherModel.getSlug();
        String name = publisherModel.getName();
        if (slug != null && name != null) {
            if (slug.length() > 0) {
                c.a(b.a(this.f6601a), p.b.a(p.f6637a, slug, false, name, publisherModel.getReferrer(), 2, null));
            }
        }
    }

    public void onPurchaseClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoInfoClickListener.DefaultImpls.onPurchaseClicked(this, cinemaActionsItem);
    }

    public void onStopDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoInfoClickListener.DefaultImpls.onStopDownloadClicked(this, cinemaActionsItem);
    }

    public void onVideoNameClicked(CinemaInfoItem cinemaInfoItem) {
        j.b(cinemaInfoItem, "item");
    }
}
