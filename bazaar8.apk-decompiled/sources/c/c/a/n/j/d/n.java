package c.c.a.n.j.d;

import b.o.a.C0290n;
import b.w.b.b;
import c.c.a.c.b.i;
import c.c.a.i.c;
import c.c.a.n.j.c.d;
import c.c.a.n.j.k.p;
import c.c.a.n.v.e;
import com.farsitel.bazaar.analytics.model.what.PurchaseVideoButtonClick;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.PublisherModel;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadFragment;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.a.k;
import h.f.b.j;

/* compiled from: EpisodeDetailFragment.kt */
public final class n implements VideoInfoClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6533a;

    public n(EpisodeDetailFragment episodeDetailFragment) {
        this.f6533a = episodeDetailFragment;
    }

    public void onCoverImageClicked(EntityScreenshotItem entityScreenshotItem) {
        j.b(entityScreenshotItem, "item");
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new e(new ScreenShotPagerItem(0, k.a(entityScreenshotItem))).b());
        C0290n D = this.f6533a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }

    public void onDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        VideoDownloadFragment videoDownloadFragment = new VideoDownloadFragment();
        String id = cinemaActionsItem.getId();
        String name = cinemaActionsItem.getName();
        String downloadDescription = cinemaActionsItem.getDownloadDescription();
        String qb = this.f6533a.qb();
        d dVar = new d(id, name, downloadDescription, qb != null ? i.b(qb) : null, cinemaActionsItem.getReferrer());
        videoDownloadFragment.m(dVar.f());
        videoDownloadFragment.a(this.f6533a.D(), (String) null);
    }

    public void onGenreClicked(GenreItem genreItem) {
        j.b(genreItem, "genreItem");
        VideoInfoClickListener.DefaultImpls.onGenreClicked(this, genreItem);
    }

    public void onPlayClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        EpisodeDetailFragment.b(this.f6533a).a(EpisodeDetailFragment.e(this.f6533a).a(cinemaActionsItem), PlayInfoType.EPISODE, cinemaActionsItem.getReferrer());
        EpisodeDetailFragment.e(this.f6533a).a(cinemaActionsItem.getId());
    }

    public void onPublisherClicked(PublisherModel publisherModel) {
        j.b(publisherModel, "publisher");
        String slug = publisherModel.getSlug();
        String name = publisherModel.getName();
        if (slug != null && name != null) {
            if (slug.length() > 0) {
                c.a(b.a(this.f6533a), p.b.a(p.f6637a, slug, false, name, publisherModel.getReferrer(), 2, null));
            }
        }
    }

    public void onPurchaseClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        EpisodeDetailFragment episodeDetailFragment = this.f6533a;
        String id = cinemaActionsItem.getId();
        String downloadDescription = cinemaActionsItem.getDownloadDescription();
        if (downloadDescription == null) {
            downloadDescription = "";
        }
        String str = downloadDescription;
        Integer price = cinemaActionsItem.getPrice();
        PurchaseVideoButtonClick purchaseVideoButtonClick = new PurchaseVideoButtonClick(id, str, price != null ? (long) price.intValue() : -1, cinemaActionsItem.getReferrer());
        c.c.a.n.c.a.b.a(episodeDetailFragment, purchaseVideoButtonClick, null, null, 6, null);
        PaymentActivity.w.b(this.f6533a, cinemaActionsItem.getId(), cinemaActionsItem.getName());
    }

    public void onStopDownloadClicked(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        EpisodeDetailFragment.e(this.f6533a).c(cinemaActionsItem);
    }

    public void onVideoNameClicked(CinemaInfoItem cinemaInfoItem) {
        j.b(cinemaInfoItem, "item");
        if (cinemaInfoItem instanceof EpisodeInfoItem) {
            c.a(b.a(this.f6533a), c.c.a.d.f4738a.c(((EpisodeInfoItem) cinemaInfoItem).getSeriesId(), this.f6533a.Za().b(), cinemaInfoItem.getReferrer()));
        }
    }
}
