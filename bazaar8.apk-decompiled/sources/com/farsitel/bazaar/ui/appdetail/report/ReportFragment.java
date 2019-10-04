package com.farsitel.bazaar.ui.appdetail.report;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.d.f.g;
import c.c.a.e;
import c.c.a.f.C0465u;
import c.c.a.n.b.c.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.entity.None;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: ReportFragment.kt */
public final class ReportFragment extends g<None> {
    public static final a ta = new a(null);
    public HashMap Aa;
    public final String ua = "report";
    public boolean va = true;
    public Integer wa = 2131821044;
    public f xa;
    public Handler ya;
    public c.c.a.n.b.c.g za;

    /* compiled from: ReportFragment.kt */
    public static final class a {
        public a() {
        }

        public final ReportFragment a(f fVar) {
            j.b(fVar, "reportFragmentArgs");
            ReportFragment reportFragment = new ReportFragment();
            reportFragment.m(fVar.c());
            return reportFragment;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public static final /* synthetic */ Handler a(ReportFragment reportFragment) {
        Handler handler = reportFragment.ya;
        if (handler != null) {
            return handler;
        }
        j.c("handler");
        throw null;
    }

    public void Qa() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.ua;
    }

    public Integer Va() {
        return this.wa;
    }

    public boolean Ya() {
        return this.va;
    }

    public void b(View view) {
        j.b(view, "view");
        super.b(view);
        this.ya = new Handler();
        MaterialButton materialButton = (MaterialButton) view.findViewById(e.btSubmitReport);
        j.a((Object) materialButton, "view.btSubmitReport");
        materialButton.setEnabled(false);
        view.findViewById(R.id.toolbarBackButton).setOnClickListener(new a(this));
        view.findViewById(R.id.btSubmitReport).setOnClickListener(new b(this, view));
        ((RadioGroup) view.findViewById(e.rgReport)).setOnCheckedChangeListener(new c(view));
        ((AppCompatEditText) view.findViewById(e.etUserReport)).setOnTouchListener(new e(this, view));
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        f.a aVar = f.f6227a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.xa = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0465u a2 = C0465u.a(layoutInflater, viewGroup, false);
        f fVar = this.xa;
        if (fVar != null) {
            a2.a(53, (Object) fVar.b());
            j.a((Object) a2, "FragmentReportAppBinding…gs.toolbarInfo)\n        }");
            return a2.h();
        }
        j.c("reportArgs");
        throw null;
    }

    public final void c(View view) {
        c.c.a.n.b.c.g gVar = this.za;
        if (gVar != null) {
            f fVar = this.xa;
            if (fVar != null) {
                String a2 = fVar.a();
                RadioGroup radioGroup = (RadioGroup) view.findViewById(e.rgReport);
                j.a((Object) radioGroup, "view.rgReport");
                int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                AppCompatEditText appCompatEditText = (AppCompatEditText) view.findViewById(e.etUserReport);
                j.a((Object) appCompatEditText, "view.etUserReport");
                gVar.a(a2, checkedRadioButtonId, String.valueOf(appCompatEditText.getText()));
                Za().a(b((int) R.string.submit_report_app));
                Ma();
                return;
            }
            j.c("reportArgs");
            throw null;
        }
        j.c("viewModel");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E a2 = G.a((Fragment) this, Wa()).a(c.c.a.n.b.c.g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.za = (c.c.a.n.b.c.g) a2;
    }
}
