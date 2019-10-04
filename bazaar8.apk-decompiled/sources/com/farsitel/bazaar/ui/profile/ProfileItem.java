package com.farsitel.bazaar.ui.profile;

import h.f.b.f;
import h.f.b.j;

/* compiled from: ProfileItem.kt */
public final class ProfileItem extends ProfileRowItem {
    public final int id;
    public final boolean isClickable;
    public final boolean showArrow;
    public String title;
    public String value;
    public final int viewType;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ProfileItem(int i2, String str, String str2, boolean z, boolean z2, int i3, f fVar) {
        this(i2, str, str2, z, (i3 & 16) != 0 ? false : z2);
    }

    public final int a() {
        return this.id;
    }

    public final boolean b() {
        return this.showArrow;
    }

    public final String c() {
        return this.title;
    }

    public final String d() {
        return this.value;
    }

    public final boolean e() {
        return this.isClickable;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ProfileItem) {
                ProfileItem profileItem = (ProfileItem) obj;
                if ((this.id == profileItem.id) && j.a((Object) this.title, (Object) profileItem.title) && j.a((Object) this.value, (Object) profileItem.value)) {
                    if (this.isClickable == profileItem.isClickable) {
                        if (this.showArrow == profileItem.showArrow) {
                            return true;
                        }
                    }
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
        int a2 = Integer.valueOf(this.id).hashCode() * 31;
        String str = this.title;
        int i2 = 0;
        int hashCode = (a2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean z = this.isClickable;
        if (z) {
            z = true;
        }
        int i4 = (i3 + (z ? 1 : 0)) * 31;
        boolean z2 = this.showArrow;
        if (z2) {
            z2 = true;
        }
        return i4 + (z2 ? 1 : 0);
    }

    public String toString() {
        return "ProfileItem(id=" + this.id + ", title=" + this.title + ", value=" + this.value + ", isClickable=" + this.isClickable + ", showArrow=" + this.showArrow + ")";
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProfileItem(int i2, String str, String str2, boolean z, boolean z2) {
        super(null);
        j.b(str, "title");
        this.id = i2;
        this.title = str;
        this.value = str2;
        this.isClickable = z;
        this.showArrow = z2;
        this.viewType = ProfileItemViewType.PROFILE_ITEM.ordinal();
    }
}
