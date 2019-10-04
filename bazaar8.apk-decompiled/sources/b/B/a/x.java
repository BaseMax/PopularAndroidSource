package b.b.a;

import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.app.AppCompatDelegateImpl;
import b.i.k.J;
import b.i.k.K;
import b.i.k.z;

/* compiled from: AppCompatDelegateImpl */
class x extends K {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl.b f1770a;

    public x(AppCompatDelegateImpl.b bVar) {
        this.f1770a = bVar;
    }

    public void b(View view) {
        AppCompatDelegateImpl.this.t.setVisibility(8);
        AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
        PopupWindow popupWindow = appCompatDelegateImpl.u;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (appCompatDelegateImpl.t.getParent() instanceof View) {
            z.G((View) AppCompatDelegateImpl.this.t.getParent());
        }
        AppCompatDelegateImpl.this.t.removeAllViews();
        AppCompatDelegateImpl.this.w.a((J) null);
        AppCompatDelegateImpl.this.w = null;
    }
}
