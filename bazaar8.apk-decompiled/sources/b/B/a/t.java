package b.b.a;

import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.widget.ContentFrameLayout;

/* compiled from: AppCompatDelegateImpl */
class t implements ContentFrameLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1766a;

    public t(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1766a = appCompatDelegateImpl;
    }

    public void a() {
    }

    public void onDetachedFromWindow() {
        this.f1766a.p();
    }
}
