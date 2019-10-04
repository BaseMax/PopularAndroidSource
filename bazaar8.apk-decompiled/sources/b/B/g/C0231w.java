package b.b.g;

import android.os.Build;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;

/* renamed from: b.b.g.w  reason: case insensitive filesystem */
/* compiled from: AppCompatSpinner */
class C0231w implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f2249a;

    public C0231w(AppCompatSpinner appCompatSpinner) {
        this.f2249a = appCompatSpinner;
    }

    public void onGlobalLayout() {
        if (!this.f2249a.getInternalPopup().c()) {
            this.f2249a.a();
        }
        ViewTreeObserver viewTreeObserver = this.f2249a.getViewTreeObserver();
        if (viewTreeObserver == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }
}
