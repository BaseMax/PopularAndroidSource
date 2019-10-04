package com.farsitel.bazaar.ui.mybazaar;

/* compiled from: MyBazaarItem.kt */
public final class MyBazaarHeaderItem extends MyBazaarRowItem {
    public final int title;
    public final int viewType;

    public final int a() {
        return this.title;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MyBazaarHeaderItem) {
                if (this.title == ((MyBazaarHeaderItem) obj).title) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        return Integer.valueOf(this.title).hashCode();
    }

    public String toString() {
        return "MyBazaarHeaderItem(title=" + this.title + ")";
    }
}
