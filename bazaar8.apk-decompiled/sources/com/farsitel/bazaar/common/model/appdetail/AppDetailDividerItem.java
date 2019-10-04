package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.common.DividerItem;
import h.f.b.f;
import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public final class AppDetailDividerItem extends DividerItem implements Serializable {
    public final int viewType;

    public AppDetailDividerItem() {
        this(0, false, 0, 7, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AppDetailDividerItem(int i2, boolean z, int i3, int i4, f fVar) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? true : z, (i4 & 4) != 0 ? 16 : i3);
    }

    public int getViewType() {
        return this.viewType;
    }

    public AppDetailDividerItem(int i2, boolean z, int i3) {
        super(i2, z, i3, 0, 8, null);
        this.viewType = AppDetailViewItemType.DIVIDER.ordinal();
    }
}
