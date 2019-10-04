package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.g.a.i;
import c.c.a.f.C0414dc;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ScreenshotBigItemViewHolder.kt */
public final class f extends n<RecyclerData> {
    public final C0414dc v;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(C0414dc dcVar) {
        super(dcVar);
        j.b(dcVar, "viewBinding");
        this.v = dcVar;
    }

    public void C() {
        i iVar = i.f4812a;
        AppCompatImageView appCompatImageView = this.v.C;
        j.a((Object) appCompatImageView, "viewBinding.screenShotItemImage");
        iVar.a(appCompatImageView);
        this.v.C.setImageDrawable(null);
        super.C();
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        C0414dc dcVar = this.v;
        RecyclerView.j jVar = new RecyclerView.j(-1, -2);
        View h2 = dcVar.h();
        j.a((Object) h2, "root");
        Context context = h2.getContext();
        j.a((Object) context, "root.context");
        int dimension = (int) context.getResources().getDimension(R.dimen.default_margin_half);
        jVar.setMargins(dimension, dimension, dimension, dimension);
        View h3 = dcVar.h();
        j.a((Object) h3, "root");
        h3.setLayoutParams(jVar);
    }
}
