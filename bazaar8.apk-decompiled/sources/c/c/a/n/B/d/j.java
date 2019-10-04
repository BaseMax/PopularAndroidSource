package c.c.a.n.b.d;

import android.content.Context;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.n.b.d.a.a;
import c.c.a.n.b.d.a.e;
import c.c.a.n.b.v;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import com.farsitel.bazaar.common.model.appdetail.ScreenshotSectionItem;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ScreenshotViewHolder.kt */
public final class j extends v {
    public a v;
    public a.C0090a w;
    public e.a x;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(ViewDataBinding viewDataBinding) {
        super(viewDataBinding);
        h.f.b.j.b(viewDataBinding, "itemView");
    }

    public final void E() {
        this.v = null;
    }

    public final void a(a.C0090a aVar) {
        this.w = aVar;
    }

    public void b(RecyclerData recyclerData) {
        h.f.b.j.b(recyclerData, "item");
        View h2 = B().h();
        h.f.b.j.a((Object) h2, "binding.root");
        Context context = h2.getContext();
        h.f.b.j.a((Object) context, "binding.root.context");
        a aVar = new a(context, this.x, this.w);
        List<AppScreenshotItem> entityListURL = ((ScreenshotSectionItem) recyclerData).getEntityListURL();
        if (entityListURL != null) {
            aVar.a(new ArrayList(entityListURL));
            this.v = aVar;
            View view = this.f891b;
            h.f.b.j.a((Object) view, "itemView");
            RecyclerView recyclerView = (RecyclerView) view.findViewById(c.c.a.e.screenshotRecyclerView);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
            recyclerView.setAdapter(this.v);
            return;
        }
        h.f.b.j.a();
        throw null;
    }

    public final void a(e.a aVar) {
        this.x = aVar;
    }
}
