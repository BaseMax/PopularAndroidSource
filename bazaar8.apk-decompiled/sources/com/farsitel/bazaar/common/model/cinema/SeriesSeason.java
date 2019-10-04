package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class SeriesSeason implements RecyclerData {
    public final int index;
    public final String title;
    public final int viewType = CinemaViewItemType.SERIES_SEASON_LIST__ITEM.ordinal();

    public SeriesSeason(int i2, String str) {
        j.b(str, "title");
        this.index = i2;
        this.title = str;
    }

    public static /* synthetic */ SeriesSeason copy$default(SeriesSeason seriesSeason, int i2, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = seriesSeason.index;
        }
        if ((i3 & 2) != 0) {
            str = seriesSeason.title;
        }
        return seriesSeason.copy(i2, str);
    }

    public final int component1() {
        return this.index;
    }

    public final String component2() {
        return this.title;
    }

    public final SeriesSeason copy(int i2, String str) {
        j.b(str, "title");
        return new SeriesSeason(i2, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SeriesSeason) {
                SeriesSeason seriesSeason = (SeriesSeason) obj;
                if (!(this.index == seriesSeason.index) || !j.a((Object) this.title, (Object) seriesSeason.title)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final int getIndex() {
        return this.index;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i2 = this.index * 31;
        String str = this.title;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SeriesSeason(index=" + this.index + ", title=" + this.title + ")";
    }
}
