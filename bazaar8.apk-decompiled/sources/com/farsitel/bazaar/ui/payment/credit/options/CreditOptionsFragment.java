package com.farsitel.bazaar.ui.payment.credit.options;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.d.b.d;
import c.c.a.d.b.h;
import c.c.a.d.b.l;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import c.c.a.n.s.a.a.e;
import c.c.a.n.s.a.a.f;
import c.c.a.n.s.a.a.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.DialogVisit;
import com.farsitel.bazaar.analytics.model.what.ErrorHappenedEvent;
import com.farsitel.bazaar.analytics.model.what.LoadCreditOptionsEvent;
import com.farsitel.bazaar.analytics.model.where.CreditOptionsScreen;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import com.farsitel.bazaar.data.feature.payment.CreditOptionList;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import com.farsitel.bazaar.ui.payment.PaymentType;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: CreditOptionsFragment.kt */
public final class CreditOptionsFragment extends b {
    public g ia;
    public e ja;
    public HashMap ka;

    public static final /* synthetic */ g b(CreditOptionsFragment creditOptionsFragment) {
        g gVar = creditOptionsFragment.ia;
        if (gVar != null) {
            return gVar;
        }
        j.c("viewModel");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.ka;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
    }

    public final CreditOption Va() {
        AppCompatRadioButton appCompatRadioButton;
        RadioGroup radioGroup = (RadioGroup) e(c.c.a.e.creditOptionsGroup);
        Object obj = null;
        if (radioGroup != null) {
            RadioGroup radioGroup2 = (RadioGroup) e(c.c.a.e.creditOptionsGroup);
            j.a((Object) radioGroup2, "creditOptionsGroup");
            appCompatRadioButton = (AppCompatRadioButton) radioGroup.findViewById(radioGroup2.getCheckedRadioButtonId());
        } else {
            appCompatRadioButton = null;
        }
        if (appCompatRadioButton != null) {
            obj = appCompatRadioButton.getTag();
        }
        if (obj != null) {
            return (CreditOption) obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.CreditOption");
    }

    public final void Wa() {
        ((RTLImageView) e(c.c.a.e.backButton)).setOnClickListener(new a(this));
    }

    public final void Xa() {
        g gVar = this.ia;
        if (gVar != null) {
            e eVar = this.ja;
            if (eVar != null) {
                gVar.b(eVar.b());
            } else {
                j.c("args");
                throw null;
            }
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public final void Ya() {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) e(c.c.a.e.contentContainer);
        if (coordinatorLayout != null) {
            l.a(coordinatorLayout);
        }
        SpinKitView spinKitView = (SpinKitView) e(c.c.a.e.loadingContainer);
        if (spinKitView != null) {
            l.c(spinKitView);
        }
        View e2 = e(c.c.a.e.errorContainer);
        if (e2 != null) {
            l.a(e2);
        }
    }

    public View e(int i2) {
        if (this.ka == null) {
            this.ka = new HashMap();
        }
        View view = (View) this.ka.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ka.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public CreditOptionsScreen Sa() {
        e eVar = this.ja;
        if (eVar != null) {
            long b2 = eVar.b();
            e eVar2 = this.ja;
            if (eVar2 != null) {
                return new CreditOptionsScreen(b2, eVar2.a() != null);
            }
            j.c("args");
            throw null;
        }
        j.c("args");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        e.a aVar = e.f6811a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ja = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_credit_options, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b.a(this, new DialogVisit(c.c.a.c.d.e.a()), null, null, 6, null);
        E a2 = G.a((Fragment) this, Ra()).a(g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        g gVar = (g) a2;
        h.a(this, gVar.e(), new CreditOptionsFragment$onViewCreated$1$1(this));
        this.ia = gVar;
        Xa();
        Wa();
    }

    public final void a(List<CreditOption> list) {
        b.a(this, new LoadCreditOptionsEvent(list.size()), null, null, 6, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) e(c.c.a.e.contentContainer);
        if (coordinatorLayout != null) {
            l.c(coordinatorLayout);
        }
        SpinKitView spinKitView = (SpinKitView) e(c.c.a.e.loadingContainer);
        if (spinKitView != null) {
            l.a(spinKitView);
        }
        View e2 = e(c.c.a.e.errorContainer);
        if (e2 != null) {
            l.a(e2);
        }
        LoadingButton loadingButton = (LoadingButton) e(c.c.a.e.increaseCreditButton);
        loadingButton.setEnabled(false);
        loadingButton.setOnClickListener(new b(this));
        RadioGroup radioGroup = (RadioGroup) e(c.c.a.e.creditOptionsGroup);
        radioGroup.removeAllViews();
        radioGroup.setOnCheckedChangeListener(new c(this));
        ArrayList<CreditOption> arrayList = new ArrayList<>();
        for (T next : list) {
            long a2 = ((CreditOption) next).a();
            e eVar = this.ja;
            if (eVar != null) {
                if (a2 >= eVar.b()) {
                    arrayList.add(next);
                }
            } else {
                j.c("args");
                throw null;
            }
        }
        for (CreditOption creditOption : arrayList) {
            View inflate = M().inflate(R.layout.item_credit_option, (RadioGroup) e(c.c.a.e.creditOptionsGroup), false);
            if (inflate != null) {
                AppCompatRadioButton appCompatRadioButton = (AppCompatRadioButton) inflate;
                appCompatRadioButton.setText(creditOption.b());
                appCompatRadioButton.setTag(creditOption);
                appCompatRadioButton.setId((int) creditOption.a());
                ((RadioGroup) e(c.c.a.e.creditOptionsGroup)).addView(appCompatRadioButton);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type androidx.appcompat.widget.AppCompatRadioButton");
            }
        }
        Ua();
    }

    public final void a(Resource<? extends PaymentData> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Ya();
            } else if (j.a((Object) d2, (Object) PaymentState.CreditOptionReceived.f12165a)) {
                Object a2 = resource.a();
                if (a2 != null) {
                    a(((CreditOptionList) a2).a());
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.CreditOptionList");
            } else if (j.a((Object) d2, (Object) PaymentState.BuyCreditMethodsReceived.f12163a)) {
                Object a3 = resource.a();
                if (a3 != null) {
                    a((PaymentGateway) a3);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.PaymentGateway");
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            }
        }
    }

    public final void a(PaymentGateway paymentGateway) {
        C0313j a2 = b.w.b.b.a(this);
        f.a aVar = f.f6814a;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        String packageName = Ha.getPackageName();
        j.a((Object) packageName, "requireContext().packageName");
        long a3 = Va().a();
        String f2 = PaymentType.CREDIT.f();
        String h2 = paymentGateway.h();
        String b2 = paymentGateway.b();
        e eVar = this.ja;
        if (eVar != null) {
            boolean z = eVar.a() != null;
            e eVar2 = this.ja;
            if (eVar2 != null) {
                c.a(a2, f.a.a(aVar, packageName, "bazaar_credit", null, a3, f2, h2, b2, z, eVar2.a(), 4, null));
            } else {
                j.c("args");
                throw null;
            }
        } else {
            j.c("args");
            throw null;
        }
    }

    public final void a(ErrorModel errorModel) {
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        String b2 = d.b(Ha, errorModel);
        b.a(this, new ErrorHappenedEvent(b2), null, null, 6, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) e(c.c.a.e.contentContainer);
        if (coordinatorLayout != null) {
            l.a(coordinatorLayout);
        }
        SpinKitView spinKitView = (SpinKitView) e(c.c.a.e.loadingContainer);
        if (spinKitView != null) {
            l.a(spinKitView);
        }
        View e2 = e(c.c.a.e.errorContainer);
        if (e2 != null) {
            l.c(e2);
            AppCompatImageView appCompatImageView = (AppCompatImageView) e2.findViewById(R.id.icon);
            if (appCompatImageView != null) {
                Context Ha2 = Ha();
                j.a((Object) Ha2, "requireContext()");
                appCompatImageView.setImageResource(d.a(Ha2, errorModel));
            }
            TextView textView = (TextView) e2.findViewById(R.id.textView);
            if (textView != null) {
                textView.setText(b2);
            }
            MaterialButton materialButton = (MaterialButton) e2.findViewById(R.id.retry);
            if (materialButton != null) {
                materialButton.setOnClickListener(new d(this, errorModel, b2));
            }
        }
    }
}
