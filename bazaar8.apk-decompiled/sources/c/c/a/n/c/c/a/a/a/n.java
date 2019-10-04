package c.c.a.n.c.c.a.a.a;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.Ja;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: VideoListViewHolder.kt */
public final class n extends c {
    public final ViewDataBinding x;
    public final k y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public n(ViewDataBinding viewDataBinding, k kVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(kVar, "onVideoListViewHolderCommunicator");
        this.x = viewDataBinding;
        this.y = kVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding instanceof Ja) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((Ja) viewDataBinding).B;
            j.a((Object) appCompatImageView, "viewDataBinding.videoCover");
            iVar.a(appCompatImageView);
            ((Ja) this.x).B.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.x.a(22, (Object) null);
        this.x.a(23, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.x.a(22, (Object) this.y);
        this.x.a(23, (Object) recyclerData);
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding != null) {
            LoadingButton loadingButton = ((Ja) viewDataBinding).F;
            MovieItem.VideoItem video = ((ListItem.Video) recyclerData).getVideo();
            View h2 = ((Ja) this.x).h();
            j.a((Object) h2, "viewDataBinding.root");
            Context context = h2.getContext();
            j.a((Object) context, "viewDataBinding.root.context");
            loadingButton.setText(video.getPrimaryButtonText(context));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListVideoBinding");
    }
}
