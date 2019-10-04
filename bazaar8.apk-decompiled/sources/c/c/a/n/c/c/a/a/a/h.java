package c.c.a.n.c.c.a.a.a;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.Ba;
import c.c.a.n.c.c.a.a;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import com.google.android.material.button.MaterialButton;
import f.a.a.e.s;
import h.f.b.j;
import ir.cafebazaar.inline.ui.Theme;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: InlineAppListViewHolder.kt */
public final class h extends c {
    public final b x;
    public final ViewDataBinding y;
    public final a<HamiItem> z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(ViewDataBinding viewDataBinding, a<HamiItem> aVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(aVar, "appCommunicator");
        this.y = viewDataBinding;
        this.z = aVar;
        View h2 = this.y.h();
        j.a((Object) h2, "viewDataBinding.root");
        WeakReference weakReference = new WeakReference(h2.getContext());
        ViewDataBinding viewDataBinding2 = this.y;
        if (viewDataBinding2 != null) {
            FrameLayout frameLayout = ((Ba) viewDataBinding2).C;
            j.a((Object) frameLayout, "(viewDataBinding as Item…neAppBinding).appRootItem");
            MaterialButton materialButton = ((Ba) this.y).G;
            j.a((Object) materialButton, "viewDataBinding.primaryButton");
            AppCompatImageView appCompatImageView = ((Ba) this.y).D;
            j.a((Object) appCompatImageView, "viewDataBinding.cancelButton");
            ProgressBar progressBar = ((Ba) this.y).H;
            j.a((Object) progressBar, "viewDataBinding.progressBar");
            b bVar = new b(weakReference, frameLayout, materialButton, appCompatImageView, progressBar, null, null, 64, null);
            this.x = bVar;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListInlineAppBinding");
    }

    public void b(RecyclerData recyclerData) {
        HamiItem hamiItem;
        j.b(recyclerData, "item");
        super.b(recyclerData);
        if (recyclerData instanceof ListItem.Hami) {
            hamiItem = ((ListItem.Hami) recyclerData).getHami();
        } else if (recyclerData instanceof VitrinItem.Hami) {
            hamiItem = ((VitrinItem.Hami) recyclerData).getHami();
        } else {
            throw new IllegalStateException("item is not hami");
        }
        this.y.a(33, (Object) hamiItem);
        this.y.a(17, (Object) this.z);
        if (hamiItem.getInlineXML() != null) {
            View h2 = this.y.h();
            j.a((Object) h2, "viewDataBinding.root");
            View a2 = s.a(new f.a.a.e.h(h2.getContext(), new Theme()), hamiItem.getInlineXML());
            if (a2 != null) {
                ViewDataBinding viewDataBinding = this.y;
                if (viewDataBinding != null) {
                    ((Ba) viewDataBinding).F.addView(a2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListInlineAppBinding");
                }
            }
        }
        if (hamiItem.getApp() != null) {
            this.x.c(hamiItem.getApp());
            this.x.m();
        }
    }
}
