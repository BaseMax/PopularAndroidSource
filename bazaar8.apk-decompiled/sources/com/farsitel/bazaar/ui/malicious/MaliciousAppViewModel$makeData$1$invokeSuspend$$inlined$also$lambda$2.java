package com.farsitel.bazaar.ui.malicious;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.f.a.b;
import h.f.b.j;
import i.a.H;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: MaliciousAppViewModel.kt */
final class MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2 extends Lambda implements b<List<? extends PageTypeItem>, Page> {
    public final /* synthetic */ H $receiver$0$inlined;
    public final /* synthetic */ MaliciousAppViewModel$makeData$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2(MaliciousAppViewModel$makeData$1 maliciousAppViewModel$makeData$1, H h2) {
        super(1);
        this.this$0 = maliciousAppViewModel$makeData$1;
        this.$receiver$0$inlined = h2;
    }

    public final Page a(List<? extends PageTypeItem> list) {
        String string = this.this$0.this$0.B.getString(R.string.malicious_app);
        j.a((Object) list, "it");
        Page page = new Page(string, null, null, list, d.a(new c.j(), null, 1, null), 6, null);
        return page;
    }
}
