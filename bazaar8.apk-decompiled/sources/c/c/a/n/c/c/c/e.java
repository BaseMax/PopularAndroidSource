package c.c.a.n.c.c.c;

import android.annotation.SuppressLint;
import b.o.a.C0290n;
import b.o.a.z;
import com.farsitel.bazaar.common.model.Page;
import h.f.b.j;
import java.util.List;

@SuppressLint({"WrongConstant"})
/* compiled from: PageContainerPagerAdapter.kt */
public abstract class e extends z {

    /* renamed from: g  reason: collision with root package name */
    public final List<Page> f6321g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6322h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(List<Page> list, boolean z, C0290n nVar) {
        super(nVar, 1);
        j.b(list, "data");
        j.b(nVar, "fragmentManager");
        this.f6321g = list;
        this.f6322h = z;
    }

    public String a(int i2) {
        List<Page> list = this.f6321g;
        return list.get(a(i2, list.size())).getTitle();
    }

    public int a() {
        return this.f6321g.size();
    }

    public final int a(int i2, int i3) {
        return this.f6322h ? (i3 - i2) - 1 : i2;
    }
}
