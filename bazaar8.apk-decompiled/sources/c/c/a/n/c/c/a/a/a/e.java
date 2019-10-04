package c.c.a.n.c.c.a.a.a;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.C0469va;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: EpisodeListViewHolder.kt */
public final class e extends c {
    public final ViewDataBinding x;
    public final i y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(ViewDataBinding viewDataBinding, i iVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(iVar, "onEpisodeListViewHolderCommunicator");
        this.x = viewDataBinding;
        this.y = iVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding instanceof C0469va) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((C0469va) viewDataBinding).B;
            j.a((Object) appCompatImageView, "viewDataBinding.videoCover");
            iVar.a(appCompatImageView);
            ((C0469va) this.x).B.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.x.a(11, (Object) null);
        this.x.a(47, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.x.a(11, (Object) this.y);
        this.x.a(47, (Object) recyclerData);
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding != null) {
            LoadingButton loadingButton = ((C0469va) viewDataBinding).F;
            MovieItem.EpisodeItem episode = ((ListItem.Episode) recyclerData).getEpisode();
            View h2 = ((C0469va) this.x).h();
            j.a((Object) h2, "viewDataBinding.root");
            Context context = h2.getContext();
            j.a((Object) context, "viewDataBinding.root.context");
            loadingButton.setText(episode.getPrimaryButtonText(context));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListEpisodeBinding");
    }
}
