package c.c.a.n.s.h;

import android.webkit.WebView;
import b.w.b.b;
import com.farsitel.bazaar.ui.payment.web.PaymentWebViewFragment;
import h.f.b.j;

/* compiled from: PaymentWebViewFragment.kt */
public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PaymentWebViewFragment f6924a;

    public d(PaymentWebViewFragment paymentWebViewFragment) {
        this.f6924a = paymentWebViewFragment;
    }

    public void a(String str) {
        j.b(str, "url");
        this.f6924a.Va().a(str);
    }

    public void b() {
        PaymentWebViewFragment.b(this.f6924a).e();
        if (this.f6924a.ea()) {
            b.a(this.f6924a).i();
        }
    }

    public void a(String str, int i2, String str2) {
        j.b(str, "url");
        j.b(str2, "errorDescription");
        this.f6924a.Va().a(str, i2, str2);
    }

    public void a() {
        this.f6924a.Va().a();
    }

    public void a(WebView webView, String str) {
        this.f6924a.Va().a(webView, str);
        if (str != null) {
            this.f6924a.a(str, webView != null ? webView.getCertificate() : null);
        }
    }
}
