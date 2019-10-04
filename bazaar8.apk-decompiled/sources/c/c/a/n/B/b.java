package c.c.a.n.B;

import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.crashlytics.android.core.CrashlyticsController;
import h.f.b.j;
import h.k.m;

/* compiled from: WebViewClient.kt */
public class b extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    public final a f6169a;

    public b(a aVar) {
        j.b(aVar, "callback");
        this.f6169a = aVar;
    }

    public boolean a(String str) {
        j.b(str, "url");
        if (!m.b(str, "tel:", false, 2, null) && !m.b(str, "sms:", false, 2, null) && !m.b(str, "smsto:", false, 2, null) && !m.b(str, "emailto:", false, 2, null)) {
            return false;
        }
        this.f6169a.a(str);
        return true;
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f6169a.a(webView, str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f6169a.a();
    }

    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        j.b(str, "description");
        j.b(str2, "failingUrl");
        super.onReceivedError(webView, i2, str, str2);
        this.f6169a.a(str2, i2, str);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        j.b(webView, "view");
        j.b(str, "url");
        return a(str);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        j.b(webView, "view");
        j.b(webResourceRequest, "request");
        String uri = webResourceRequest.getUrl().toString();
        j.a((Object) uri, "request.url.toString()");
        return a(uri);
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        j.b(webResourceRequest, "request");
        j.b(webResourceError, CrashlyticsController.EVENT_TYPE_LOGGED);
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        a aVar = this.f6169a;
        String uri = webResourceRequest.getUrl().toString();
        j.a((Object) uri, "request.url.toString()");
        aVar.a(uri, webResourceError.getErrorCode(), webResourceError.getDescription().toString());
    }
}
