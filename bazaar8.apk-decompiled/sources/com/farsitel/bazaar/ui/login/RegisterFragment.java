package com.farsitel.bazaar.ui.login;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import c.c.a.d.a.a;
import c.c.a.d.b.h;
import c.c.a.d.f.a.a.a;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.p.C0674a;
import c.c.a.n.p.C0675b;
import c.c.a.n.p.f;
import c.c.a.n.p.g;
import c.c.a.n.p.k;
import c.c.a.n.p.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.ErrorHappenedEvent;
import com.farsitel.bazaar.analytics.model.what.ProceedRegisterClick;
import com.farsitel.bazaar.analytics.model.where.RegisterScreen;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.InvalidPhoneNumberException;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.textfield.TextInputLayout;
import h.a.l;
import h.c;
import h.d;
import h.f.b.j;
import h.g.a;
import h.i.i;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: RegisterFragment.kt */
public final class RegisterFragment extends b {
    public static final /* synthetic */ i[] ia;
    public k ja;
    public final c ka = d.a(new RegisterFragment$loginType$2(this));
    public m la;
    public final h.g.c ma = a.f14577a.a();
    public C0674a na;
    public HashMap oa;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(RegisterFragment.class), "loginType", "getLoginType()Lcom/farsitel/bazaar/common/model/login/LoginType;");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(h.f.b.k.a(RegisterFragment.class), "waitingTime", "getWaitingTime()J");
        h.f.b.k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        ia = new i[]{propertyReference1Impl, mutablePropertyReference1Impl};
    }

    public static final /* synthetic */ k a(RegisterFragment registerFragment) {
        k kVar = registerFragment.ja;
        if (kVar != null) {
            return kVar;
        }
        j.c("args");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        ((AppCompatAutoCompleteTextView) e(e.phoneEditText)).setOnEditorActionListener(new c(this));
        LoadingButton loadingButton = (LoadingButton) e(e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = (AppCompatAutoCompleteTextView) e(e.phoneEditText);
        j.a((Object) appCompatAutoCompleteTextView, "phoneEditText");
        loadingButton.setEnabled(c.c.a.c.b.i.e(appCompatAutoCompleteTextView.getText().toString()));
        ((AppCompatAutoCompleteTextView) e(e.phoneEditText)).addTextChangedListener(new c.c.a.n.p.d(this));
    }

    public final LoginType Va() {
        c cVar = this.ka;
        i iVar = ia[0];
        return (LoginType) cVar.getValue();
    }

    public final String Wa() {
        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = (AppCompatAutoCompleteTextView) e(e.phoneEditText);
        return String.valueOf(appCompatAutoCompleteTextView != null ? appCompatAutoCompleteTextView.getText() : null);
    }

    public final void Xa() {
        c.c.a.n.p.e eVar = new c.c.a.n.p.e(this);
        f fVar = new f(this);
        int integer = S().getInteger(R.integer.privacy_login_count);
        int length = S().getString(R.string.privacy_login_prefix).length();
        int integer2 = S().getInteger(R.integer.term_login_count);
        int length2 = S().getString(R.string.term_login_prefix).length();
        Pair pair = new Pair(Integer.valueOf(length), Integer.valueOf(length + integer));
        Pair pair2 = new Pair(Integer.valueOf(length2), Integer.valueOf(length2 + integer2));
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.privacyAndTerms);
        j.a((Object) appCompatTextView, "privacyAndTerms");
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.privacyAndTerms);
        j.a((Object) appCompatTextView2, "privacyAndTerms");
        c.c.a.i.e.a(appCompatTextView, appCompatTextView2.getText().toString(), l.c(pair2, pair), l.c(fVar, eVar));
    }

    public final void Ya() {
        Za();
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(true);
    }

    public final void Za() {
        TextInputLayout textInputLayout = (TextInputLayout) e(e.phoneInputLayout);
        j.a((Object) textInputLayout, "phoneInputLayout");
        textInputLayout.setErrorEnabled(false);
    }

    public final void _a() {
        m mVar = this.la;
        if (mVar != null) {
            if (mVar.g()) {
                View aa = aa();
                if (aa != null) {
                    c.c.a.d.b.l.a(aa);
                }
                a.C0076a aVar = c.c.a.d.f.a.a.a.sa;
                String b2 = b((int) R.string.already_logged_in);
                j.a((Object) b2, "getString(R.string.already_logged_in)");
                c.c.a.d.f.a.a.a a2 = aVar.a(R.drawable.ic_success, b2, b((int) R.string.commit), "");
                a2.a(new g(this));
                C0290n D = D();
                j.a((Object) D, "childFragmentManager");
                a2.a(D);
            }
            C0285i Ga = Ga();
            j.a((Object) Ga, "requireActivity()");
            OnBackPressedDispatcher c2 = Ga.c();
            j.a((Object) c2, "requireActivity().onBackPressedDispatcher");
            b.a.f.a(c2, ba(), false, new RegisterFragment$initUi$2(this), 2, null);
            ab();
            Ua();
            ((LoadingButton) e(e.proceedBtn)).setOnClickListener(new i(this));
            if (C0675b.f6729a[Va().ordinal()] != 1) {
                ((AppCompatImageView) e(e.topImageView)).setImageResource(R.drawable.bazaar_logo_with_text);
                AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.messageTextView);
                j.a((Object) appCompatTextView, "messageTextView");
                c.c.a.d.b.l.a(appCompatTextView);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.loginWithEmailButton);
                c.c.a.d.b.l.c(appCompatTextView2);
                appCompatTextView2.setOnClickListener(new h(this));
                return;
            }
            ((AppCompatImageView) e(e.topImageView)).setImageResource(R.drawable.ic_plus_phone);
            AppCompatTextView appCompatTextView3 = (AppCompatTextView) e(e.titleTextView);
            j.a((Object) appCompatTextView3, "titleTextView");
            c.c.a.d.b.l.a(appCompatTextView3);
            AppCompatTextView appCompatTextView4 = (AppCompatTextView) e(e.messageTextView);
            j.a((Object) appCompatTextView4, "messageTextView");
            c.c.a.d.b.l.c(appCompatTextView4);
            AppCompatTextView appCompatTextView5 = (AppCompatTextView) e(e.loginWithEmailButton);
            j.a((Object) appCompatTextView5, "loginWithEmailButton");
            c.c.a.d.b.l.a(appCompatTextView5);
            return;
        }
        j.c("viewModel");
        throw null;
    }

    public final void ab() {
        String str;
        List<String> a2 = c.c.a.e.d.m.a.c.f5244c.a();
        k kVar = this.ja;
        if (kVar == null) {
            j.c("args");
            throw null;
        } else if (a2.contains(kVar.a())) {
            Group group = (Group) e(e.dealerInfoGroup);
            j.a((Object) group, "dealerInfoGroup");
            c.c.a.d.b.l.a(group);
            AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.titleTextView);
            j.a((Object) appCompatTextView, "titleTextView");
            c.c.a.d.b.l.c(appCompatTextView);
        } else if (Va() == LoginType.MERGE_ACCOUNT) {
            Group group2 = (Group) e(e.dealerInfoGroup);
            j.a((Object) group2, "dealerInfoGroup");
            c.c.a.d.b.l.a(group2);
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.titleTextView);
            j.a((Object) appCompatTextView2, "titleTextView");
            c.c.a.d.b.l.a(appCompatTextView2);
        } else {
            a.C0074a aVar = c.c.a.d.a.a.f4744b;
            Context Ha = Ha();
            j.a((Object) Ha, "requireContext()");
            Locale n = aVar.a(Ha).n();
            c.c.a.c.h.e eVar = c.c.a.c.h.e.f4731a;
            Context Ha2 = Ha();
            j.a((Object) Ha2, "requireContext()");
            k kVar2 = this.ja;
            if (kVar2 != null) {
                Drawable d2 = eVar.d(Ha2, kVar2.a());
                c.c.a.c.h.e eVar2 = c.c.a.c.h.e.f4731a;
                Context Ha3 = Ha();
                j.a((Object) Ha3, "requireContext()");
                k kVar3 = this.ja;
                if (kVar3 != null) {
                    String a3 = eVar2.a(Ha3, kVar3.a(), n);
                    if (d2 == null || a3 == null) {
                        Group group3 = (Group) e(e.dealerInfoGroup);
                        j.a((Object) group3, "dealerInfoGroup");
                        c.c.a.d.b.l.a(group3);
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) e(e.titleTextView);
                        j.a((Object) appCompatTextView3, "titleTextView");
                        c.c.a.d.b.l.c(appCompatTextView3);
                    } else {
                        ((AppCompatImageView) e(e.appIconImageView)).setImageBitmap(b.i.c.a.b.a(d2, 0, 0, null, 7, null));
                        LocalAwareTextView localAwareTextView = (LocalAwareTextView) e(e.appNameTextView);
                        j.a((Object) localAwareTextView, "appNameTextView");
                        localAwareTextView.setText(a3);
                        LocalAwareTextView localAwareTextView2 = (LocalAwareTextView) e(e.appSubTitleTextView);
                        j.a((Object) localAwareTextView2, "appSubTitleTextView");
                        int i2 = C0675b.f6730b[Va().ordinal()];
                        if (i2 == 1) {
                            str = S().getString(R.string.login_for_iap_, new Object[]{a3});
                        } else if (i2 != 2) {
                            str = "";
                        } else {
                            str = S().getString(R.string.login_for_review, new Object[]{a3});
                        }
                        localAwareTextView2.setText(str);
                        Group group4 = (Group) e(e.dealerInfoGroup);
                        j.a((Object) group4, "dealerInfoGroup");
                        c.c.a.d.b.l.c(group4);
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) e(e.titleTextView);
                        j.a((Object) appCompatTextView4, "titleTextView");
                        c.c.a.d.b.l.a(appCompatTextView4);
                    }
                    return;
                }
                j.c("args");
                throw null;
            }
            j.c("args");
            throw null;
        }
    }

    public final void b(long j2) {
        this.ma.a(this, ia[1], Long.valueOf(j2));
    }

    public final boolean bb() {
        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = (AppCompatAutoCompleteTextView) e(e.phoneEditText);
        j.a((Object) appCompatAutoCompleteTextView, "phoneEditText");
        String obj = appCompatAutoCompleteTextView.getText().toString();
        b.a(this, new ProceedRegisterClick(obj, c.c.a.c.b.i.e(obj)), null, null, 6, null);
        if (!c.c.a.c.b.i.e(obj)) {
            return false;
        }
        m mVar = this.la;
        if (mVar != null) {
            mVar.a(obj);
            return true;
        }
        j.c("viewModel");
        throw null;
    }

    public final void cb() {
        String b2 = b((int) R.string.privacy_and_terms_login);
        j.a((Object) b2, "getString(R.string.privacy_and_terms_login)");
        ((AppCompatTextView) e(e.privacyAndTerms)).setText(c.c.a.c.b.i.a(b2));
        Xa();
    }

    public View e(int i2) {
        if (this.oa == null) {
            this.oa = new HashMap();
        }
        View view = (View) this.oa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.oa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void ta() {
        super.ta();
        cb();
    }

    public RegisterScreen Sa() {
        return new RegisterScreen();
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        k.a aVar = k.f6739a;
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
        return layoutInflater.inflate(R.layout.fragment_register, viewGroup, false);
    }

    public final void c(String str) {
        b.a(this, new ErrorHappenedEvent(str), null, null, 6, null);
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        TextInputLayout textInputLayout = (TextInputLayout) e(e.phoneInputLayout);
        j.a((Object) textInputLayout, "phoneInputLayout");
        textInputLayout.setErrorEnabled(true);
        TextInputLayout textInputLayout2 = (TextInputLayout) e(e.phoneInputLayout);
        j.a((Object) textInputLayout2, "phoneInputLayout");
        textInputLayout2.setError(str);
    }

    public void a(Context context) {
        j.b(context, "context");
        super.a(context);
        if (!(context instanceof C0674a)) {
            context = null;
        }
        C0674a aVar = (C0674a) context;
        if (aVar != null) {
            this.na = aVar;
            return;
        }
        throw new RuntimeException("this activity must implement FinishLoginCallBack");
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E a2 = G.a((Fragment) this, Ra()).a(m.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        m mVar = (m) a2;
        h.a(this, mVar.e(), new RegisterFragment$onViewCreated$1$1(this));
        this.la = mVar;
        m mVar2 = this.la;
        if (mVar2 != null) {
            mVar2.f().a(ba(), new j(this));
            m mVar3 = this.la;
            if (mVar3 != null) {
                mVar3.h();
                _a();
                return;
            }
            j.c("viewModel");
            throw null;
        }
        j.c("viewModel");
        throw null;
    }

    public final void a(List<String> list) {
        AppCompatAutoCompleteTextView appCompatAutoCompleteTextView = (AppCompatAutoCompleteTextView) e(e.phoneEditText);
        if (appCompatAutoCompleteTextView != null) {
            Context Ha = Ha();
            Object[] array = list.toArray(new String[0]);
            if (array != null) {
                appCompatAutoCompleteTextView.setAdapter(new ArrayAdapter(Ha, 17367050, array));
                appCompatAutoCompleteTextView.setThreshold(1);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
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
                if (resource.c() instanceof InvalidPhoneNumberException) {
                    str = b((int) R.string.wrong_phone_number);
                } else {
                    Context Ha = Ha();
                    j.a((Object) Ha, "requireContext()");
                    str = c.c.a.d.b.d.b(Ha, resource.c());
                }
                j.a((Object) str, "if (resource.failure is …re)\n                    }");
                c(str);
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Ya();
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("Illegal State in handleResourceState"));
            }
        }
    }

    public final void a(long j2) {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        Za();
        b(j2);
        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.n.p.l.f6742a.a(Wa(), j2, Va().ordinal()));
    }
}
