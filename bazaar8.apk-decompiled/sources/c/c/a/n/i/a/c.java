package c.c.a.n.i.a;

import android.content.Context;
import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import c.c.a.n.g.a;
import com.farsitel.bazaar.data.entity.ReleaseNote;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteItem;
import h.f.b.j;
import java.util.List;

/* compiled from: ReleaseNoteDialogViewModel.kt */
public final class c extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<List<ReleaseNoteItem>> f6425d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final c.c.a.e.d.o.c f6426e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f6427f;

    public c(c.c.a.e.d.o.c cVar, Context context) {
        j.b(cVar, "releaseNoteRepository");
        j.b(context, "context");
        this.f6426e = cVar;
        this.f6427f = context;
    }

    public final LiveData<List<ReleaseNoteItem>> e() {
        return this.f6425d;
    }

    public final void f() {
        t<List<ReleaseNoteItem>> tVar = this.f6425d;
        List<ReleaseNote> b2 = this.f6426e.b();
        tVar.b(b2 != null ? a.a(b2, this.f6427f) : null);
    }
}
