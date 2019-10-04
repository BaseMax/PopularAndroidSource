package c.c.a.n.d;

import android.content.Context;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: BookmarkViewModel.kt */
public final class b extends t<None> {
    public final boolean x;
    public final Context y;
    public final c.c.a.e.d.d.b z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(Context context, u uVar, c.c.a.e.d.d.b bVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(bVar, "bookmarkRepository");
        this.y = context;
        this.z = bVar;
    }

    public boolean o() {
        return this.x;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new BookmarkViewModel$makeData$1(this, this.y.getString(R.string.bookmarked_items), null), 3, null);
    }
}
