package com.farsitel.bazaar.ui.profile;

import h.f.b.j;

/* compiled from: ProfileItem.kt */
public final class ProfileCreditItem extends ProfileRowItem {
    public String error;
    public boolean errorHappened;
    public final int id;
    public boolean isLoading;
    public String title;
    public final int viewType = ProfileItemViewType.PROFILE_CREDIT_ITEM.ordinal();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProfileCreditItem(int i2, String str, boolean z, String str2, boolean z2) {
        super(null);
        j.b(str, "title");
        this.id = i2;
        this.title = str;
        this.isLoading = z;
        this.error = str2;
        this.errorHappened = z2;
    }

    public final String a() {
        return this.error;
    }

    public final void b(String str) {
        j.b(str, "<set-?>");
        this.title = str;
    }

    public final int c() {
        return this.id;
    }

    public final String d() {
        return this.title;
    }

    public final boolean e() {
        return this.isLoading;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ProfileCreditItem) {
                ProfileCreditItem profileCreditItem = (ProfileCreditItem) obj;
                if ((this.id == profileCreditItem.id) && j.a((Object) this.title, (Object) profileCreditItem.title)) {
                    if ((this.isLoading == profileCreditItem.isLoading) && j.a((Object) this.error, (Object) profileCreditItem.error)) {
                        if (this.errorHappened == profileCreditItem.errorHappened) {
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
        boolean z = this.isLoading;
        if (z) {
            z = true;
        }
        int i3 = (hashCode + (z ? 1 : 0)) * 31;
        String str2 = this.error;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        int i4 = (i3 + i2) * 31;
        boolean z2 = this.errorHappened;
        if (z2) {
            z2 = true;
        }
        return i4 + (z2 ? 1 : 0);
    }

    public String toString() {
        return "ProfileCreditItem(id=" + this.id + ", title=" + this.title + ", isLoading=" + this.isLoading + ", error=" + this.error + ", errorHappened=" + this.errorHappened + ")";
    }

    public final void a(String str) {
        this.error = str;
    }

    public final void b(boolean z) {
        this.isLoading = z;
    }

    public final void a(boolean z) {
        this.errorHappened = z;
    }

    public final boolean b() {
        return this.errorHappened;
    }
}
