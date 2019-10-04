package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class CinemaDescriptionItem implements RecyclerData {
    public final String description;
    public int maxLines;
    public final int viewType;

    public CinemaDescriptionItem(String str, int i2) {
        this.description = str;
        this.maxLines = i2;
        this.viewType = CinemaViewItemType.DESCRIPTION.ordinal();
    }

    public static /* synthetic */ CinemaDescriptionItem copy$default(CinemaDescriptionItem cinemaDescriptionItem, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = cinemaDescriptionItem.description;
        }
        if ((i3 & 2) != 0) {
            i2 = cinemaDescriptionItem.maxLines;
        }
        return cinemaDescriptionItem.copy(str, i2);
    }

    public final String component1() {
        return this.description;
    }

    public final int component2() {
        return this.maxLines;
    }

    public final CinemaDescriptionItem copy(String str, int i2) {
        return new CinemaDescriptionItem(str, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CinemaDescriptionItem) {
                CinemaDescriptionItem cinemaDescriptionItem = (CinemaDescriptionItem) obj;
                if (j.a((Object) this.description, (Object) cinemaDescriptionItem.description)) {
                    if (this.maxLines == cinemaDescriptionItem.maxLines) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.description;
        return ((str != null ? str.hashCode() : 0) * 31) + this.maxLines;
    }

    public final void setMaxLines(int i2) {
        this.maxLines = i2;
    }

    public String toString() {
        return "CinemaDescriptionItem(description=" + this.description + ", maxLines=" + this.maxLines + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CinemaDescriptionItem(String str, int i2, int i3, f fVar) {
        this(str, (i3 & 2) != 0 ? 3 : i2);
    }
}
