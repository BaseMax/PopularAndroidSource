package c.e.a.c.s;

import android.view.View;
import b.i.k.M;
import b.i.k.q;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class d implements q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11433a;

    public d(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11433a = baseTransientBottomBar;
    }

    public M a(View view, M m) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), m.b());
        return m;
    }
}
