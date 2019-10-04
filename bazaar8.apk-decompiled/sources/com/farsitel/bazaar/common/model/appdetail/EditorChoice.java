package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class EditorChoice {
    public final boolean enable;
    public final String referrer;
    public final String slug;
    public final String title;

    public EditorChoice(boolean z, String str, String str2, String str3) {
        this.enable = z;
        this.slug = str;
        this.title = str2;
        this.referrer = str3;
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

    public final EditorChoiceItem toEditorChoiceItem() {
        boolean z = this.enable;
        String str = this.slug;
        if (str != null) {
            String str2 = this.title;
            if (str2 != null) {
                return new EditorChoiceItem(z, str, str2, this.referrer);
            }
            j.a();
            throw null;
        }
        j.a();
        throw null;
    }
}
