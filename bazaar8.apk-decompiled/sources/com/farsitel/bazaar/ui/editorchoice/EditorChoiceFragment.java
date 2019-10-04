package com.farsitel.bazaar.ui.editorchoice;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.e;
import c.c.a.n.c.d.a.f;
import c.c.a.n.k.c;
import c.c.a.n.k.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.fehrest.FehrestFragment;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;
import h.a.l;
import h.f.b.j;
import java.util.HashMap;
import java.util.List;

/* compiled from: EditorChoiceFragment.kt */
public final class EditorChoiceFragment extends FehrestFragment {
    public static final a Ea = new a(null);
    public int Fa = R.layout.fragment_editor_choice;
    public f Ga;
    public boolean Ha;
    public String Ia = "";
    public int Ja;
    public c Ka;
    public HashMap La;

    /* compiled from: EditorChoiceFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.La;
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
        ((RTLImageView) e(e.toolbarBackButton)).setOnClickListener(new b(this));
        String d2 = Za().d();
        if (d2 == null) {
            d2 = b((int) R.string.editor_choice);
            j.a((Object) d2, "getString(R.string.editor_choice)");
        }
        c(d2);
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.toolbarTitleTextView);
        j.a((Object) appCompatTextView, "toolbarTitleTextView");
        appCompatTextView.setText(rb());
        f fVar = this.Ga;
        int a2 = fVar != null ? fVar.a() : this.Ja;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        Toolbar Na = Na();
        AppBarLayout appBarLayout = (AppBarLayout) e(e.appBarLayout);
        j.a((Object) appBarLayout, "appBarLayout");
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.toolbarTitleTextView);
        j.a((Object) appCompatTextView2, "toolbarTitleTextView");
        f fVar2 = new f(Ha2, Na, appBarLayout, appCompatTextView2, a2);
        this.Ga = fVar2;
        RecyclerView _a = _a();
        f fVar3 = this.Ga;
        if (fVar3 != null) {
            _a.a((RecyclerView.n) fVar3);
        } else {
            j.a();
            throw null;
        }
    }

    public void c(String str) {
        j.b(str, "<set-?>");
        this.Ia = str;
    }

    public View e(int i2) {
        if (this.La == null) {
            this.La = new HashMap();
        }
        View view = (View) this.La.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.La.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ha;
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
        super.n(bundle);
        int i2 = bundle.getInt("totalScroll");
        f fVar = this.Ga;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public void o(Bundle bundle) {
        j.b(bundle, "outState");
        super.o(bundle);
        f fVar = this.Ga;
        bundle.putInt("totalScroll", fVar != null ? fVar.a() : 0);
    }

    public void qa() {
        f fVar = this.Ga;
        this.Ja = fVar != null ? fVar.a() : 0;
        this.Ga = null;
        super.qa();
        La();
    }

    public String rb() {
        return this.Ia;
    }

    public FehrestParams Za() {
        c cVar = this.Ka;
        if (cVar != null) {
            String b2 = cVar.b();
            List a2 = l.a();
            c cVar2 = this.Ka;
            if (cVar2 != null) {
                String c2 = cVar2.c();
                c cVar3 = this.Ka;
                if (cVar3 != null) {
                    FehrestParams fehrestParams = new FehrestParams(b2, a2, c2, true, false, cVar3.a(), 16, null);
                    return fehrestParams;
                }
                j.c("editorChoiceFragmentArgs");
                throw null;
            }
            j.c("editorChoiceFragmentArgs");
            throw null;
        }
        j.c("editorChoiceFragmentArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        c.a aVar = c.f6652a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Ka = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public c.c.a.n.k.a Ua() {
        c.c.a.n.k.a aVar = new c.c.a.n.k.a(yb(), yb(), yb(), vb(), ub(), wb(), xb(), tb());
        return aVar;
    }

    public d jb() {
        E a2 = G.a((Fragment) this, Ra()).a(d.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (d) a2;
    }
}
