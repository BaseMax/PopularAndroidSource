package c.c.a.n.r.a;

import c.c.a.d.f.r;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;

/* compiled from: BazaarKidsDialog.kt */
public final class a implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f6774a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Boolean f6775b;

    public a(b bVar, Boolean bool) {
        this.f6774a = bVar;
        this.f6775b = bool;
    }

    public void a() {
        DialogButtonLayout.a.C0136a.c(this);
    }

    public void onCancel() {
        r Ra = this.f6774a.f6776a.Ra();
        if (Ra != null) {
            Ra.onCancel();
        }
        this.f6774a.f6776a.La();
    }

    public void onCommit() {
        c.b(this.f6774a.f6776a).a(this.f6774a.f6776a.Za());
    }
}
