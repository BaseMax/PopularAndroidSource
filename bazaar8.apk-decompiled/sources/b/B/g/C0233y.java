package b.b.g;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;

/* renamed from: b.b.g.y  reason: case insensitive filesystem */
/* compiled from: AppCompatSpinner */
class C0233y implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner.c f2264a;

    public C0233y(AppCompatSpinner.c cVar) {
        this.f2264a = cVar;
    }

    public void onGlobalLayout() {
        AppCompatSpinner.c cVar = this.f2264a;
        if (!cVar.b(AppCompatSpinner.this)) {
            this.f2264a.dismiss();
            return;
        }
        this.f2264a.o();
        C0233y.super.d();
    }
}
