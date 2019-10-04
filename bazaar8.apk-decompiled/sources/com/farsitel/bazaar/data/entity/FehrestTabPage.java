package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.common.model.Page;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestTabPage.kt */
public final class FehrestTabPage extends BaseTabPage {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public FehrestTabPage(List<Page> list) {
        super(list);
        j.b(list, "_pages");
    }
}
