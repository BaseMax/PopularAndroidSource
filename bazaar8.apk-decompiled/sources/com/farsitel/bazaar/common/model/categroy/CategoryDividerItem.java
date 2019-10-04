package com.farsitel.bazaar.common.model.categroy;

import com.farsitel.bazaar.common.model.common.DividerItem;

/* compiled from: CategoryItem.kt */
public final class CategoryDividerItem extends DividerItem {
    public final int margin;
    public final int viewType = CategoryViewType.DIVIDER_ITEM.ordinal();

    public CategoryDividerItem(int i2) {
        super(0, false, i2, 0, 3, null);
        this.margin = i2;
    }

    public static /* synthetic */ CategoryDividerItem copy$default(CategoryDividerItem categoryDividerItem, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = categoryDividerItem.margin;
        }
        return categoryDividerItem.copy(i2);
    }

    public final int component1() {
        return this.margin;
    }

    public final CategoryDividerItem copy(int i2) {
        return new CategoryDividerItem(i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CategoryDividerItem) {
                if (this.margin == ((CategoryDividerItem) obj).margin) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getMargin() {
        return this.margin;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return this.margin;
    }

    public String toString() {
        return "CategoryDividerItem(margin=" + this.margin + ")";
    }
}
