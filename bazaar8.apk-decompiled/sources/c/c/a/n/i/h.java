package c.c.a.n.i;

import android.content.Context;
import c.c.a.e.d.o.c;
import c.c.a.n.c.d.g;
import c.c.a.n.g.a;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteItem;
import h.f.b.j;

/* compiled from: ReleaseNoteViewModel.kt */
public final class h extends g<ReleaseNoteItem, None> {

    /* renamed from: j  reason: collision with root package name */
    public final c f6434j;

    /* renamed from: k  reason: collision with root package name */
    public final Context f6435k;

    public h(c cVar, Context context) {
        j.b(cVar, "releaseNoteRepository");
        j.b(context, "context");
        this.f6434j = cVar;
        this.f6435k = context;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        a(a.a(this.f6434j.a(), this.f6435k));
    }

    public final boolean j() {
        return this.f6434j.d();
    }
}
