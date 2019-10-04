package c.e.a.c.s;

import android.view.View;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class i implements BaseTransientBottomBar.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11438a;

    public i(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11438a = baseTransientBottomBar;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        if (this.f11438a.j()) {
            BaseTransientBottomBar.f13385a.post(new h(this));
        }
    }
}
