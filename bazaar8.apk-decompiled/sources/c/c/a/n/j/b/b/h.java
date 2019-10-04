package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.lc;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: ScreenshotsViewHolder.kt */
public final class h extends n<RecyclerData> {
    public static final a v = new a(null);
    public d.a w;
    public final RecyclerView.o x;
    public final lc y;

    /* compiled from: ScreenshotsViewHolder.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(RecyclerView.o oVar, lc lcVar) {
        super(lcVar);
        j.b(oVar, "sharedPool");
        j.b(lcVar, "viewBinding");
        this.x = oVar;
        this.y = lcVar;
    }

    public final void a(d.a aVar) {
        this.w = aVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        lc lcVar = this.y;
        if (recyclerData instanceof ScreenshotsItem) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            View h2 = lcVar.h();
            j.a((Object) h2, "root");
            Context context = h2.getContext();
            j.a((Object) context, "root.context");
            int dimension = (int) context.getResources().getDimension(R.dimen.default_margin_one_half);
            View h3 = lcVar.h();
            j.a((Object) h3, "root");
            Context context2 = h3.getContext();
            j.a((Object) context2, "root.context");
            int dimension2 = (int) context2.getResources().getDimension(R.dimen.default_margin_one_half);
            layoutParams.setMargins(dimension, dimension2, dimension, dimension2);
            RecyclerView recyclerView = lcVar.A;
            recyclerView.setLayoutParams(layoutParams);
            Context context3 = recyclerView.getContext();
            j.a((Object) context3, "context");
            recyclerView.setLayoutManager(a(context3));
            ScreenshotsItem screenshotsItem = (ScreenshotsItem) recyclerData;
            d dVar = new d(screenshotsItem, this.w);
            dVar.a(new ArrayList(screenshotsItem.getItems()));
            recyclerView.setAdapter(dVar);
            recyclerView.setNestedScrollingEnabled(false);
            recyclerView.setHasFixedSize(true);
            recyclerView.setRecycledViewPool(this.x);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final GridLayoutManager a(Context context) {
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 4);
        gridLayoutManager.a(true);
        gridLayoutManager.k(9);
        gridLayoutManager.a((GridLayoutManager.c) new i());
        return gridLayoutManager;
    }
}
