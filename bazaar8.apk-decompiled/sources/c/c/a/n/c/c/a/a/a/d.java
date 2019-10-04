package c.c.a.n.c.c.a.a.a;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.C0452pa;
import c.c.a.n.c.c.a.a;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: AppListViewHolder.kt */
public final class d extends c {
    public final b x;
    public final ViewDataBinding y;
    public final a<ListItem> z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(ViewDataBinding viewDataBinding, a<ListItem> aVar, PageViewConfigItem pageViewConfigItem) {
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
            FrameLayout frameLayout = ((C0452pa) viewDataBinding2).F;
            j.a((Object) frameLayout, "(viewDataBinding as Item…stAppBinding).appRootItem");
            MaterialButton materialButton = ((C0452pa) this.y).J;
            j.a((Object) materialButton, "viewDataBinding.primaryButton");
            AppCompatImageView appCompatImageView = ((C0452pa) this.y).H;
            j.a((Object) appCompatImageView, "viewDataBinding.cancelButton");
            ProgressBar progressBar = ((C0452pa) this.y).K;
            j.a((Object) progressBar, "viewDataBinding.progressBar");
            ViewDataBinding viewDataBinding3 = this.y;
            b bVar = new b(weakReference, frameLayout, materialButton, appCompatImageView, progressBar, ((C0452pa) viewDataBinding3).A, ((C0452pa) viewDataBinding3).D);
            this.x = bVar;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListAppBinding");
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.y;
        if (viewDataBinding instanceof C0452pa) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((C0452pa) viewDataBinding).B;
            j.a((Object) appCompatImageView, "viewDataBinding.appIcon");
            iVar.a(appCompatImageView);
            ((C0452pa) this.y).B.setImageDrawable(null);
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
