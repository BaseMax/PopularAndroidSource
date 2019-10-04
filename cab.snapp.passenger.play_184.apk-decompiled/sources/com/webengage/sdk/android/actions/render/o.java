package com.webengage.sdk.android.actions.render;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.webkit.ConsoleMessage;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.webengage.sdk.android.Logger;
import java.lang.ref.WeakReference;

class o {

    /* renamed from: a  reason: collision with root package name */
    WebView f5412a;

    /* renamed from: b  reason: collision with root package name */
    String f5413b;
    String c;
    String d;
    g e;
    WeakReference<Activity> f;
    private String g = "<!DOCTYPE html>\n<html>\n  <head>\n    <meta charset='UTF-8'>\n    <title>Full Page Modal In-App</title>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n  </head>\n  <body style = \"background-color: transparent\">\n      <script type='text/javascript'>\n        \n        var webengage = {};\n\n        webengage.notification = {\n\t       \n         'x' : 1\n        \n        };\n\n        var instance = {\n\n          layoutId : WebEngage.getLayoutId(),\n\n previewJson : true ,          baseURL: \"";
    private String h = "\",\n\n\t        data : JSON.parse(WebEngage.getData()),\n\n\t        click : function (actionId,actionLink,isPrime) {\n\t           WebEngage.onClick(actionId,actionLink,isPrime);\n\t        },\n\n          close : function (){\n             WebEngage.onClose();\n          },\n\n          open : function(){\n             WebEngage.onOpen();\n          },\n\n          error : function(stackTrace){\n             WebEngage.onError(stackTrace);\n          }\n\n        };\n      </script>\n      <script type='text/javascript' src='";
    private String i = "js/notification-prepare.js'></script>\n      <script type='text/javascript'>\n       var notificationInstance = webengage.notification.prepare(instance);\n       notificationInstance.show();\n      </script>\n  </body>\n</html>\n";
    private String j = null;

    class a extends WebChromeClient {
        private a() {
        }

        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return super.onConsoleMessage(consoleMessage);
        }

        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
        }
    }

    class b extends WebViewClient {

        /* renamed from: b  reason: collision with root package name */
        private Context f5416b;

        b(Context context) {
            this.f5416b = context.getApplicationContext();
        }

        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e("Webview", "process gone: " + renderProcessGoneDetail.toString());
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return o.a(str, this.f5416b);
        }
    }

    class c extends WebViewClient {

        /* renamed from: b  reason: collision with root package name */
        private Context f5418b;

        c(Context context) {
            this.f5418b = context.getApplicationContext();
        }

        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e("Webview", "process gone: " + renderProcessGoneDetail.toString());
            if (Build.VERSION.SDK_INT >= 26) {
                g gVar = o.this.e;
                gVar.onError("WebView render process gone, crash: " + renderProcessGoneDetail.didCrash());
            }
            return true;
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            return o.a(webResourceRequest.getUrl().toString(), this.f5418b);
        }
    }

    o(String str, String str2, String str3, g gVar, Activity activity, org.a.c cVar) {
        this.f5413b = str;
        this.c = str2;
        this.d = str3;
        this.e = gVar;
        this.f = new WeakReference<>(activity);
        this.f5412a = new WebView(activity);
        this.f5412a.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.j = this.g + str + this.h + str + this.i;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.webkit.WebResourceResponse a(java.lang.String r3, android.content.Context r4) {
        /*
            java.lang.String r0 = "data"
            boolean r0 = r3.startsWith(r0)
            r1 = 0
            if (r0 == 0) goto L_0x000a
            return r1
        L_0x000a:
            java.lang.String r0 = "/favicon.ico"
            boolean r0 = r3.endsWith(r0)
            if (r0 == 0) goto L_0x001b
            android.webkit.WebResourceResponse r3 = new android.webkit.WebResourceResponse     // Catch:{ Exception -> 0x001a }
            java.lang.String r4 = "image/jpeg"
            r3.<init>(r4, r1, r1)     // Catch:{ Exception -> 0x001a }
            return r3
        L_0x001a:
            return r1
        L_0x001b:
            com.webengage.sdk.android.utils.a.f$a r0 = new com.webengage.sdk.android.utils.a.f$a
            com.webengage.sdk.android.utils.a.e r2 = com.webengage.sdk.android.utils.a.e.GET
            r0.<init>(r3, r2, r4)
            r3 = 6
            com.webengage.sdk.android.utils.a.f$a r3 = r0.b((int) r3)
            com.webengage.sdk.android.utils.a.f r3 = r3.a()
            com.webengage.sdk.android.utils.a.g r3 = r3.i()
            boolean r4 = r3.i()
            if (r4 == 0) goto L_0x0065
            java.util.Map r4 = r3.b()
            if (r4 == 0) goto L_0x0059
            java.util.Map r4 = r3.b()
            java.lang.String r0 = "content-type"
            java.lang.Object r4 = r4.get(r0)
            if (r4 == 0) goto L_0x0059
            java.util.Map r4 = r3.b()
            java.lang.Object r4 = r4.get(r0)
            java.util.List r4 = (java.util.List) r4
            r0 = 0
            java.lang.Object r4 = r4.get(r0)
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
        L_0x0059:
            android.webkit.WebResourceResponse r4 = new android.webkit.WebResourceResponse
            java.io.InputStream r3 = r3.e()
            java.lang.String r0 = "UTF-8"
            r4.<init>(r1, r0, r3)
            return r4
        L_0x0065:
            r3.n()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.o.a(java.lang.String, android.content.Context):android.webkit.WebResourceResponse");
    }

    /* access modifiers changed from: package-private */
    public WebView a() {
        WebViewClient webViewClient;
        WebView webView;
        this.f5412a.getSettings().setJavaScriptEnabled(true);
        this.f5412a.addJavascriptInterface(this.e, "WebEngage");
        if (Build.VERSION.SDK_INT < 21) {
            webView = this.f5412a;
            webViewClient = new b(((Activity) this.f.get()).getApplicationContext());
        } else {
            webView = this.f5412a;
            webViewClient = new c(((Activity) this.f.get()).getApplicationContext());
        }
        webView.setWebViewClient(webViewClient);
        if (Build.VERSION.SDK_INT >= 11) {
            this.f5412a.setLayerType(1, null);
        }
        this.f5412a.setWebChromeClient(new a());
        this.f5412a.loadDataWithBaseURL(this.f5413b, this.j, this.c, this.d, null);
        this.f5412a.setBackgroundColor(0);
        if (Build.VERSION.SDK_INT >= 14) {
            this.f5412a.getSettings().setTextZoom(100);
        }
        return this.f5412a;
    }
}
