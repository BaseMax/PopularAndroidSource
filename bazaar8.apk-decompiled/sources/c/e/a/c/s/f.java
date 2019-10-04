package c.e.a.c.s;

import android.os.Handler;
import c.e.a.c.s.q;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class f implements q.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11435a;

    public f(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11435a = baseTransientBottomBar;
    }

    public void a(int i2) {
        Handler handler = BaseTransientBottomBar.f13385a;
        handler.sendMessage(handler.obtainMessage(1, i2, 0, this.f11435a));
    }

    public void d() {
        Handler handler = BaseTransientBottomBar.f13385a;
        handler.sendMessage(handler.obtainMessage(0, this.f11435a));
    }
}
