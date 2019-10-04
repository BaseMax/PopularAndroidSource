package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public interface VideoInfoClickListener {

    /* compiled from: ViewHolderItem.kt */
    public static final class DefaultImpls {
        public static void onDownloadClicked(VideoInfoClickListener videoInfoClickListener, CinemaActionsItem cinemaActionsItem) {
            j.b(cinemaActionsItem, "item");
        }

        public static void onGenreClicked(VideoInfoClickListener videoInfoClickListener, GenreItem genreItem) {
            j.b(genreItem, "genreItem");
        }

        public static void onPlayClicked(VideoInfoClickListener videoInfoClickListener, CinemaActionsItem cinemaActionsItem) {
            j.b(cinemaActionsItem, "item");
        }

        public static void onPurchaseClicked(VideoInfoClickListener videoInfoClickListener, CinemaActionsItem cinemaActionsItem) {
            j.b(cinemaActionsItem, "item");
        }

        public static void onStopDownloadClicked(VideoInfoClickListener videoInfoClickListener, CinemaActionsItem cinemaActionsItem) {
            j.b(cinemaActionsItem, "item");
        }
    }

    void onCoverImageClicked(EntityScreenshotItem entityScreenshotItem);

    void onDownloadClicked(CinemaActionsItem cinemaActionsItem);

    void onGenreClicked(GenreItem genreItem);

    void onPlayClicked(CinemaActionsItem cinemaActionsItem);

    void onPublisherClicked(PublisherModel publisherModel);

    void onPurchaseClicked(CinemaActionsItem cinemaActionsItem);

    void onStopDownloadClicked(CinemaActionsItem cinemaActionsItem);

    void onVideoNameClicked(CinemaInfoItem cinemaInfoItem);
}
