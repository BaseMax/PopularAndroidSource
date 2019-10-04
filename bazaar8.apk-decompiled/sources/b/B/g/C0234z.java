package b.b.g;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;

/* renamed from: b.b.g.z  reason: case insensitive filesystem */
/* compiled from: AppCompatSpinner */
class C0234z implements PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f2266a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner.c f2267b;

    public C0234z(AppCompatSpinner.c cVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f2267b = cVar;
        this.f2266a = onGlobalLayoutListener;
    }

    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f2266a);
        }
    }
}
