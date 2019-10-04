package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.impl.bt;
import java.util.List;
import java.util.Map;

public class ly {

    /* renamed from: a  reason: collision with root package name */
    private String f6411a = this.i.a((String) null);

    /* renamed from: b  reason: collision with root package name */
    private String f6412b = this.i.b((String) null);
    private String c = this.i.c((String) null);
    private String d = this.i.d((String) null);
    private String e = this.i.e((String) null);
    private List<String> f = this.i.b();
    private long g = this.i.a(0);
    private String h = this.i.f((String) null);
    private final gc i;

    public enum a {
        IDENTIFIERS,
        URLS,
        ALL
    }

    public ly(gc gcVar) {
        this.i = gcVar;
        e();
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(Map<String, String> map) {
        b(map);
        c(map);
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean a(a aVar) {
        if (a.ALL == aVar) {
            return h();
        } else if (a.IDENTIFIERS == aVar) {
            return f();
        } else if (a.URLS != aVar) {
            return false;
        } else {
            return g();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void b(Map<String, String> map) {
        if (!bt.a(this.f6411a)) {
            map.put(IIdentifierCallback.YANDEX_MOBILE_METRICA_UUID, this.f6411a);
        }
        if (!bt.a(this.f6412b)) {
            map.put(IIdentifierCallback.YANDEX_MOBILE_METRICA_DEVICE_ID, this.f6412b);
        }
        if (!TextUtils.isEmpty(this.c)) {
            map.put(IIdentifierCallback.APP_METRICA_DEVICE_ID_HASH, this.c);
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void c(Map<String, String> map) {
        if (!bt.a(this.d)) {
            map.put(IIdentifierCallback.YANDEX_MOBILE_METRICA_GET_AD_URL, this.d);
        }
        if (!bt.a(this.e)) {
            map.put(IIdentifierCallback.YANDEX_MOBILE_METRICA_REPORT_AD_URL, this.e);
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(Bundle bundle) {
        b(bundle);
        c(bundle);
        b(bundle.getLong("ServerTimeOffset"));
        String string = bundle.getString("Clids");
        if (!bt.a(string)) {
            this.h = string;
        }
        e();
    }

    private void e() {
        this.i.g(this.f6411a).h(this.f6412b).i(this.c).j(this.d).k(this.e).d(this.g).l(this.h).i();
    }

    /* access modifiers changed from: package-private */
    public void a(long j) {
        this.i.e(j).i();
    }

    /* access modifiers changed from: package-private */
    public List<String> b() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.f = list;
        this.i.a(this.f);
    }

    private synchronized boolean f() {
        return !bt.a(this.f6411a, this.f6412b, this.c);
    }

    private synchronized boolean g() {
        return true;
    }

    private synchronized boolean h() {
        return f() && g();
    }

    private synchronized void b(Bundle bundle) {
        String string = bundle.getString("Uuid");
        if (bt.a(this.f6411a) && !bt.a(string)) {
            this.f6411a = string;
        }
        String string2 = bundle.getString("DeviceId");
        if (!bt.a(string2)) {
            a(string2);
        }
        b(bundle.getString("DeviceIdHash"));
    }

    private synchronized void c(Bundle bundle) {
        String string = bundle.getString("AdUrlGet");
        if (!TextUtils.isEmpty(string)) {
            c(string);
        }
        String string2 = bundle.getString("AdUrlReport");
        if (!TextUtils.isEmpty(string2)) {
            d(string2);
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(String str) {
        this.f6412b = str;
    }

    /* access modifiers changed from: package-private */
    public synchronized void b(String str) {
        this.c = str;
    }

    private synchronized void c(String str) {
        this.d = str;
    }

    private synchronized void d(String str) {
        this.e = str;
    }

    private synchronized void b(long j) {
        this.g = j;
    }

    /* access modifiers changed from: package-private */
    public String c() {
        return this.f6411a;
    }

    /* access modifiers changed from: package-private */
    public String d() {
        return this.f6412b;
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        long currentTimeMillis = (System.currentTimeMillis() / 1000) - this.i.b(0);
        return currentTimeMillis > 86400 || currentTimeMillis < 0;
    }
}
