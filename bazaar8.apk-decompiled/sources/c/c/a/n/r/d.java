package c.c.a.n.r;

import c.c.a.c.d.e;
import c.c.a.d.f.r;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.BazaarKidsDialogButtonClick;
import com.farsitel.bazaar.analytics.model.what.DialogButtonClickType;
import com.farsitel.bazaar.app.BazaarApp;

/* compiled from: ChildMyBazaarFragment.kt */
public final class d implements r<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6785a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f6786b;

    public d(f fVar, boolean z) {
        this.f6785a = fVar;
        this.f6786b = z;
    }

    public /* bridge */ /* synthetic */ void a(Object obj) {
        a(((Boolean) obj).booleanValue());
    }

    public void onCancel() {
        this.f6785a.l(this.f6786b);
        b.a(this.f6785a, new BazaarKidsDialogButtonClick(DialogButtonClickType.CANCEL, this.f6786b, e.a()), null, null, 6, null);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(boolean z) {
        this.f6785a.l(z);
        f.a(this.f6785a).l();
        b.a(this.f6785a, new BazaarKidsDialogButtonClick(DialogButtonClickType.OK, z, e.a()), null, null, 6, null);
        BazaarApp.f12104i.a().a(false);
    }
}
