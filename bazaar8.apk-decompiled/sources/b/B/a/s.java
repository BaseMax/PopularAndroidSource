package b.b.a;

import android.graphics.Rect;
import androidx.appcompat.app.AppCompatDelegateImpl;
import b.b.g.J;

/* compiled from: AppCompatDelegateImpl */
class s implements J.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1765a;

    public s(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1765a = appCompatDelegateImpl;
    }

    public void a(Rect rect) {
        rect.top = this.f1765a.l(rect.top);
    }
}
