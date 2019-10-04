package c.c.a.n.p.a.a;

import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;

/* compiled from: MergeAccountSuccessDialog.kt */
public final class g implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f6713a;

    public g(h hVar) {
        this.f6713a = hVar;
    }

    public void a() {
        DialogButtonLayout.a.C0136a.c(this);
    }

    public void onCancel() {
        DialogButtonLayout.a.C0136a.a(this);
    }

    public void onCommit() {
        DialogButtonLayout.a.C0136a.b(this);
        this.f6713a.Za().a(None.INSTANCE);
    }
}
