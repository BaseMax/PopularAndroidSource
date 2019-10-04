package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class SeriesSingleSeasonsItem implements RecyclerData {
    public final SeriesSeason item;
    public final int viewType = CinemaViewItemType.SERIES_SINGLE_SEASON_ITEM.ordinal();

    public SeriesSingleSeasonsItem(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        this.item = seriesSeason;
    }

    public static /* synthetic */ SeriesSingleSeasonsItem copy$default(SeriesSingleSeasonsItem seriesSingleSeasonsItem, SeriesSeason seriesSeason, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            seriesSeason = seriesSingleSeasonsItem.item;
        }
        return seriesSingleSeasonsItem.copy(seriesSeason);
    }

    public final SeriesSeason component1() {
        return this.item;
    }

    public final SeriesSingleSeasonsItem copy(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        return new SeriesSingleSeasonsItem(seriesSeason);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SeriesSingleSeasonsItem) && j.a((Object) this.item, (Object) ((SeriesSingleSeasonsItem) obj).item));
    }

    public final SeriesSeason getItem() {
        return this.item;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        SeriesSeason seriesSeason = this.item;
        if (seriesSeason != null) {
            return seriesSeason.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "SeriesSingleSeasonsItem(item=" + this.item + ")";
    }
}
