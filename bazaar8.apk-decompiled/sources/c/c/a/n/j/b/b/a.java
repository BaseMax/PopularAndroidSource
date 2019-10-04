package c.c.a.n.j.b.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.a.a;
import c.c.a.d.b.k;
import c.c.a.d.g.a.i;
import c.c.a.e;
import c.c.a.f.hc;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.a.c;
import c.c.a.o.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.ui.base.recycler.PreloadLinearLayoutManager;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: CinemaInfoViewHolder.kt */
public final class a extends n<RecyclerData> {
    public final c v = new c(this.y);
    public final RecyclerView w;
    public final hc x;
    public final VideoInfoClickListener y;
    public RecyclerView.o z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(hc hcVar, VideoInfoClickListener videoInfoClickListener, RecyclerView.o oVar) {
        super(hcVar);
        j.b(hcVar, "viewBinding");
        j.b(videoInfoClickListener, "videoInfoClickListener");
        j.b(oVar, "recyclerPool");
        this.x = hcVar;
        this.y = videoInfoClickListener;
        this.z = oVar;
        View view = this.f891b;
        j.a((Object) view, "itemView");
        RecyclerView recyclerView = (RecyclerView) view.findViewById(e.genres);
        j.a((Object) recyclerView, "itemView.genres");
        this.w = recyclerView;
    }

    public void C() {
        i iVar = i.f4812a;
        AppCompatImageView appCompatImageView = this.x.F;
        j.a((Object) appCompatImageView, "viewBinding.videoCoverImage");
        iVar.a(appCompatImageView);
        i iVar2 = i.f4812a;
        AppCompatImageView appCompatImageView2 = this.x.C;
        j.a((Object) appCompatImageView2, "viewBinding.ivVideoDetailVideoCover");
        iVar2.a(appCompatImageView2);
        this.x.F.setImageDrawable(null);
        this.x.C.setImageDrawable(null);
        super.C();
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.x.a(48, (Object) this.y);
        if (recyclerData instanceof CinemaInfoItem) {
            ArrayList<GenreItem> genres = ((CinemaInfoItem) recyclerData).getGenres();
            if (genres != null) {
                RecyclerView recyclerView = this.w;
                recyclerView.setRecycledViewPool(this.z);
                recyclerView.setHasFixedSize(true);
                recyclerView.setNestedScrollingEnabled(false);
                View view = this.f891b;
                j.a((Object) view, "itemView");
                Context context = view.getContext();
                j.a((Object) context, "itemView.context");
                PreloadLinearLayoutManager preloadLinearLayoutManager = new PreloadLinearLayoutManager(context, 0, false);
                preloadLinearLayoutManager.n(2);
                recyclerView.setLayoutManager(preloadLinearLayoutManager);
                c cVar = this.v;
                cVar.a(genres);
                if (recyclerView.getAdapter() == null) {
                    recyclerView.setAdapter(cVar);
                } else {
                    recyclerView.a((RecyclerView.a) cVar, true);
                }
                k.a(recyclerView);
                Drawable c2 = b.i.b.a.c(recyclerView.getContext(), R.drawable.divider_dot);
                a.C0074a aVar = c.c.a.d.a.a.f4744b;
                Context context2 = recyclerView.getContext();
                j.a((Object) context2, "context");
                recyclerView.a((RecyclerView.h) new b(c2, aVar.a(context2).w()));
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
