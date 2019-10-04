package f.a.a.e;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import c.c.a.d.g.c;
import com.crashlytics.android.Crashlytics;
import f.a.a.a.b.a;
import f.a.a.d.f;
import f.a.a.e;
import f.a.a.e.a.j;
import f.a.a.e.a.o;
import f.a.a.g;
import f.a.a.g.g.h;
import ir.cafebazaar.inline.platform.InlineApplication;
import ir.cafebazaar.inline.ui.InlineActivity;
import ir.cafebazaar.inline.ui.Theme;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;

/* compiled from: InlineFragment */
public class l extends Fragment implements g {
    public static l a(g gVar, String str) {
        l lVar;
        try {
            f g2 = gVar.h().g();
            Object a2 = g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8")));
            if (g2.a(a2).equals("splashPage")) {
                lVar = new v();
            } else if (g2.a(a2).equals("videoPage")) {
                lVar = new C();
            } else {
                lVar = new C1083c();
            }
            Bundle bundle = new Bundle();
            bundle.putString("extra_code", str);
            lVar.m(bundle);
            return lVar;
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            new j(gVar, gVar.f().getString(g.error_general), gVar.f().getString(g.error_try_again_later), e2.toString()).f();
            return new C1083c();
        }
    }

    public boolean La() {
        return false;
    }

    public InlineActivity f() {
        return (InlineActivity) x();
    }

    public Theme g() {
        if (h() == null) {
            return null;
        }
        return h().i();
    }

    public Context getApplicationContext() {
        return f().getApplicationContext();
    }

    public InlineApplication h() {
        if (ea()) {
            return f().h();
        }
        return null;
    }

    public a j() {
        return h().a();
    }

    public l k() {
        return this;
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
    }

    public void a(View view, Bundle bundle) {
        super.a(view, bundle);
        boolean z = false;
        if (bundle != null && bundle.getBoolean("restart", false)) {
            z = true;
        }
        if (!z) {
            ArrayList arrayList = new ArrayList(h().j().b().a((g) this));
            if (!arrayList.isEmpty()) {
                new h(this, arrayList).f();
            } else {
                h().j().b().a().b((g) this);
            }
        }
    }

    public void a(String str, View view) {
        try {
            f g2 = h().g();
            a(g2.i(g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8")))), view);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            new j(this, b(g.error_general), b(g.error_try_again_later), e2.toString()).f();
        }
    }

    public void a(o oVar, View view) {
        if (view != null) {
            Point a2 = c.a(view);
            View findViewById = aa().getRootView().findViewById(e.page);
            if (oVar != null) {
                oVar.a((f.a.a.e.a.c) new j(new k(this, findViewById, a2)));
                oVar.a(findViewById, this);
            }
        }
    }
}
