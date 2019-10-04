package com.farsitel.bazaar.ui.payment.thanks;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import c.c.a.d.b.l;
import c.c.a.e;
import c.c.a.n.c.a.c;
import c.c.a.n.s.a;
import c.c.a.n.s.g.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.PaymentThankYouPageScreen;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: PaymentThankYouPageFragment.kt */
public final class PaymentThankYouPageFragment extends c {
    public a fa;
    public d ga;
    public HashMap ha;

    public void La() {
        HashMap hashMap = this.ha;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        d.a aVar = d.f6914a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ga = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.ha == null) {
            this.ha = new HashMap();
        }
        View view = (View) this.ha.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ha.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public PaymentThankYouPageScreen Qa() {
        d dVar = this.ga;
        if (dVar != null) {
            boolean e2 = dVar.e();
            d dVar2 = this.ga;
            if (dVar2 != null) {
                return new PaymentThankYouPageScreen(e2, dVar2.b());
            }
            j.c("args");
            throw null;
        }
        j.c("args");
        throw null;
    }

    public void a(Context context) {
        j.b(context, "context");
        a aVar = (a) (!(context instanceof a) ? null : context);
        if (aVar != null) {
            this.fa = aVar;
            super.a(context);
            return;
        }
        throw new RuntimeException("this activity must implement FinishPaymentCallbacks");
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_thank_you_page, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        d dVar = this.ga;
        if (dVar == null) {
            j.c("args");
            throw null;
        } else if (dVar.e()) {
            d dVar2 = this.ga;
            if (dVar2 != null) {
                String b2 = dVar2.b();
                d dVar3 = this.ga;
                if (dVar3 != null) {
                    String c2 = dVar3.c();
                    d dVar4 = this.ga;
                    if (dVar4 != null) {
                        a(b2, c2, dVar4.d());
                    } else {
                        j.c("args");
                        throw null;
                    }
                } else {
                    j.c("args");
                    throw null;
                }
            } else {
                j.c("args");
                throw null;
            }
        } else {
            d dVar5 = this.ga;
            if (dVar5 != null) {
                a(dVar5.a());
            } else {
                j.c("args");
                throw null;
            }
        }
    }

    public final void a(String str, String str2, String str3) {
        ConstraintLayout constraintLayout = (ConstraintLayout) e(e.contentContainer);
        j.a((Object) constraintLayout, "contentContainer");
        l.c(constraintLayout);
        MaterialButton materialButton = (MaterialButton) e(e.successButton);
        j.a((Object) materialButton, "successButton");
        l.c(materialButton);
        Group group = (Group) e(e.failureButtonsGroup);
        j.a((Object) group, "failureButtonsGroup");
        l.a(group);
        ((AppCompatImageView) e(e.statusIconImageView)).setImageResource(R.drawable.ic_success_outline_black_24px);
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.messageTextView);
        j.a((Object) appCompatTextView, "messageTextView");
        appCompatTextView.setText(str);
        MaterialButton materialButton2 = (MaterialButton) e(e.successButton);
        if (materialButton2 != null) {
            materialButton2.setOnClickListener(new c(this, str2, str3));
        }
    }

    public final void a(ErrorModel errorModel) {
        ConstraintLayout constraintLayout = (ConstraintLayout) e(e.contentContainer);
        j.a((Object) constraintLayout, "contentContainer");
        l.c(constraintLayout);
        MaterialButton materialButton = (MaterialButton) e(e.successButton);
        j.a((Object) materialButton, "successButton");
        l.a(materialButton);
        Group group = (Group) e(e.failureButtonsGroup);
        j.a((Object) group, "failureButtonsGroup");
        l.c(group);
        ((MaterialButton) e(e.tryAgainButton)).setOnClickListener(new a(this));
        ((MaterialButton) e(e.cancelButton)).setOnClickListener(new b(this));
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        ((AppCompatImageView) e(e.statusIconImageView)).setImageResource(c.c.a.d.b.d.a(Ha, errorModel));
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.messageTextView);
        j.a((Object) appCompatTextView, "messageTextView");
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        appCompatTextView.setText(c.c.a.d.b.d.b(Ha2, errorModel));
    }
}
