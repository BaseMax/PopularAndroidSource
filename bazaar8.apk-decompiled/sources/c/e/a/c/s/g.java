package c.e.a.c.s;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class g implements SwipeDismissBehavior.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11436a;

    public g(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11436a = baseTransientBottomBar;
    }

    public void a(View view) {
        view.setVisibility(8);
        this.f11436a.b(0);
    }

    public void a(int i2) {
        if (i2 == 0) {
            q.a().g(this.f11436a.f13396l);
        } else if (i2 == 1 || i2 == 2) {
            q.a().f(this.f11436a.f13396l);
        }
    }
}
