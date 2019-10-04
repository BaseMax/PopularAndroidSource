package c.c.a.n.v;

import androidx.fragment.app.Fragment;
import b.o.a.C0290n;
import b.o.a.z;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.j;
import java.util.List;

/* compiled from: ScreenshotViewPagerAdapter.kt */
public final class g extends z {

    /* renamed from: g  reason: collision with root package name */
    public final List<EntityScreenshotItem> f7032g;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(C0290n nVar, List<? extends EntityScreenshotItem> list) {
        super(nVar);
        j.b(nVar, "fragmentManager");
        j.b(list, "items");
        this.f7032g = list;
    }

    public int a() {
        return this.f7032g.size();
    }

    public Fragment c(int i2) {
        return f.Y.a(this.f7032g.get(i2));
    }
}
