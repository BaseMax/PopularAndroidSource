package com.farsitel.bazaar.ui.payment.giftcard;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.b.i;
import c.c.a.d.b.c;
import c.c.a.d.b.f;
import c.c.a.d.b.h;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.s.c.a;
import c.c.a.n.s.c.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.SubmitGiftCardCodeButtonClick;
import com.farsitel.bazaar.analytics.model.where.GiftCardScreen;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import h.a.k;
import h.f.b.j;
import java.util.HashMap;
import kotlin.Pair;

/* compiled from: GiftCardFragment.kt */
public final class GiftCardFragment extends b {
    public d ia;
    public Snackbar ja;
    public HashMap ka;

    public void La() {
        HashMap hashMap = this.ka;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        a aVar = new a(this);
        int integer = S().getInteger(R.integer.gift_card_terms_length);
        int length = S().getString(R.string.gift_card_terms_prefix).length();
        Pair pair = new Pair(Integer.valueOf(length), Integer.valueOf(length + integer));
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.legalNotes);
        j.a((Object) appCompatTextView, "legalNotes");
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.legalNotes);
        j.a((Object) appCompatTextView2, "legalNotes");
        c.c.a.i.e.a(appCompatTextView, appCompatTextView2.getText().toString(), k.a(pair), k.a(aVar));
    }

    public final void Va() {
        ((LoadingButton) e(e.submitButton)).setShowLoading(true);
        Snackbar snackbar = this.ja;
        if (snackbar != null) {
            snackbar.c();
        }
    }

    public final void Wa() {
        ((LoadingButton) e(e.submitButton)).setShowLoading(false);
        Qa().a(b((int) R.string.success_redeem_gift_code));
        b.w.b.b.a(this).i();
    }

    public final void Xa() {
        b.a(this, new SubmitGiftCardCodeButtonClick(c.c.a.c.d.e.a()), null, null, 6, null);
        d dVar = this.ia;
        if (dVar != null) {
            AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.codeEditText);
            j.a((Object) appCompatEditText, "codeEditText");
            dVar.a(String.valueOf(appCompatEditText.getText()));
            return;
        }
        j.c("viewModel");
        throw null;
    }

    public final void Ya() {
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.legalNotes);
        j.a((Object) appCompatTextView, "legalNotes");
        String b2 = b((int) R.string.gift_card_terms);
        j.a((Object) b2, "getString(R.string.gift_card_terms)");
        appCompatTextView.setText(i.a(b2));
        Ua();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(d.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        d dVar = (d) a2;
        h.a(this, dVar.e(), new GiftCardFragment$onActivityCreated$1$1(this));
        this.ia = dVar;
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

    public void ta() {
        super.ta();
        Ya();
    }

    public void va() {
        super.va();
        View aa = aa();
        f.a(this, aa != null ? aa.getWindowToken() : null);
    }

    public GiftCardScreen Sa() {
        return new GiftCardScreen();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_gift_card, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((RTLImageView) e(e.backButton)).setOnClickListener(new b(this));
        ((LoadingButton) e(e.submitButton)).setOnClickListener(new c(this));
        LoadingButton loadingButton = (LoadingButton) e(e.submitButton);
        j.a((Object) loadingButton, "submitButton");
        loadingButton.setEnabled(false);
        LoadingButton loadingButton2 = (LoadingButton) e(e.submitButton);
        j.a((Object) loadingButton2, "submitButton");
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(e.codeEditText);
        j.a((Object) appCompatEditText, "codeEditText");
        c.a(loadingButton2, appCompatEditText, GiftCardFragment$onViewCreated$3.f12343a);
        f.a.a.f.f.a(E(), (View) (AppCompatEditText) e(e.codeEditText));
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Wa();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Va();
            } else {
                c.c.a.c.c.a.f4699b.a((Throwable) new RuntimeException("Unknown state"));
            }
        }
    }

    public final void a(ErrorModel errorModel) {
        ((LoadingButton) e(e.submitButton)).setShowLoading(false);
        TextInputLayout textInputLayout = (TextInputLayout) e(e.codeInput);
        j.a((Object) textInputLayout, "codeInput");
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        textInputLayout.setError(c.c.a.d.b.d.b(Ha, errorModel));
    }
}
