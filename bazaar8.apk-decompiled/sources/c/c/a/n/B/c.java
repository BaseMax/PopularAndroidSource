package c.c.a.n.B;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.widget.ProgressBar;
import b.o.a.C0285i;
import c.c.a.c.c.a;
import c.c.a.d.b.l;
import c.c.a.e;
import com.farsitel.bazaar.ui.webview.WebViewFragment;
import h.f.b.j;

/* compiled from: WebViewFragment.kt */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ WebViewFragment f6170a;

    public c(WebViewFragment webViewFragment) {
        this.f6170a = webViewFragment;
    }

    public void a(String str, int i2, String str2) {
        j.b(str, "url");
        j.b(str2, "errorDescription");
        a aVar = a.f4699b;
        aVar.b(new Throwable("onReceived error on webView " + str + ", " + i2 + ", " + str2));
        this.f6170a.Wa();
    }

    public void a(String str) {
        j.b(str, "url");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        C0285i x = this.f6170a.x();
        if (x == null) {
            return;
        }
        if (intent.resolveActivity(x.getPackageManager()) != null) {
            x.startActivity(intent);
        } else {
            this.f6170a.Wa();
        }
    }

    public void a() {
        ProgressBar progressBar = (ProgressBar) this.f6170a.e(e.webviewProgressBar);
        if (progressBar != null) {
            l.c(progressBar);
        }
    }

    public void a(WebView webView, String str) {
        ProgressBar progressBar = (ProgressBar) this.f6170a.e(e.webviewProgressBar);
        if (progressBar != null) {
            l.a(progressBar);
        }
    }
}
