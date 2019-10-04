package com.farsitel.bazaar.ui.login;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import c.c.a.d.b.l;
import c.c.a.d.d.f;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.p.A;
import c.c.a.n.p.C0674a;
import c.c.a.n.p.a.a.h;
import c.c.a.n.p.p;
import c.c.a.n.p.u;
import c.c.a.n.p.v;
import c.c.a.n.p.w;
import c.c.a.n.p.y;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.ErrorHappenedEvent;
import com.farsitel.bazaar.analytics.model.what.ResendOtpClick;
import com.farsitel.bazaar.analytics.model.what.StartCountDownTimerEvent;
import com.farsitel.bazaar.analytics.model.what.SucceedEvent;
import com.farsitel.bazaar.analytics.model.where.VerifySmsCodeScreen;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.widget.LoadingButton;
import com.google.android.material.textfield.TextInputLayout;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.g.c;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: VerifyOtpFragment.kt */
public final class VerifyOtpFragment extends b {
    public static final /* synthetic */ i[] ia;
    public static final a ja = new a(null);
    public A ka;
    public String la;
    public final c ma = h.g.a.f14577a.a();
    public CountDownTimer na;
    public C0674a oa;
    public f pa;
    public y qa;
    public final h.c ra = d.a(new VerifyOtpFragment$loginType$2(this));
    public HashMap sa;

    /* compiled from: VerifyOtpFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(VerifyOtpFragment.class), "waitingTime", "getWaitingTime()J");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(VerifyOtpFragment.class), "loginType", "getLoginType()Lcom/farsitel/bazaar/common/model/login/LoginType;");
        k.a((PropertyReference1) propertyReference1Impl);
        ia = new i[]{mutablePropertyReference1Impl, propertyReference1Impl};
    }

    public static final /* synthetic */ y c(VerifyOtpFragment verifyOtpFragment) {
        y yVar = verifyOtpFragment.qa;
        if (yVar != null) {
            return yVar;
        }
        j.c("fragmentArgs");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.sa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        if (ea()) {
            SpannableString spannableString = new SpannableString(S().getString(R.string.resend_verification_sms));
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(b.i.b.a.a(Ha(), (int) R.color.colorAccent)), 0, spannableString.length(), 33);
            AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.resendCodeButton);
            l.c(appCompatTextView);
            appCompatTextView.setEnabled(true);
            appCompatTextView.setText(spannableString);
        }
    }

    public final LoginType Va() {
        h.c cVar = this.ra;
        i iVar = ia[1];
        return (LoginType) cVar.getValue();
    }

    public final long Wa() {
        return ((Number) this.ma.a(this, ia[0])).longValue();
    }

    public final void Xa() {
        b.a(this, new ResendOtpClick(), null, null, 6, null);
        A a2 = this.ka;
        if (a2 != null) {
            String str = this.la;
            if (str != null) {
                a2.a(str);
            } else {
                j.c("phoneNumber");
                throw null;
            }
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public final void Ya() {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(true);
    }

    public final void Za() {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        b.a(this, new SucceedEvent(), null, null, 6, null);
        if (p.f6753a[Va().ordinal()] != 1) {
            C0674a aVar = this.oa;
            if (aVar != null) {
                aVar.m();
                return;
            }
            return;
        }
        ab();
    }

    public final void _a() {
        TextInputLayout textInputLayout = (TextInputLayout) e(e.verificationCodeInput);
        if (textInputLayout != null) {
            textInputLayout.setErrorEnabled(false);
        }
    }

    public final void ab() {
        A a2 = this.ka;
        if (a2 != null) {
            h hVar = new h(a2.e(), new v(this));
            C0290n D = D();
            j.a((Object) D, "childFragmentManager");
            hVar.a(D);
            return;
        }
        j.c("viewModel");
        throw null;
    }

    public final void b(long j2) {
        this.ma.a(this, ia[0], Long.valueOf(j2));
    }

    public final void bb() {
        b.a(this, new StartCountDownTimerEvent(Wa()), null, null, 6, null);
        w wVar = new w(this, Wa() * ((long) AnswersRetryFilesSender.BACKOFF_MS), 1000);
        this.na = wVar;
        CountDownTimer countDownTimer = this.na;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
    }

    public final void cb() {
        C0285i x = x();
        if (x != null) {
            c.e.a.b.b.a.a.c a2 = c.e.a.b.b.a.a.a.a(x);
            if (a2 != null) {
                a2.d().a((c.e.a.b.j.d) x.f6761a);
            }
        }
    }

    public View e(int i2) {
        if (this.sa == null) {
            this.sa = new HashMap();
        }
        View view = (View) this.sa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.sa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0024, code lost:
        if (r7 != null) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void k(boolean r7) {
        /*
            r6 = this;
            com.farsitel.bazaar.analytics.model.what.VerifyOtpClick r1 = new com.farsitel.bazaar.analytics.model.what.VerifyOtpClick
            r1.<init>(r7)
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            r0 = r6
            c.c.a.n.c.a.b.a(r0, r1, r2, r3, r4, r5)
            int r7 = c.c.a.e.verificationCodeEditText
            android.view.View r7 = r6.e((int) r7)
            androidx.appcompat.widget.AppCompatEditText r7 = (androidx.appcompat.widget.AppCompatEditText) r7
            java.lang.String r0 = "verificationCodeEditText"
            h.f.b.j.a((java.lang.Object) r7, (java.lang.String) r0)
            android.text.Editable r7 = r7.getText()
            if (r7 == 0) goto L_0x0027
            java.lang.String r7 = r7.toString()
            if (r7 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            java.lang.String r7 = ""
        L_0x0029:
            c.c.a.n.p.A r0 = r6.ka
            r1 = 0
            if (r0 == 0) goto L_0x0040
            java.lang.String r2 = r6.la
            if (r2 == 0) goto L_0x003a
            com.farsitel.bazaar.common.model.login.LoginType r1 = r6.Va()
            r0.a(r2, r7, r1)
            return
        L_0x003a:
            java.lang.String r7 = "phoneNumber"
            h.f.b.j.c(r7)
            throw r1
        L_0x0040:
            java.lang.String r7 = "viewModel"
            h.f.b.j.c(r7)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.login.VerifyOtpFragment.k(boolean):void");
    }

    public void qa() {
        super.qa();
        CountDownTimer countDownTimer = this.na;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        La();
    }

    public void ra() {
        super.ra();
        this.oa = null;
    }

    public VerifySmsCodeScreen Sa() {
        return new VerifySmsCodeScreen();
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        y.a aVar = y.f6762a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.qa = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public final void d(String str) {
        ((AppCompatEditText) e(e.verificationCodeEditText)).setText(str);
        k(true);
    }

    public final void e(String str) {
        b.a(this, new ErrorHappenedEvent(str), null, null, 6, null);
        TextInputLayout textInputLayout = (TextInputLayout) e(e.verificationCodeInput);
        if (textInputLayout != null) {
            textInputLayout.setErrorEnabled(true);
        }
        TextInputLayout textInputLayout2 = (TextInputLayout) e(e.verificationCodeInput);
        if (textInputLayout2 != null) {
            textInputLayout2.setError(str);
        }
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(A.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        A a3 = (A) a2;
        c.c.a.d.b.h.a(this, a3.g(), new VerifyOtpFragment$onActivityCreated$1$1(this));
        c.c.a.d.b.h.a(this, a3.f(), new VerifyOtpFragment$onActivityCreated$1$2(this));
        this.ka = a3;
        f fVar = this.pa;
        if (fVar != null) {
            fVar.a().a(ba(), new q(this));
        } else {
            j.c("otpCodeManager");
            throw null;
        }
    }

    public final void c(String str) {
        ((LoadingButton) e(e.proceedBtn)).setShowLoading(false);
        e(str);
    }

    public void a(Context context) {
        j.b(context, "context");
        super.a(context);
        if (!(context instanceof C0674a)) {
            context = null;
        }
        C0674a aVar = (C0674a) context;
        if (aVar != null) {
            this.oa = aVar;
            return;
        }
        throw new RuntimeException("this activity must implement FinishLoginCallBack");
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_verify_otp, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        OnBackPressedDispatcher c2 = Ga.c();
        j.a((Object) c2, "requireActivity().onBackPressedDispatcher");
        b.a.f.a(c2, ba(), false, new VerifyOtpFragment$onViewCreated$1(this), 2, null);
        y yVar = this.qa;
        if (yVar != null) {
            this.la = yVar.b();
            y yVar2 = this.qa;
            if (yVar2 != null) {
                a(yVar2.c());
                AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.verificationMessageTextView);
                j.a((Object) appCompatTextView, "verificationMessageTextView");
                Object[] objArr = new Object[1];
                String str = this.la;
                if (str != null) {
                    Context Ha = Ha();
                    j.a((Object) Ha, "requireContext()");
                    objArr[0] = c.c.a.c.b.i.a(str, Ha);
                    appCompatTextView.setText(a((int) R.string.waiting_for_verification_sms, objArr));
                    ((AppCompatTextView) e(e.resendCodeButton)).setOnClickListener(new r(this));
                    ((LoadingButton) e(e.proceedBtn)).setOnClickListener(new s(this));
                    LoadingButton loadingButton = (LoadingButton) e(e.proceedBtn);
                    j.a((Object) loadingButton, "proceedBtn");
                    loadingButton.setEnabled(false);
                    ((AppCompatEditText) e(e.verificationCodeEditText)).setOnEditorActionListener(new t(this));
                    ((AppCompatEditText) e(e.verificationCodeEditText)).addTextChangedListener(new u(this));
                    cb();
                    return;
                }
                j.c("phoneNumber");
                throw null;
            }
            j.c("fragmentArgs");
            throw null;
        }
        j.c("fragmentArgs");
        throw null;
    }

    public final void b(Resource resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Za();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                Context Ha = Ha();
                j.a((Object) Ha, "requireContext()");
                c(c.c.a.d.b.d.b(Ha, resource.c()));
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Ya();
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
        bb();
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
                e(c.c.a.d.b.d.b(Ha, resource.c()));
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.resendCodeButton);
                j.a((Object) appCompatTextView2, "resendCodeButton");
                l.b(appCompatTextView2);
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("illegal state in handleResendSmsState"));
            }
        }
    }
}
