package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.impl.bi;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.ly;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

public class lv implements lw {

    /* renamed from: a  reason: collision with root package name */
    static final Map<lu, IIdentifierCallback.Reason> f6409a = Collections.unmodifiableMap(new HashMap<lu, IIdentifierCallback.Reason>() {
        {
            put(lu.UNKNOWN, IIdentifierCallback.Reason.UNKNOWN);
            put(lu.NETWORK, IIdentifierCallback.Reason.NETWORK);
            put(lu.PARSE, IIdentifierCallback.Reason.INVALID_RESPONSE);
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private final bi f6410b;
    private final ly c;
    private final gc d;
    private final Object e = new Object();
    private final Map<IIdentifierCallback, Object> f = new WeakHashMap();
    private final Map<IIdentifierCallback, Object> g = new WeakHashMap();

    public lv(bi biVar, gc gcVar) {
        this.f6410b = biVar;
        this.d = gcVar;
        this.c = new ly(this.d);
        d();
    }

    public String a() {
        return this.c.c();
    }

    public String b() {
        return this.c.d();
    }

    public void a(IIdentifierCallback iIdentifierCallback) {
        synchronized (this.e) {
            this.g.put(iIdentifierCallback, null);
            if (!this.c.a(ly.a.ALL)) {
                this.f6410b.c();
            }
        }
        d();
    }

    public void a(Bundle bundle) {
        synchronized (this.e) {
            this.c.a(bundle);
            this.c.a(System.currentTimeMillis() / 1000);
        }
        d();
    }

    public void c() {
        if (!this.c.a(ly.a.ALL) || this.c.a()) {
            this.f6410b.c();
        }
    }

    public void a(List<String> list) {
        List<String> b2 = this.c.b();
        if (bv.a((Collection) list)) {
            if (!bv.a((Collection) b2)) {
                this.c.a((List<String>) null);
                this.f6410b.a((List<String>) null);
            }
        } else if (!bv.a((Object) list, (Object) b2)) {
            this.c.a(list);
            this.f6410b.a(list);
        } else {
            this.f6410b.a(b2);
        }
    }

    public void a(Map<String, String> map) {
        this.f6410b.a(no.c(map));
    }

    public void a(String str) {
        this.f6410b.c(str);
    }

    private void d() {
        WeakHashMap weakHashMap = new WeakHashMap();
        HashMap hashMap = new HashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        HashMap hashMap2 = new HashMap();
        synchronized (this.e) {
            if (this.c.a(ly.a.IDENTIFIERS)) {
                weakHashMap.putAll(this.f);
                this.f.clear();
                this.c.b((Map<String, String>) hashMap);
            }
            if (this.c.a(ly.a.ALL)) {
                weakHashMap2.putAll(this.g);
                this.g.clear();
                this.c.a((Map<String, String>) hashMap2);
            }
        }
        for (IIdentifierCallback onReceive : weakHashMap.keySet()) {
            onReceive.onReceive(new HashMap(hashMap));
        }
        for (IIdentifierCallback onReceive2 : weakHashMap2.keySet()) {
            onReceive2.onReceive(new HashMap(hashMap2));
        }
        weakHashMap.clear();
        hashMap.clear();
        weakHashMap2.clear();
        hashMap2.clear();
    }

    public void b(Bundle bundle) {
        IIdentifierCallback.Reason reason = f6409a.get(lu.b(bundle));
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        synchronized (this.e) {
            weakHashMap.putAll(this.f);
            weakHashMap2.putAll(this.g);
            this.f.clear();
            this.g.clear();
        }
        for (IIdentifierCallback onRequestError : weakHashMap.keySet()) {
            onRequestError.onRequestError(reason);
        }
        for (IIdentifierCallback onRequestError2 : weakHashMap2.keySet()) {
            onRequestError2.onRequestError(reason);
        }
        weakHashMap.clear();
        weakHashMap2.clear();
    }
}
