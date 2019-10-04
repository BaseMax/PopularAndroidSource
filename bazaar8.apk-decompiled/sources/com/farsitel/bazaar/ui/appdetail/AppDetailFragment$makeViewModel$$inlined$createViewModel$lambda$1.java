package com.farsitel.bazaar.ui.appdetail;

import c.c.a.n.b.w;
import c.c.a.n.c.d.a.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.LoadAppDetails;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.core.model.AppDetailState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.google.android.material.button.MaterialButton;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: AppDetailFragment.kt */
final class AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ w $this_createViewModel;
    public final /* synthetic */ AppDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(w wVar, AppDetailFragment appDetailFragment) {
        super(1);
        this.$this_createViewModel = wVar;
        this.this$0 = appDetailFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        String str;
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            AppDetailFragment appDetailFragment = this.this$0;
            c.c.a.n.c.a.b.a(appDetailFragment, new LoadAppDetails(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
            AppInfoItem a2 = w.a(AppDetailFragment.h(this.this$0), null, 1, null);
            if (a2 != null) {
                f g2 = this.this$0.rb();
                if (g2 != null) {
                    g2.a(a2.getName());
                }
                AppDetailFragment.d(this.this$0).a(a2.getAppState());
                AppDetailFragment.d(this.this$0).b(a2.isInlineOnly());
                MaterialButton b2 = this.this$0.Ha;
                if (b2 != null) {
                    if (a2.getCanBeInstalled()) {
                        str = this.this$0.S().getString(R.string.install);
                    } else {
                        str = this.this$0.S().getString(R.string.buy);
                    }
                    b2.setText(str);
                }
                if (AppDetailFragment.a(this.this$0).c()) {
                    this.$this_createViewModel.b(a2);
                }
                this.this$0.ub();
            }
        } else if (j.a((Object) d2, (Object) AppDetailState.PostComment.f12158a)) {
            AppDetailFragment.b(this.this$0, 0, 1, null);
        } else if (j.a((Object) d2, (Object) AppDetailState.Report.f12159a)) {
            this.this$0.Cb();
        } else if (j.a((Object) d2, (Object) AppDetailState.Payment.f12157a)) {
            this.this$0.Bb();
        }
    }
}
