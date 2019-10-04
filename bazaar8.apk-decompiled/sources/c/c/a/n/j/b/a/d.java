package c.c.a.n.j.b.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import b.g.b.c;
import c.c.a.e;
import c.c.a.f.C0414dc;
import c.c.a.f.jc;
import c.c.a.f.nc;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.b.f;
import c.c.a.n.j.b.b.g;
import c.c.a.n.j.b.b.k;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.ScreenshotViewItemType;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ScreenshotAdapter.kt */
public final class d extends c.c.a.n.c.d.a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final int f6454f = 9;

    /* renamed from: g  reason: collision with root package name */
    public final c f6455g = new c();

    /* renamed from: h  reason: collision with root package name */
    public final ScreenshotsItem f6456h;

    /* renamed from: i  reason: collision with root package name */
    public final a f6457i;

    /* compiled from: ScreenshotAdapter.kt */
    public interface a {
        void a(int i2, List<? extends EntityScreenshotItem> list);

        void a(TrailerCoverItem trailerCoverItem);
    }

    public d(ScreenshotsItem screenshotsItem, a aVar) {
        j.b(screenshotsItem, "screenshots");
        this.f6456h = screenshotsItem;
        this.f6457i = aVar;
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i2 == ScreenshotViewItemType.IMAGE_ITEM.ordinal()) {
            jc a2 = jc.a(from, viewGroup, false);
            j.a((Object) a2, "ItemVideoDetailVideoScre…(inflater, parent, false)");
            return new g(a2);
        } else if (i2 == ScreenshotViewItemType.BIG_IMAGE_ITEM.ordinal()) {
            C0414dc a3 = C0414dc.a(from, viewGroup, false);
            j.a((Object) a3, "ItemVideoDetailVideoBigS…(inflater, parent, false)");
            return new f(a3);
        } else if (i2 == ScreenshotViewItemType.TRAILER_ITEM.ordinal()) {
            nc a4 = nc.a(from, viewGroup, false);
            j.a((Object) a4, "ItemVideoDetailVideoTrai…(inflater, parent, false)");
            k kVar = new k(a4);
            kVar.a(this.f6457i);
            return kVar;
        } else {
            throw new IllegalAccessError("Invalid viewType");
        }
    }

    public final int f(int i2) {
        return b(0) == ScreenshotViewItemType.TRAILER_ITEM.ordinal() ? i2 - 1 : i2;
    }

    public final List<EntityScreenshotItem> h() {
        List<RecyclerData> items = this.f6456h.getItems();
        ArrayList arrayList = new ArrayList();
        for (RecyclerData recyclerData : items) {
            EntityScreenshotItem entityScreenshotItem = recyclerData instanceof EntityScreenshotItem ? (EntityScreenshotItem) recyclerData : null;
            if (entityScreenshotItem != null) {
                arrayList.add(entityScreenshotItem);
            }
        }
        return arrayList;
    }

    public int a() {
        return Math.min(e().size(), this.f6454f);
    }

    /* renamed from: a */
    public void b(n<RecyclerData> nVar, int i2) {
        j.b(nVar, "holder");
        super.b(nVar, i2);
        if (b(i2) == ScreenshotViewItemType.IMAGE_ITEM.ordinal()) {
            View view = nVar.f891b;
            if (nVar instanceof g) {
                ((CardView) view.findViewById(e.screenShotItemCardParent)).setOnClickListener(new e(this, nVar, i2));
                if (i2 != this.f6454f - 1 || e().size() == this.f6454f) {
                    ((g) nVar).E();
                } else {
                    ((g) nVar).c(this.f6456h.getItems().size() - this.f6454f);
                }
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (b(i2) == ScreenshotViewItemType.BIG_IMAGE_ITEM.ordinal()) {
            ((CardView) nVar.f891b.findViewById(e.bigScreenShotItemCardParent)).setOnClickListener(new f(this, i2));
        }
    }
}
