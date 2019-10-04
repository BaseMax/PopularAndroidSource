package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class EditorChoiceItem implements RecyclerData {
    public final boolean enable;
    public final String referrer;
    public final String slug;
    public final String title;
    public final int viewType = AppDetailViewItemType.EDITOR_CHOICE.ordinal();

    public EditorChoiceItem(boolean z, String str, String str2, String str3) {
        j.b(str, "slug");
        j.b(str2, "title");
        this.enable = z;
        this.slug = str;
        this.title = str2;
        this.referrer = str3;
    }

    public static /* synthetic */ EditorChoiceItem copy$default(EditorChoiceItem editorChoiceItem, boolean z, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = editorChoiceItem.enable;
        }
        if ((i2 & 2) != 0) {
            str = editorChoiceItem.slug;
        }
        if ((i2 & 4) != 0) {
            str2 = editorChoiceItem.title;
        }
        if ((i2 & 8) != 0) {
            str3 = editorChoiceItem.referrer;
        }
        return editorChoiceItem.copy(z, str, str2, str3);
    }

    public final boolean component1() {
        return this.enable;
    }

    public final String component2() {
        return this.slug;
    }

    public final String component3() {
        return this.title;
    }

    public final String component4() {
        return this.referrer;
    }

    public final EditorChoiceItem copy(boolean z, String str, String str2, String str3) {
        j.b(str, "slug");
        j.b(str2, "title");
        return new EditorChoiceItem(z, str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof EditorChoiceItem) {
                EditorChoiceItem editorChoiceItem = (EditorChoiceItem) obj;
                if (!(this.enable == editorChoiceItem.enable) || !j.a((Object) this.slug, (Object) editorChoiceItem.slug) || !j.a((Object) this.title, (Object) editorChoiceItem.title) || !j.a((Object) this.referrer, (Object) editorChoiceItem.referrer)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        boolean z = this.enable;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        String str = this.slug;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return hashCode2 + i3;
    }

    public String toString() {
        return "EditorChoiceItem(enable=" + this.enable + ", slug=" + this.slug + ", title=" + this.title + ", referrer=" + this.referrer + ")";
    }
}
