package c.c.a.n.m;

import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import c.c.a.b.e.b;
import com.farsitel.bazaar.ui.home.MainActivity;
import h.f.b.j;

/* compiled from: MainActivity.kt */
public final class g implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MainActivity f6685a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Bundle f6686b;

    public g(MainActivity mainActivity, Bundle bundle) {
        this.f6685a = mainActivity;
        this.f6686b = bundle;
    }

    public void onGlobalLayout() {
        Window window = this.f6685a.getWindow();
        j.a((Object) window, "window");
        View decorView = window.getDecorView();
        j.a((Object) decorView, "window.decorView");
        decorView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        if (this.f6686b == null) {
            b a2 = this.f6685a.I;
            if (a2 != null) {
                a2.s();
            }
            this.f6685a.G();
            MainActivity mainActivity = this.f6685a;
            mainActivity.d(mainActivity.getIntent());
            MainActivity mainActivity2 = this.f6685a;
            mainActivity2.c(mainActivity2.getIntent());
        }
    }
}
