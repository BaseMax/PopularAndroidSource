package com.farsitel.bazaar.ui.payment.web;

import android.net.Uri;
import android.net.http.SslCertificate;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.AppCompatImageView;
import b.o.a.C0285i;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import c.c.a.d.f.a.a.a;
import c.c.a.n.s.h.a;
import c.c.a.n.s.h.d;
import c.c.a.n.s.h.e;
import c.c.a.n.s.h.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.WebViewScreen;
import com.farsitel.bazaar.ui.webview.WebViewFragment;
import h.f.b.j;
import h.k.n;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: PaymentWebViewFragment.kt */
public final class PaymentWebViewFragment extends WebViewFragment {
    public f ma;
    public e na;
    public final d oa = new d(this);
    public HashMap pa;

    public static final /* synthetic */ f b(PaymentWebViewFragment paymentWebViewFragment) {
        f fVar = paymentWebViewFragment.ma;
        if (fVar != null) {
            return fVar;
        }
        j.c("viewModel");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.pa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public boolean Xa() {
        return true;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        e.a aVar = e.f6925a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.na = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.pa == null) {
            this.pa = new HashMap();
        }
        View view = (View) this.pa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.pa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final void f(int i2) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) e(c.c.a.e.ivUrlLock);
        if (appCompatImageView != null) {
            appCompatImageView.setVisibility(i2);
        }
        TextView textView = (TextView) e(c.c.a.e.tvUrlScheme);
        if (textView != null) {
            textView.setVisibility(i2);
        }
        TextView textView2 = (TextView) e(c.c.a.e.tvUrlImportant);
        if (textView2 != null) {
            textView2.setVisibility(i2);
        }
        TextView textView3 = (TextView) e(c.c.a.e.tvUrlNotImportant);
        if (textView3 != null) {
            textView3.setVisibility(i2);
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public WebViewScreen Sa() {
        e eVar = this.na;
        if (eVar != null) {
            return new WebViewScreen(eVar.b());
        }
        j.c("paymentWebViewFragmentArgs");
        throw null;
    }

    public a _a() {
        e eVar = this.na;
        if (eVar != null) {
            return new a(eVar.a(), this.oa);
        }
        j.c("paymentWebViewFragmentArgs");
        throw null;
    }

    public final void b(SslCertificate sslCertificate) {
        a.C0076a aVar = c.c.a.d.f.a.a.a.sa;
        String sslCertificate2 = sslCertificate.toString();
        j.a((Object) sslCertificate2, "certificate.toString()");
        c.c.a.d.f.a.a.a a2 = a.C0076a.a(aVar, 0, sslCertificate2, b((int) R.string.commit), null, 9, null);
        C0290n Ia = Ia();
        j.a((Object) Ia, "requireFragmentManager()");
        a2.a(Ia);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        try {
            View inflate = layoutInflater.inflate(R.layout.fragment_payment_webview, viewGroup, false);
            if (inflate != null) {
                return inflate;
            }
            j.a();
            throw null;
        } catch (Exception unused) {
            return Za();
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        E a2 = G.a(Ga, Ra()).a(f.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.ma = (f) a2;
        C0285i Ga2 = Ga();
        j.a((Object) Ga2, "requireActivity()");
        OnBackPressedDispatcher c2 = Ga2.c();
        j.a((Object) c2, "requireActivity().onBackPressedDispatcher");
        b.a.f.a(c2, ba(), false, new PaymentWebViewFragment$onViewCreated$1(this), 2, null);
    }

    public final void a(String str, SslCertificate sslCertificate) {
        Uri parse = Uri.parse(str);
        try {
            j.a((Object) parse, "pageUri");
            String scheme = parse.getScheme();
            if (scheme == null || !n.a((CharSequence) scheme, (CharSequence) "http", false, 2, (Object) null)) {
                f(4);
                return;
            }
            a(sslCertificate);
            f(0);
            TextView textView = (TextView) e(c.c.a.e.tvUrlScheme);
            if (textView != null) {
                textView.setText(a((int) R.string.schema_text, scheme));
            }
            TextView textView2 = (TextView) e(c.c.a.e.tvUrlImportant);
            if (textView2 != null) {
                textView2.setText(parse.getAuthority());
            }
            String path = parse.getPath();
            if (path != null) {
                int a2 = n.a((CharSequence) str, path, 0, false, 6, (Object) null);
                if (a2 > 6 && a2 < str.length()) {
                    TextView textView3 = (TextView) e(c.c.a.e.tvUrlNotImportant);
                    if (textView3 == null) {
                        return;
                    }
                    if (str != null) {
                        String substring = str.substring(a2);
                        j.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                        textView3.setText(substring);
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                return;
            }
            j.a();
            throw null;
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.a((Throwable) e2);
        }
    }

    public final void a(SslCertificate sslCertificate) {
        if (ea()) {
            if (sslCertificate == null) {
                int a2 = b.i.b.a.a(Ha(), (int) R.color.warning);
                AppCompatImageView appCompatImageView = (AppCompatImageView) e(c.c.a.e.ivUrlLock);
                if (appCompatImageView != null) {
                    appCompatImageView.setColorFilter(a2);
                }
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) e(c.c.a.e.ivUrlLock);
                if (appCompatImageView2 != null) {
                    appCompatImageView2.setOnClickListener(null);
                }
                TextView textView = (TextView) e(c.c.a.e.tvUrlScheme);
                if (textView != null) {
                    textView.setTextColor(a2);
                }
                TextView textView2 = (TextView) e(c.c.a.e.tvUrlScheme);
                if (textView2 != null) {
                    textView2.setOnClickListener(null);
                }
            } else {
                int a3 = b.i.b.a.a(Ha(), (int) R.color.green);
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) e(c.c.a.e.ivUrlLock);
                if (appCompatImageView3 != null) {
                    appCompatImageView3.setColorFilter(a3);
                }
                TextView textView3 = (TextView) e(c.c.a.e.tvUrlScheme);
                if (textView3 != null) {
                    textView3.setTextColor(a3);
                }
                c cVar = new c(this, sslCertificate);
                AppCompatImageView appCompatImageView4 = (AppCompatImageView) e(c.c.a.e.ivUrlLock);
                if (appCompatImageView4 != null) {
                    appCompatImageView4.setOnClickListener(cVar);
                }
                TextView textView4 = (TextView) e(c.c.a.e.tvUrlScheme);
                if (textView4 != null) {
                    textView4.setOnClickListener(cVar);
                }
            }
        }
    }
}
