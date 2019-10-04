package f.a.a.e;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.crashlytics.android.Crashlytics;
import f.a.a.d.f;
import f.a.a.e.b.M;
import f.a.a.g;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.ui.Theme;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* compiled from: SplashPageFragment */
public class v extends l {
    public static int Y = 1500;
    public b Z;
    public Handler aa;
    public boolean ba = true;

    public final void Ma() {
        if (this.Z != null) {
            if (this.aa == null) {
                this.aa = new Handler(Looper.getMainLooper());
            }
            this.aa.postDelayed(new u(this), (long) Y);
        }
    }

    public void sa() {
        super.sa();
        this.ba = false;
    }

    public void ta() {
        super.ta();
        this.ba = true;
        Ma();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String string = (C() == null || C().getString("extra_code") == null) ? "" : C().getString("extra_code");
        this.aa = new Handler(Looper.getMainLooper());
        try {
            f g2 = h().g();
            Object a2 = g2.a((InputStream) new ByteArrayInputStream(string.getBytes("UTF-8")));
            Theme b2 = g2.b(a2);
            if (b2 != null) {
                h().a(b2);
            }
            h().j().b().b(g2.d(a2));
            f.a.a.d.a.a.c.b h2 = g2.h(a2);
            if (h().b() == null && h2 != null) {
                h().a(f(), h2);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                Window window = x().getWindow();
                window.addFlags(Integer.MIN_VALUE);
                window.clearFlags(67108864);
                window.setStatusBarColor(g().i());
            }
            M m = (M) g2.e(a2);
            if (m.b()) {
                f().w().g().c();
            }
            if (m.a() != null) {
                f().w().g().a(m.a());
            }
            this.Z = m.c();
            return m.a(layoutInflater, viewGroup, this);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            new j(this, b(g.error_general), b(g.error_try_again_later), e2.toString()).f();
            return super.a(layoutInflater, viewGroup, bundle);
        }
    }
}
