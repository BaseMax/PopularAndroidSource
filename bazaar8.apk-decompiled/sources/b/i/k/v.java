package b.i.k;

import android.view.View;
import android.view.WindowInsets;

/* compiled from: ViewCompat */
class v implements View.OnApplyWindowInsetsListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ q f2828a;

    public v(q qVar) {
        this.f2828a = qVar;
    }

    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return (WindowInsets) M.a(this.f2828a.a(view, M.a((Object) windowInsets)));
    }
}
