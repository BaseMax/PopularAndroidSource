package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.common.DividerItem;
import h.f.b.f;
import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public final class VideoDividerItem extends DividerItem implements Serializable {
    public final int viewType;

    public VideoDividerItem() {
        this(0, false, 0, 7, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoDividerItem(int i2, boolean z, int i3, int i4, f fVar) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? true : z, (i4 & 4) != 0 ? 16 : i3);
    }

    public boolean equals(Object obj) {
        int viewType2 = getViewType();
        if (!(obj instanceof VideoDividerItem)) {
            obj = null;
        }
        VideoDividerItem videoDividerItem = (VideoDividerItem) obj;
        return videoDividerItem != null && viewType2 == videoDividerItem.getViewType();
    }

    public int getViewType() {
        return this.viewType;
    }

    public VideoDividerItem(int i2, boolean z, int i3) {
        super(i2, z, i3, 0, 8, null);
        this.viewType = CinemaViewItemType.DIVIDER.ordinal();
    }
}
