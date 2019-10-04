package c.c.a.n.b.d.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.c.h.d;
import c.c.a.d.b.i;
import c.c.a.f.C0456qb;
import c.c.a.f.C0461sb;
import c.c.a.n.b.d.a.e;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import h.f.b.j;
import java.util.List;

/* compiled from: ScreenshotAdapter.kt */
public final class a extends c.c.a.n.c.d.a<AppScreenshotItem> {

    /* renamed from: f  reason: collision with root package name */
    public final int f6234f;

    /* renamed from: g  reason: collision with root package name */
    public final float f6235g;

    /* renamed from: h  reason: collision with root package name */
    public final float f6236h;

    /* renamed from: i  reason: collision with root package name */
    public final float f6237i = ((((float) (d.b() - (((int) this.f6235g) * 2))) - this.f6236h) - ((float) i.a(10)));

    /* renamed from: j  reason: collision with root package name */
    public final e.a f6238j;

    /* renamed from: k  reason: collision with root package name */
    public final C0090a f6239k;

    /* renamed from: c.c.a.n.b.d.a.a$a  reason: collision with other inner class name */
    /* compiled from: ScreenshotAdapter.kt */
    public interface C0090a {
        void a(int i2, List<AppScreenshotItem> list);
    }

    public a(Context context, e.a aVar, C0090a aVar2) {
        j.b(context, "context");
        this.f6238j = aVar;
        this.f6239k = aVar2;
        this.f6234f = (int) context.getResources().getDimension(R.dimen.screenshot_height);
        this.f6235g = context.getResources().getDimension(R.dimen.default_margin_half_quarter);
        this.f6236h = context.getResources().getDimension(R.dimen.default_margin_double);
    }

    public final b h() {
        return new b(this);
    }

    /* renamed from: a */
    public void b(n<AppScreenshotItem> nVar, int i2) {
        j.b(nVar, "holder");
        super.b(nVar, i2);
        if (nVar instanceof e) {
            RecyclerView.j jVar = new RecyclerView.j((int) this.f6237i, this.f6234f);
            jVar.setMarginEnd((int) this.f6235g);
            jVar.setMarginStart((int) this.f6236h);
            View view = nVar.f891b;
            j.a((Object) view, "holder.itemView");
            view.setLayoutParams(jVar);
        } else if (nVar instanceof c) {
            RecyclerView.j jVar2 = new RecyclerView.j(-2, this.f6234f);
            jVar2.setMarginStart(i2 == 0 ? ((int) this.f6235g) * 2 : ((int) this.f6235g) / 2);
            jVar2.setMarginEnd(i2 == a() + -1 ? ((int) this.f6235g) * 2 : ((int) this.f6235g) / 2);
            View view2 = nVar.f891b;
            j.a((Object) view2, "holder.itemView");
            view2.setLayoutParams(jVar2);
        } else {
            throw new IllegalAccessError("invalid type, declare it");
        }
    }

    public int b(int i2) {
        return ((AppScreenshotItem) e().get(i2)).isImage() ^ true ? 1 : 0;
    }

    public d c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == 0) {
            C0456qb a2 = C0456qb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemScreenshotImageBindi….context), parent, false)");
            return new c(a2, h());
        } else if (i2 == 1) {
            C0461sb a3 = C0461sb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemScreenshotVideoBindi….context), parent, false)");
            return new e(a3, this.f6238j);
        } else {
            throw new IllegalAccessError("invalid type, declare it");
        }
    }
}
