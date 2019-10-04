package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class GenreItem implements RecyclerData {
    public final String name;
    public final String referrer;
    public final String slug;
    public final int viewType;

    public GenreItem(String str, String str2, String str3, int i2) {
        j.b(str3, "referrer");
        this.name = str;
        this.slug = str2;
        this.referrer = str3;
        this.viewType = i2;
    }

    public static /* synthetic */ GenreItem copy$default(GenreItem genreItem, String str, String str2, String str3, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = genreItem.name;
        }
        if ((i3 & 2) != 0) {
            str2 = genreItem.slug;
        }
        if ((i3 & 4) != 0) {
            str3 = genreItem.referrer;
        }
        if ((i3 & 8) != 0) {
            i2 = genreItem.getViewType();
        }
        return genreItem.copy(str, str2, str3, i2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.slug;
    }

    public final String component3() {
        return this.referrer;
    }

    public final int component4() {
        return getViewType();
    }

    public final GenreItem copy(String str, String str2, String str3, int i2) {
        j.b(str3, "referrer");
        return new GenreItem(str, str2, str3, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GenreItem) {
                GenreItem genreItem = (GenreItem) obj;
                if (j.a((Object) this.name, (Object) genreItem.name) && j.a((Object) this.slug, (Object) genreItem.slug) && j.a((Object) this.referrer, (Object) genreItem.referrer)) {
                    if (getViewType() == genreItem.getViewType()) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getName() {
        return this.name;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.slug;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((hashCode2 + i2) * 31) + getViewType();
    }

    public String toString() {
        return "GenreItem(name=" + this.name + ", slug=" + this.slug + ", referrer=" + this.referrer + ", viewType=" + getViewType() + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GenreItem(String str, String str2, String str3, int i2, int i3, f fVar) {
        this(str, str2, str3, (i3 & 8) != 0 ? CinemaViewItemType.GENRE.ordinal() : i2);
    }
}
