package com.farsitel.bazaar.ui.login.merge.account;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import b.w.b.b;
import c.c.a.d.b.d;
import c.c.a.d.b.h;
import c.c.a.d.b.l;
import c.c.a.d.f.i;
import c.c.a.e;
import c.c.a.n.p.a.a.m;
import c.c.a.n.p.a.a.n;
import c.c.a.n.p.a.a.o;
import c.c.a.n.p.a.a.p;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.widget.LoadingButton;
import com.google.android.material.textfield.TextInputLayout;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.g.c;
import java.util.HashMap;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: VerifyEmailOtpFragment.kt */
public final class VerifyEmailOtpFragment extends i {
    public static final /* synthetic */ h.i.i[] ga;
    public static final a ha = new a(null);
    public p ia;
    public String ja;
    public final c ka = h.g.a.f14577a.a();
    public CountDownTimer la;
    public n ma;
    public HashMap na;

    /* compiled from: VerifyEmailOtpFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(VerifyEmailOtpFragment.class), "waitingTime", "getWaitingTime()J");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        ga = new h.i.i[]{mutablePropertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.na;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Sa() {
        if (ea()) {
            SpannableString spannableString = new SpannableString(S().getString(R.string.resend_verification_email));
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(b.i.b.a.a(Ha(), (int) R.color.colorAccent)), 0, spannableString.length(), 33);
            AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.resendCodeButton);
            if (appCompatTextView != null) {
                l.c(appCompatTextView);
                appCompatTextView.setEnabled(true);
                appCompatTextView.setText(spannableString);
            }
        }
    }

    public final long Ta() {
        return ((Number) this.ka.a(this, ga[0])).longValue();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0017, code lost:
        if (r0 != null) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void Ua() {
        /*
            r4 = this;
            int r0 = c.c.a.e.verificationCodeEditText
            android.view.View r0 = r4.e(r0)
            androidx.appcompat.widget.AppCompatEditText r0 = (androidx.appcompat.widget.AppCompatEditText) r0
            java.lang.String r1 = "verificationCodeEditText"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            android.text.Editable r0 = r0.getText()
            if (r0 == 0) goto L_0x001a
            java.lang.String r0 = r0.toString()
            if (r0 == 0) goto L_0x001a
            goto L_0x001c
        L_0x001a:
            java.lang.String r0 = ""
        L_0x001c:
            c.c.a.n.p.a.a.p r1 = r4.ia
            r2 = 0
            if (r1 == 0) goto L_0x002f
            java.lang.String r3 = r4.ja
            if (r3 == 0) goto L_0x0029
            r1.a((java.lang.String) r3, (java.lang.String) r0)
            return
        L_0x0029:
            java.lang.String r0 = "emailAddress"
            h.f.b.j.c(r0)
            throw r2
        L_0x002f:
            java.lang.String r0 = "viewModel"
            h.f.b.j.c(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpFragment.Ua():void");
    }

    public final void Va() {
        p pVar = this.ia;
        if (pVar != null) {
            String str = this.ja;
            if (str != null) {
                pVar.a(str);
            } else {
                j.c("emailAddress");
                throw null;
            }
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public final void Wa() {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(true);
    }

    public final void Xa() {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        c.c.a.i.c.a(b.a(this), o.f6722a.a("", LoginType.MERGE_ACCOUNT.ordinal()));
    }

    public final void Ya() {
        TextInputLayout textInputLayout = (TextInputLayout) e(e.verificationCodeInput);
        j.a((Object) textInputLayout, "verificationCodeInput");
        textInputLayout.setErrorEnabled(false);
    }

    public final void Za() {
        m mVar = new m(this, ((long) AnswersRetryFilesSender.BACKOFF_MS) * Ta(), 1000);
        this.la = mVar;
        CountDownTimer countDownTimer = this.la;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public final void b(long j2) {
        this.ka.a(this, ga[0], Long.valueOf(j2));
    }

    public View e(int i2) {
        if (this.na == null) {
            this.na = new HashMap();
        }
        View view = (View) this.na.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.na.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void qa() {
        CountDownTimer countDownTimer = this.la;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.qa();
        La();
    }

    public final void c(String str) {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        d(str);
    }

    public final void d(String str) {
        TextInputLayout textInputLayout = (TextInputLayout) e(e.verificationCodeInput);
        if (textInputLayout != null) {
            textInputLayout.setErrorEnabled(true);
        }
        TextInputLayout textInputLayout2 = (TextInputLayout) e(e.verificationCodeInput);
        if (textInputLayout2 != null) {
            textInputLayout2.setError(str);
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_verify_otp, viewGroup, false);
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(p.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        p pVar = (p) a2;
        h.a(this, pVar.f(), new VerifyEmailOtpFragment$onActivityCreated$1$1(this));
        h.a(this, pVar.e(), new VerifyEmailOtpFragment$onActivityCreated$1$2(this));
        this.ia = pVar;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        n.a aVar = n.f6719a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ma = aVar.a(C);
            n nVar = this.ma;
            if (nVar != null) {
                this.ja = nVar.a();
                n nVar2 = this.ma;
                if (nVar2 != null) {
                    a(nVar2.b());
                    AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.verificationMessageTextView);
                    j.a((Object) appCompatTextView, "verificationMessageTextView");
                    Object[] objArr = new Object[1];
                    String str = this.ja;
                    if (str != null) {
                        objArr[0] = str;
                        appCompatTextView.setText(a((int) R.string.waiting_for_verification_email, objArr));
                        ((AppCompatTextView) e(e.resendCodeButton)).setOnClickListener(new i(this));
                        ((LoadingButton) e(e.proceedBtn)).setOnClickListener(new j(this));
                        LoadingButton loadingButton = (LoadingButton) e(e.proceedBtn);
                        j.a((Object) loadingButton, "proceedBtn");
                        loadingButton.setEnabled(false);
                        ((AppCompatEditText) e(e.verificationCodeEditText)).setOnEditorActionListener(new k(this));
                        ((AppCompatEditText) e(e.verificationCodeEditText)).addTextChangedListener(new c.c.a.n.p.a.a.l(this));
                        return;
                    }
                    j.c("emailAddress");
                    throw null;
                }
                j.c("fragmentArgs");
                throw null;
            }
            j.c("fragmentArgs");
            throw null;
        }
        j.a();
        throw null;
    }

    public final void b(Resource resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Xa();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                Context Ha = Ha();
                j.a((Object) Ha, "requireContext()");
                c(d.b(Ha, resource.c()));
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Wa();
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("illegal state in handleVerifyCodeState"));
            }
        }
    }

    public final void a(long j2) {
        b(Math.max(j2, 5));
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.resendCodeButton);
        j.a((Object) appCompatTextView, "resendCodeButton");
        appCompatTextView.setEnabled(false);
        Za();
    }

    public final void a(Resource<Long> resource) {
        if (resource != null) {
            AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.resendCodeButton);
            j.a((Object) appCompatTextView, "resendCodeButton");
            l.c(appCompatTextView);
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
                a(5);
                Context Ha = Ha();
                j.a((Object) Ha, "requireContext()");
                d(d.b(Ha, resource.c()));
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.resendCodeButton);
                j.a((Object) appCompatTextView2, "resendCodeButton");
                l.b(appCompatTextView2);
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("illegal state in handleResendEmailState"));
            }
        }
    }
}
