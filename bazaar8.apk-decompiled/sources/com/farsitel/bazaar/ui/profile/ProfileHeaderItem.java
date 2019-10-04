package com.farsitel.bazaar.ui.profile;

import h.f.b.j;

/* compiled from: ProfileItem.kt */
public final class ProfileHeaderItem extends ProfileRowItem {
    public final String title;
    public final int viewType = ProfileItemViewType.PROFILE_HEADER_ITEM.ordinal();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProfileHeaderItem(String str) {
        super(null);
        j.b(str, "title");
        this.title = str;
    }

    public final String a() {
        return this.title;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ProfileHeaderItem) && j.a((Object) this.title, (Object) ((ProfileHeaderItem) obj).title));
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.title;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ProfileHeaderItem(title=" + this.title + ")";
    }
}
