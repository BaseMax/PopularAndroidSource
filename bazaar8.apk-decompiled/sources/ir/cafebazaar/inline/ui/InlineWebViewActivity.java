package ir.cafebazaar.inline.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.h;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;

public class InlineWebViewActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public ProgressBar f14963a;

    /* renamed from: b  reason: collision with root package name */
    public WebView f14964b;

    /* renamed from: c  reason: collision with root package name */
    public AtomicInteger f14965c = new AtomicInteger(0);

    private static class a implements h {

        /* renamed from: a  reason: collision with root package name */
        public WeakReference<InlineWebViewActivity> f14966a;

        public a(InlineWebViewActivity inlineWebViewActivity) {
            this.f14966a = new WeakReference<>(inlineWebViewActivity);
        }

        @JavascriptInterface
        public void callback(String str) {
            Intent intent = new Intent();
            intent.putExtra("extra_redirect_path", str);
            ((InlineWebViewActivity) this.f14966a.get()).setResult(-1, intent);
            ((InlineWebViewActivity) this.f14966a.get()).finish();
        }
    }

    private static class b extends WebChromeClient {

        /* renamed from: a  reason: collision with root package name */
        public WeakReference<FrameLayout> f14967a;

        /* renamed from: b  reason: collision with root package name */
        public WeakReference<ProgressBar> f14968b;

        public b(FrameLayout frameLayout, ProgressBar progressBar) {
            this.f14967a = new WeakReference<>(frameLayout);
            this.f14968b = new WeakReference<>(progressBar);
        }

        public void onProgressChanged(WebView webView, int i2) {
            if (!(this.f14967a.get() == null || this.f14968b.get() == null)) {
                ((FrameLayout) this.f14967a.get()).setVisibility(0);
                ((ProgressBar) this.f14968b.get()).setProgress(i2);
                if (i2 == 100) {
                    ((FrameLayout) this.f14967a.get()).setVisibility(8);
                }
            }
            super.onProgressChanged(webView, i2);
        }
    }

    private static class c extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        public boolean f14969a;

        /* renamed from: b  reason: collision with root package name */
        public WeakReference<FrameLayout> f14970b;

        /* renamed from: c  reason: collision with root package name */
        public WeakReference<AtomicInteger> f14971c;

        /* renamed from: d  reason: collision with root package name */
        public WeakReference<InlineWebViewActivity> f14972d;

        public c(FrameLayout frameLayout, AtomicInteger atomicInteger, InlineWebViewActivity inlineWebViewActivity) {
            this.f14970b = new WeakReference<>(frameLayout);
            this.f14971c = new WeakReference<>(atomicInteger);
            this.f14972d = new WeakReference<>(inlineWebViewActivity);
        }

        public final void a(boolean z) {
            if (this.f14970b.get() == null) {
                return;
            }
            if (z) {
                ((FrameLayout) this.f14970b.get()).setVisibility(0);
            } else {
                ((FrameLayout) this.f14970b.get()).setVisibility(8);
            }
        }

        public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            super.doUpdateVisitedHistory(webView, str, z);
            if (!z && this.f14971c.get() != null) {
                ((AtomicInteger) this.f14971c.get()).incrementAndGet();
            }
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            this.f14969a = true;
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            this.f14969a = false;
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            a(true);
            if (this.f14969a && this.f14971c.get() != null) {
                ((AtomicInteger) this.f14971c.get()).set(0);
            }
            if (str.startsWith("http") || str.startsWith("https")) {
                webView.loadUrl(str);
                return false;
            }
            if (this.f14972d.get() != null) {
                Uri parse = Uri.parse(str);
                PackageManager packageManager = ((InlineWebViewActivity) this.f14972d.get()).getPackageManager();
                Intent data = new Intent("android.intent.action.VIEW").setData(parse);
                if (data.resolveActivity(packageManager) != null) {
                    ((InlineWebViewActivity) this.f14972d.get()).startActivity(data);
                    a(false);
                    return true;
                }
            }
            a(false);
            return true;
        }
    }

    public static Intent a(g gVar, String str, byte[] bArr) {
        Intent intent = new Intent(gVar.f(), InlineWebViewActivity.class);
        intent.putExtra("extra_url", str);
        intent.putExtra("extra_post_data", bArr);
        intent.putExtra("extra_theme", gVar.g());
        return intent;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a()) {
            setContentView(f.inline_activity_web);
            this.f14964b = (WebView) findViewById(e.webview);
            this.f14963a = (ProgressBar) findViewById(e.progressBar);
            FrameLayout frameLayout = (FrameLayout) findViewById(e.progressContainer);
            a((Theme) getIntent().getParcelableExtra("extra_theme"));
            String stringExtra = getIntent().getStringExtra("extra_url");
            byte[] byteArrayExtra = getIntent().getByteArrayExtra("extra_post_data");
            this.f14964b.setWebChromeClient(new b(frameLayout, this.f14963a));
            this.f14964b.setWebViewClient(new c(frameLayout, this.f14965c, this));
            this.f14964b.addJavascriptInterface(new a(this), "Android");
            this.f14964b.getSettings().setJavaScriptEnabled(true);
            this.f14964b.getSettings().setDomStorageEnabled(true);
            this.f14964b.postUrl(stringExtra, byteArrayExtra);
            return;
        }
        setContentView(f.inline_webview_missing);
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && this.f14964b.canGoBack()) {
            if (this.f14965c.get() > 0) {
                while (this.f14965c.get() > 0) {
                    this.f14964b.goBack();
                    this.f14965c.decrementAndGet();
                }
                this.f14965c.set(0);
            } else {
                this.f14964b.goBack();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public final boolean a() {
        try {
            new WebView(getApplicationContext());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void a(Theme theme) {
        LayerDrawable layerDrawable = (LayerDrawable) this.f14963a.getProgressDrawable();
        layerDrawable.getDrawable(0).setColorFilter(theme.h(), PorterDuff.Mode.SRC);
        layerDrawable.getDrawable(1).setColorFilter(theme.h(), PorterDuff.Mode.SRC);
    }
}
