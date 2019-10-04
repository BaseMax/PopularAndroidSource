package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;

/* compiled from: ViewHolderItem.kt */
public final class VideoReviewTitleItem implements RecyclerData {

    /* renamed from: a  reason: collision with root package name */
    public final int f12147a;
    public final int viewType;

    public VideoReviewTitleItem() {
        this(0, 1, null);
    }

    public VideoReviewTitleItem(int i2) {
        this.f12147a = i2;
        this.viewType = CinemaViewItemType.REVIEW_TITLE.ordinal();
    }

    public static /* synthetic */ VideoReviewTitleItem copy$default(VideoReviewTitleItem videoReviewTitleItem, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = videoReviewTitleItem.f12147a;
        }
        return videoReviewTitleItem.copy(i2);
    }

    public final int component1() {
        return this.f12147a;
    }

    public final VideoReviewTitleItem copy(int i2) {
        return new VideoReviewTitleItem(i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VideoReviewTitleItem) {
                if (this.f12147a == ((VideoReviewTitleItem) obj).f12147a) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getA() {
        return this.f12147a;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return this.f12147a;
    }

    public String toString() {
        return "VideoReviewTitleItem(a=" + this.f12147a + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoReviewTitleItem(int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? 1 : i2);
    }
}
