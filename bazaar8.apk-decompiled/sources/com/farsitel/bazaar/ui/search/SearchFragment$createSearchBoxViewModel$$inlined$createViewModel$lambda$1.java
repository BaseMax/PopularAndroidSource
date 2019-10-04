package com.farsitel.bazaar.ui.search;

import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchFragment.kt */
final class SearchFragment$createSearchBoxViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends SearchHistoryItem>>, h> {
    public final /* synthetic */ SearchFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SearchFragment$createSearchBoxViewModel$$inlined$createViewModel$lambda$1(SearchFragment searchFragment) {
        super(1);
        this.this$0 = searchFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<SearchHistoryItem>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<SearchHistoryItem>> resource) {
        this.this$0.c(resource);
    }
}
