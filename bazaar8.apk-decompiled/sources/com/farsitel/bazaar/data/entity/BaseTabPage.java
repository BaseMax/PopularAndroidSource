package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.common.model.Page;
import h.f.b.j;
import java.util.List;

/* compiled from: BaseTabPage.kt */
public class BaseTabPage {
    public final List<Page> pages;

    public BaseTabPage(List<Page> list) {
        j.b(list, "pages");
        this.pages = list;
    }

    public final List<Page> getPages() {
        return this.pages;
    }
}
