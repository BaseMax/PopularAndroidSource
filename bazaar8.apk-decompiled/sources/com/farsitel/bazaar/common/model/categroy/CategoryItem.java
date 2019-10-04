package com.farsitel.bazaar.common.model.categroy;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: CategoryItem.kt */
public final class CategoryItem implements RecyclerData {
    public final boolean game;
    public final int id;
    public final String imageUrl;
    public final String name;
    public final String referrer;
    public final String slug;

    public CategoryItem(int i2, String str, String str2, boolean z, String str3, String str4) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str3, "slug");
        j.b(str4, "referrer");
        this.id = i2;
        this.name = str;
        this.imageUrl = str2;
        this.game = z;
        this.slug = str3;
        this.referrer = str4;
    }

    public static /* synthetic */ CategoryItem copy$default(CategoryItem categoryItem, int i2, String str, String str2, boolean z, String str3, String str4, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = categoryItem.id;
        }
        if ((i3 & 2) != 0) {
            str = categoryItem.name;
        }
        String str5 = str;
        if ((i3 & 4) != 0) {
            str2 = categoryItem.imageUrl;
        }
        String str6 = str2;
        if ((i3 & 8) != 0) {
            z = categoryItem.game;
        }
        boolean z2 = z;
        if ((i3 & 16) != 0) {
            str3 = categoryItem.slug;
        }
        String str7 = str3;
        if ((i3 & 32) != 0) {
            str4 = categoryItem.referrer;
        }
        return categoryItem.copy(i2, str5, str6, z2, str7, str4);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.imageUrl;
    }

    public final boolean component4() {
        return this.game;
    }

    public final String component5() {
        return this.slug;
    }

    public final String component6() {
        return this.referrer;
    }

    public final CategoryItem copy(int i2, String str, String str2, boolean z, String str3, String str4) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str3, "slug");
        j.b(str4, "referrer");
        CategoryItem categoryItem = new CategoryItem(i2, str, str2, z, str3, str4);
        return categoryItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CategoryItem) {
                CategoryItem categoryItem = (CategoryItem) obj;
                if ((this.id == categoryItem.id) && j.a((Object) this.name, (Object) categoryItem.name) && j.a((Object) this.imageUrl, (Object) categoryItem.imageUrl)) {
                    if (!(this.game == categoryItem.game) || !j.a((Object) this.slug, (Object) categoryItem.slug) || !j.a((Object) this.referrer, (Object) categoryItem.referrer)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getGame() {
        return this.game;
    }

    public final int getId() {
        return this.id;
    }

    public final String getImageUrl() {
        return this.imageUrl;
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
        return CategoryViewType.CATEGORY_ITEM.ordinal();
    }

    public int hashCode() {
        int i2 = this.id * 31;
        String str = this.name;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.imageUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.game;
        if (z) {
            z = true;
        }
        int i4 = (hashCode2 + (z ? 1 : 0)) * 31;
        String str3 = this.slug;
        int hashCode3 = (i4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i3 = str4.hashCode();
        }
        return hashCode3 + i3;
    }

    public String toString() {
        return "CategoryItem(id=" + this.id + ", name=" + this.name + ", imageUrl=" + this.imageUrl + ", game=" + this.game + ", slug=" + this.slug + ", referrer=" + this.referrer + ")";
    }
}
