package com.farsitel.bazaar.ui.login.merge.account;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.d.b.d;
import c.c.a.d.b.h;
import c.c.a.d.f.i;
import c.c.a.n.p.a.a.b;
import c.c.a.n.p.a.a.d;
import c.c.a.n.p.a.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.InvalidEmailException;
import com.farsitel.bazaar.widget.LoadingButton;
import com.google.android.material.textfield.TextInputLayout;
import h.f.b.j;
import h.f.b.k;
import h.g.a;
import h.g.c;
import java.util.HashMap;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: LoginWithEmailFragment.kt */
public final class LoginWithEmailFragment extends i {
    public static final /* synthetic */ h.i.i[] ga;
    public e ha;
    public String ia;
    public final c ja = a.f14577a.a();
    public HashMap ka;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(LoginWithEmailFragment.class), "waitingTime", "getWaitingTime()J");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        ga = new h.i.i[]{mutablePropertyReference1Impl};
    }

    public static final /* synthetic */ String a(LoginWithEmailFragment loginWithEmailFragment) {
        String str = loginWithEmailFragment.ia;
        if (str != null) {
            return str;
        }
        j.c("email");
        throw null;
    }

    public static final /* synthetic */ e b(LoginWithEmailFragment loginWithEmailFragment) {
        e eVar = loginWithEmailFragment.ha;
        if (eVar != null) {
            return eVar;
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

    public final void Sa() {
        LoadingButton loadingButton = (LoadingButton) e(c.c.a.e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(c.c.a.e.emailEditText);
        j.a((Object) appCompatEditText, "emailEditText");
        loadingButton.setEnabled(c.c.a.c.b.i.d(String.valueOf(appCompatEditText.getText())));
        ((AppCompatEditText) e(c.c.a.e.emailEditText)).setOnEditorActionListener(new a(this));
        ((AppCompatEditText) e(c.c.a.e.emailEditText)).addTextChangedListener(new b(this));
    }

    public final void Ta() {
        Ua();
        ((LoadingButton) e(c.c.a.e.proceedBtn)).setShowLoading(true);
    }

    public final void Ua() {
        TextInputLayout textInputLayout = (TextInputLayout) e(c.c.a.e.emailInputLayout);
        j.a((Object) textInputLayout, "emailInputLayout");
        textInputLayout.setErrorEnabled(false);
    }

    public final void b(long j2) {
        this.ja.a(this, ga[0], Long.valueOf(j2));
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

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(e.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        e eVar = (e) a2;
        h.a(this, eVar.e(), new LoginWithEmailFragment$onActivityCreated$1$1(this));
        this.ha = eVar;
    }

    public final void c(String str) {
        ((LoadingButton) e(c.c.a.e.proceedBtn)).setShowLoading(false);
        TextInputLayout textInputLayout = (TextInputLayout) e(c.c.a.e.emailInputLayout);
        j.a((Object) textInputLayout, "emailInputLayout");
        textInputLayout.setErrorEnabled(true);
        TextInputLayout textInputLayout2 = (TextInputLayout) e(c.c.a.e.emailInputLayout);
        j.a((Object) textInputLayout2, "emailInputLayout");
        textInputLayout2.setError(str);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_login_with_email, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        Sa();
        ((LoadingButton) e(c.c.a.e.proceedBtn)).setOnClickListener(new c(this));
    }

    public final void a(Resource<Long> resource) {
        String str;
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Long a2 = resource.a();
                if (a2 != null) {
                    a(a2.longValue());
                } else {
                    j.a();
                    throw null;
                }
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                if (resource.c() instanceof InvalidEmailException) {
                    str = b((int) R.string.wrong_email_address);
                } else {
                    Context Ha = Ha();
                    j.a((Object) Ha, "requireContext()");
                    str = d.b(Ha, resource.c());
                }
                j.a((Object) str, "if (resource.failure is …re)\n                    }");
                c(str);
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Ta();
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("Illegal State in handleResourceState"));
            }
        }
    }

    public final void a(long j2) {
        ((LoadingButton) e(c.c.a.e.proceedBtn)).setShowLoading(false);
        Ua();
        b(j2);
        C0313j a2 = b.w.b.b.a(this);
        d.b bVar = c.c.a.n.p.a.a.d.f6707a;
        String str = this.ia;
        if (str != null) {
            c.c.a.i.c.a(a2, bVar.a(str, j2));
        } else {
            j.c("email");
            throw null;
        }
    }
}
