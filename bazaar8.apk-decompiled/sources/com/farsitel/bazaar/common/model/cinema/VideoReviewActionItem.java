package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;

/* compiled from: ViewHolderItem.kt */
public final class VideoReviewActionItem implements RecyclerData {

    /* renamed from: a  reason: collision with root package name */
    public final int f12146a;
    public final int viewType;

    public VideoReviewActionItem() {
        this(0, 1, null);
    }

    public VideoReviewActionItem(int i2) {
        this.f12146a = i2;
        this.viewType = CinemaViewItemType.REVIEW_ACTION.ordinal();
    }

    public static /* synthetic */ VideoReviewActionItem copy$default(VideoReviewActionItem videoReviewActionItem, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = videoReviewActionItem.f12146a;
        }
        return videoReviewActionItem.copy(i2);
    }

    public final int component1() {
        return this.f12146a;
    }

    public final VideoReviewActionItem copy(int i2) {
        return new VideoReviewActionItem(i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VideoReviewActionItem) {
                if (this.f12146a == ((VideoReviewActionItem) obj).f12146a) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getA() {
        return this.f12146a;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return this.f12146a;
    }

    public String toString() {
        return "VideoReviewActionItem(a=" + this.f12146a + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoReviewActionItem(int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? 1 : i2);
    }
}
