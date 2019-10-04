package b.b.g;

import android.view.View;
import androidx.appcompat.widget.ActionMenuPresenter;
import b.b.f.a.w;

/* renamed from: b.b.g.g  reason: case insensitive filesystem */
/* compiled from: ActionMenuPresenter */
class C0216g extends K {

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ ActionMenuPresenter f2165j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ ActionMenuPresenter.d f2166k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0216g(ActionMenuPresenter.d dVar, View view, ActionMenuPresenter actionMenuPresenter) {
        super(view);
        this.f2166k = dVar;
        this.f2165j = actionMenuPresenter;
    }

    public w b() {
        ActionMenuPresenter.e eVar = ActionMenuPresenter.this.y;
        if (eVar == null) {
            return null;
        }
        return eVar.c();
    }

    public boolean c() {
        ActionMenuPresenter.this.j();
        return true;
    }

    public boolean d() {
        ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
        if (actionMenuPresenter.A != null) {
            return false;
        }
        actionMenuPresenter.f();
        return true;
    }
}
