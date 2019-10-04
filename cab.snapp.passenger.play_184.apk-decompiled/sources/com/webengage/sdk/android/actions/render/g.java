package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.webkit.JavascriptInterface;

class g {

    /* renamed from: a  reason: collision with root package name */
    InAppNotificationData f5390a;

    /* renamed from: b  reason: collision with root package name */
    m f5391b;
    Context c;

    g(InAppNotificationData inAppNotificationData, m mVar) {
        this.f5390a = inAppNotificationData;
        this.f5391b = mVar;
        this.c = mVar.getActivity().getApplicationContext();
    }

    @JavascriptInterface
    public String getData() {
        return this.f5390a.getData().toString();
    }

    @JavascriptInterface
    public String getLayoutId() {
        return this.f5390a.getLayoutId();
    }

    @JavascriptInterface
    public void onClick(String str, String str2, boolean z) {
        this.f5391b.a(str, str2, z);
    }

    @JavascriptInterface
    public void onClose() {
        this.f5391b.c();
    }

    @JavascriptInterface
    public void onError(String str) {
        this.f5391b.a(str);
    }

    @JavascriptInterface
    public void onOpen() {
        this.f5391b.d();
    }
}
