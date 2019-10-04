package com.farsitel.bazaar.ui.appdetail;

import c.c.a.n.b.w;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: AppDetailFragment.kt */
final class AppDetailFragment$shareMessage$2 extends Lambda implements a<String> {
    public final /* synthetic */ AppDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailFragment$shareMessage$2(AppDetailFragment appDetailFragment) {
        super(0);
        this.this$0 = appDetailFragment;
    }

    public final String invoke() {
        String str = null;
        AppInfoItem a2 = w.a(AppDetailFragment.h(this.this$0), null, 1, null);
        AppDetailFragment appDetailFragment = this.this$0;
        Object[] objArr = new Object[2];
        objArr[0] = a2 != null ? a2.getName() : null;
        if (a2 != null) {
            str = a2.getPackageName();
        }
        objArr[1] = str;
        return appDetailFragment.a((int) R.string.share_app_message, objArr);
    }
}
