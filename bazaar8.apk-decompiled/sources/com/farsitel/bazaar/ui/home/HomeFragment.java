package com.farsitel.bazaar.ui.home;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.o.a.C0285i;
import c.c.a.d.a.a;
import c.c.a.e;
import c.c.a.g.a;
import c.c.a.n.l.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.fehrest.FehrestFragment;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import com.google.android.material.snackbar.Snackbar;
import h.a.l;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: HomeFragment.kt */
public class HomeFragment extends FehrestFragment {
    public a Ea;
    public int Fa = R.layout.fragment_home;
    public HashMap Ga;

    public final void Ab() {
        if (((i) cb()).s()) {
            C0285i x = x();
            if (!(x instanceof MainActivity)) {
                x = null;
            }
            MainActivity mainActivity = (MainActivity) x;
            if (mainActivity != null) {
                CoordinatorLayout D = mainActivity.D();
                if (D != null) {
                    Snackbar a2 = Snackbar.a(D, b((int) R.string.update_bazaar), -2);
                    a2.a((int) R.string.update, (View.OnClickListener) new c(a2, this));
                    a2.f(b.i.b.a.a(a2.d(), (int) R.color.colorAccent));
                    a2.m();
                }
            }
        }
    }

    public void La() {
        HashMap hashMap = this.Ga;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ya() {
        return this.Fa;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((AppCompatImageView) e(e.toolbarBazaar)).setOnClickListener(new a(this));
        ((AppCompatImageView) e(e.toolbarWhatshot)).setOnClickListener(new b(this));
    }

    public void b(Bundle bundle) {
        ImageView.ScaleType scaleType;
        super.b(bundle);
        AppCompatImageView appCompatImageView = (AppCompatImageView) e(e.toolbarBazaar);
        j.a((Object) appCompatImageView, "toolbarBazaar");
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        if (aVar.a(Ha).w()) {
            scaleType = ImageView.ScaleType.FIT_END;
        } else {
            scaleType = ImageView.ScaleType.FIT_START;
        }
        appCompatImageView.setScaleType(scaleType);
        c.c.a.d.g.a.i iVar = c.c.a.d.g.a.i.f4812a;
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) e(e.toolbarBazaar);
        j.a((Object) appCompatImageView2, "toolbarBazaar");
        c.c.a.d.g.a.i.a(iVar, appCompatImageView2, ((i) cb()).q(), null, Integer.valueOf(R.drawable.brand_bazaar_img), null, 0, 52, null);
        Ab();
    }

    public View e(int i2) {
        if (this.Ga == null) {
            this.Ga = new HashMap();
        }
        View view = (View) this.Ga.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ga.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public FehrestParams Za() {
        FehrestParams fehrestParams = new FehrestParams("home", l.a(), null, false, false, null, 60, null);
        return fehrestParams;
    }
}
