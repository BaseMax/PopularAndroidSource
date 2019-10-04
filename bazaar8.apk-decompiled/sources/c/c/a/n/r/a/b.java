package c.c.a.n.r.a;

import b.r.u;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import h.f.b.j;

/* compiled from: BazaarKidsDialog.kt */
final class b<T> implements u<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f6776a;

    public b(c cVar) {
        this.f6776a = cVar;
    }

    public final void a(Boolean bool) {
        DialogButtonLayout dialogButtonLayout = (DialogButtonLayout) this.f6776a.e(e.dialogButtonLayout);
        j.a((Object) bool, "it");
        String b2 = this.f6776a.b(bool.booleanValue() ? R.string.disable : R.string.enable);
        j.a((Object) b2, "getString(commitButtonMessage)");
        dialogButtonLayout.setCommitText(b2);
        dialogButtonLayout.setOnClickListener(new a(this, bool));
    }
}
