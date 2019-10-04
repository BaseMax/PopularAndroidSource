package com.webengage.sdk.android;

import android.content.Context;
import java.util.Map;

public abstract class a extends h {

    /* renamed from: com.webengage.sdk.android.a$a  reason: collision with other inner class name */
    class C0105a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Map<String, Object> f5328a;

        C0105a(Map<String, Object> map) {
            this.f5328a = map;
        }

        public void run() {
            try {
                a.this.b(a.this.a(a.this.a(this.f5328a)));
            } catch (Exception e) {
                Logger.e("WebEngage", e.getMessage());
            }
        }
    }

    protected a(Context context) {
        super(context);
    }

    public i a(Context context) {
        return i.a(context.getApplicationContext());
    }

    /* access modifiers changed from: protected */
    public abstract Object a(Object obj);

    /* access modifiers changed from: protected */
    public abstract Object a(Map<String, Object> map);

    /* access modifiers changed from: protected */
    public abstract void b(Object obj);

    public void b(Map<String, Object> map) {
        b(a(a(map)));
    }

    /* access modifiers changed from: protected */
    public void c(Object obj) {
        WebEngage.startService(n.a(af.EVENT, obj, this.f5531a), this.f5531a);
    }

    public void c(Map<String, Object> map) {
        com.webengage.sdk.android.utils.a.a(new C0105a(map));
    }

    /* access modifiers changed from: protected */
    public void d(Object obj) {
        WebEngage.startService(n.a(af.EXCEPTION, obj, this.f5531a), this.f5531a);
    }

    /* access modifiers changed from: protected */
    public void e(Object obj) {
        WebEngage.startService(n.a(af.RENDER, new ac(i(), obj), this.f5531a), this.f5531a);
    }
}
