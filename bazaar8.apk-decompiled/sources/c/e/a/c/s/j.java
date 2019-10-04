package c.e.a.c.s;

import android.view.View;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class j implements BaseTransientBottomBar.d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11439a;

    public j(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11439a = baseTransientBottomBar;
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        this.f11439a.f13390f.setOnLayoutChangeListener(null);
        if (this.f11439a.l()) {
            this.f11439a.b();
        } else {
            this.f11439a.k();
        }
    }
}
