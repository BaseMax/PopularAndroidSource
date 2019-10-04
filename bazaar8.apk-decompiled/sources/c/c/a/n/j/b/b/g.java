package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.jc;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: ScreenshotItemViewHolder.kt */
public final class g extends n<RecyclerData> {
    public final jc v;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(jc jcVar) {
        super(jcVar);
        j.b(jcVar, "viewBinding");
        this.v = jcVar;
    }

    public final void E() {
        this.v.a(26, (Object) false);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        jc jcVar = this.v;
        RecyclerView.j jVar = new RecyclerView.j(-1, -2);
        View h2 = jcVar.h();
        j.a((Object) h2, "root");
        Context context = h2.getContext();
        j.a((Object) context, "root.context");
        int dimension = (int) context.getResources().getDimension(R.dimen.default_margin_half);
        jVar.setMargins(dimension, dimension, dimension, dimension);
        View h3 = jcVar.h();
        j.a((Object) h3, "root");
        h3.setLayoutParams(jVar);
    }

    public final void c(int i2) {
        this.v.a(26, (Object) true);
        h.f.b.n nVar = h.f.b.n.f14575a;
        Locale locale = Locale.getDefault();
        j.a((Object) locale, "Locale.getDefault()");
        AppCompatTextView appCompatTextView = this.v.E;
        j.a((Object) appCompatTextView, "viewBinding.showMore");
        String string = appCompatTextView.getContext().getString(R.string.plus_sign);
        j.a((Object) string, "viewBinding.showMore.con…tring(R.string.plus_sign)");
        Object[] objArr = {Integer.valueOf(i2)};
        String format = String.format(locale, string, Arrays.copyOf(objArr, objArr.length));
        j.a((Object) format, "java.lang.String.format(locale, format, *args)");
        this.v.a(24, (Object) format);
    }
}
