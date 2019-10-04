package c.c.a.n.c.c.a.a.a;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.Da;
import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: AppListMiniAppViewHolder.kt */
public final class c extends c.c.a.n.c.c.a.c {
    public final b x;
    public final ViewDataBinding y;
    public final a<ListItem> z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(ViewDataBinding viewDataBinding, a<ListItem> aVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(aVar, "onPageAppListCommunicator");
        this.y = viewDataBinding;
        this.z = aVar;
        View h2 = this.y.h();
        j.a((Object) h2, "viewDataBinding.root");
        WeakReference weakReference = new WeakReference(h2.getContext());
        ViewDataBinding viewDataBinding2 = this.y;
        if (viewDataBinding2 != null) {
            FrameLayout frameLayout = ((Da) viewDataBinding2).F;
            j.a((Object) frameLayout, "(viewDataBinding as Item…niAppBinding).appRootItem");
            MaterialButton materialButton = ((Da) this.y).J;
            j.a((Object) materialButton, "viewDataBinding.primaryButton");
            AppCompatImageView appCompatImageView = ((Da) this.y).G;
            j.a((Object) appCompatImageView, "viewDataBinding.cancelButton");
            ProgressBar progressBar = ((Da) this.y).K;
            j.a((Object) progressBar, "viewDataBinding.progressBar");
            ViewDataBinding viewDataBinding3 = this.y;
            b bVar = new b(weakReference, frameLayout, materialButton, appCompatImageView, progressBar, ((Da) viewDataBinding3).A, ((Da) viewDataBinding3).D);
            this.x = bVar;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListMiniAppBinding");
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.y;
        if (viewDataBinding instanceof Da) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((Da) viewDataBinding).O;
            j.a((Object) appCompatImageView, "viewDataBinding.screenshotImageView1");
            iVar.a(appCompatImageView);
            i iVar2 = i.f4812a;
            AppCompatImageView appCompatImageView2 = ((Da) this.y).P;
            j.a((Object) appCompatImageView2, "viewDataBinding.screenshotImageView2");
            iVar2.a(appCompatImageView2);
            i iVar3 = i.f4812a;
            AppCompatImageView appCompatImageView3 = ((Da) this.y).Q;
            j.a((Object) appCompatImageView3, "viewDataBinding.screenshotImageView3");
            iVar3.a(appCompatImageView3);
            i iVar4 = i.f4812a;
            AppCompatImageView appCompatImageView4 = ((Da) this.y).B;
            j.a((Object) appCompatImageView4, "viewDataBinding.appIcon");
            iVar4.a(appCompatImageView4);
            ((Da) this.y).O.setImageDrawable(null);
            ((Da) this.y).P.setImageDrawable(null);
            ((Da) this.y).Q.setImageDrawable(null);
            ((Da) this.y).B.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.y.a(32, (Object) null);
        this.y.a(19, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        ListItem.App app = (ListItem.App) recyclerData;
        this.y.a(32, (Object) app);
        this.y.a(19, (Object) this.z);
        this.x.c(app.getApp());
        this.x.m();
    }
}
