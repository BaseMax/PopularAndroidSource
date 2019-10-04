package c.c.a.n.c.c.a.a.a;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.Ha;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import h.f.b.j;

/* compiled from: SerialListViewHolder.kt */
public final class m extends c {
    public final ViewDataBinding x;
    public final j y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public m(ViewDataBinding viewDataBinding, j jVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(jVar, "onSerialListViewHolderCommunicator");
        this.x = viewDataBinding;
        this.y = jVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding instanceof Ha) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((Ha) viewDataBinding).B;
            j.a((Object) appCompatImageView, "viewDataBinding.serialCover");
            iVar.a(appCompatImageView);
            ((Ha) this.x).B.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.x.a(40, (Object) null);
        this.x.a(44, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.x.a(40, (Object) this.y);
        if (recyclerData instanceof ListItem.Serial) {
            this.x.a(44, (Object) ((ListItem.Serial) recyclerData).getSerial());
        } else if (recyclerData instanceof ListItem.Episode) {
            this.x.a(44, (Object) ((ListItem.Episode) recyclerData).getEpisode());
        }
    }
}
