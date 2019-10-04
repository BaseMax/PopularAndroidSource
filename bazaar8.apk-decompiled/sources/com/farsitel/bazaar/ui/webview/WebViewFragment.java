package com.farsitel.bazaar.ui.webview;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import b.o.a.C0285i;
import b.w.C0313j;
import c.c.a.e;
import c.c.a.n.B.c;
import c.c.a.n.B.d;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.WebViewScreen;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: WebViewFragment.kt */
public class WebViewFragment extends b {
    public static final a ia = new a(null);
    public d ja;
    public final c.c.a.n.B.a ka = new c(this);
    public HashMap la;

    /* compiled from: WebViewFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.la;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "WrongConstant"})
    public final void Ua() {
        WebView webView = (WebView) e(e.webview);
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString(settings.getUserAgentString() + " bazaar-wv");
        settings.setJavaScriptEnabled(Xa());
        d dVar = this.ja;
        if (dVar != null) {
            settings.setCacheMode(dVar.a());
            webView.setWebViewClient(_a());
            return;
        }
        j.c("webViewFragmentArgs");
        throw null;
    }

    public final c.c.a.n.B.a Va() {
        return this.ka;
    }

    public final void Wa() {
        if (J() == null) {
            c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
            StringBuilder sb = new StringBuilder();
            sb.append("invalid state in webView and activity is null = ");
            sb.append(x() == null);
            aVar.a((Throwable) new IllegalStateException(sb.toString()));
            C0285i x = x();
            if (x != null) {
                x.finish();
            }
        } else if (ea()) {
            d dVar = this.ja;
            if (dVar != null) {
                int c2 = dVar.c();
                if (c2 == -1) {
                    b.w.b.b.a(this).i();
                    return;
                }
                C0313j a2 = b.w.b.b.a(this);
                d dVar2 = this.ja;
                if (dVar2 != null) {
                    c.c.a.i.c.a(a2, c2, dVar2.b());
                } else {
                    j.c("webViewFragmentArgs");
                    throw null;
                }
            } else {
                j.c("webViewFragmentArgs");
                throw null;
            }
        }
    }

    public boolean Xa() {
        return true;
    }

    public final void Ya() {
        WebView webView = (WebView) e(e.webview);
        if (webView != null) {
            d dVar = this.ja;
            if (dVar != null) {
                webView.loadUrl(dVar.d());
            } else {
                j.c("webViewFragmentArgs");
                throw null;
            }
        }
    }

    public final View Za() {
        c.c.a.c.c.a.f4699b.a(new Throwable("webView is not available"));
        Wa();
        return null;
    }

    public c.c.a.n.B.b _a() {
        return new c.c.a.n.B.b(this.ka);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        try {
            View inflate = layoutInflater.inflate(R.layout.fragment_webview, viewGroup, false);
            if (inflate != null) {
                return inflate;
            }
            j.a();
            throw null;
        } catch (Exception unused) {
            return Za();
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        d.a aVar = d.f6171a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ja = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.la == null) {
            this.la = new HashMap();
        }
        View view = (View) this.la.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.la.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void oa() {
        try {
            WebView webView = (WebView) e(e.webview);
            if (webView != null) {
                webView.setWebViewClient(null);
            }
            WebView webView2 = (WebView) e(e.webview);
            if (webView2 != null) {
                webView2.destroy();
            }
        } catch (Exception unused) {
        }
        super.oa();
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void sa() {
        WebView webView = (WebView) e(e.webview);
        if (webView != null) {
            webView.onPause();
        }
        super.sa();
    }

    public void ta() {
        WebView webView = (WebView) e(e.webview);
        if (webView != null) {
            webView.onResume();
        }
        super.ta();
    }

    public WebViewScreen Sa() {
        d dVar = this.ja;
        if (dVar != null) {
            return new WebViewScreen(dVar.d());
        }
        j.c("webViewFragmentArgs");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        Ua();
        Ya();
    }
}
