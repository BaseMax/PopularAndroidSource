package com.farsitel.bazaar.ui.fehrest;

import c.c.a.c.d.e;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.a.l;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import java.util.List;

/* compiled from: FehrestParams.kt */
public final class FehrestParams implements Serializable {
    public final List<PageTypeItem> pageItems;
    public final String referrer;
    public final boolean showAnimation;
    public final boolean showBackButton;
    public final String slug;
    public final String titleName;

    public FehrestParams(String str, List<? extends PageTypeItem> list, String str2, boolean z, boolean z2, String str3) {
        j.b(str, "slug");
        j.b(list, "pageItems");
        this.slug = str;
        this.pageItems = list;
        this.titleName = str2;
        this.showBackButton = z;
        this.showAnimation = z2;
        this.referrer = str3;
    }

    public final List<PageTypeItem> a() {
        return this.pageItems;
    }

    public final boolean b() {
        return this.showAnimation;
    }

    public final String c() {
        return this.slug;
    }

    public final String d() {
        return this.titleName;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FehrestParams(String str, List list, String str2, boolean z, boolean z2, String str3, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? l.a() : list, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? true : z2, (i2 & 32) != 0 ? e.a() : str3);
    }
}
