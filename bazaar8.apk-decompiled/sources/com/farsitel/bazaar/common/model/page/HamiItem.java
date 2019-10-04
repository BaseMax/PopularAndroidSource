package com.farsitel.bazaar.common.model.page;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: HamiItem.kt */
public final class HamiItem implements Serializable {
    public final PageAppItem app;
    public final String background;
    public final String image;
    public final String inlineXML;
    public final String link;
    public final String mediumIconUrl;
    public final String referrer;
    public final String shortDescription;
    public final String textColor;

    public HamiItem(String str, String str2, String str3, String str4, PageAppItem pageAppItem, String str5, String str6, String str7) {
        j.b(str7, "referrer");
        this.image = str;
        this.link = str2;
        this.background = str3;
        this.textColor = str4;
        this.app = pageAppItem;
        this.shortDescription = str5;
        this.inlineXML = str6;
        this.referrer = str7;
        PageAppItem pageAppItem2 = this.app;
        this.mediumIconUrl = pageAppItem2 != null ? pageAppItem2.getIconUrl() : null;
    }

    public final PageAppItem getApp() {
        return this.app;
    }

    public final String getBackground() {
        return this.background;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getInlineXML() {
        return this.inlineXML;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getMediumIconUrl() {
        return this.mediumIconUrl;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public final String getTextColor() {
        return this.textColor;
    }
}
