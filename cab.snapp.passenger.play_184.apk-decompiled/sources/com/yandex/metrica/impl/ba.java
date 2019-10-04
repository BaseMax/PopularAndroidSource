package com.yandex.metrica.impl;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.impl.ob.gc;
import com.yandex.metrica.impl.ob.kw;
import com.yandex.metrica.impl.ob.kx;
import com.yandex.metrica.impl.ob.ky;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

public class ba {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5737a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final bi f5738b;
    /* access modifiers changed from: private */
    public final gc c;
    private String d;
    private Map<String, String> e;
    private DeferredDeeplinkParametersListener f;
    private Handler g;

    public ba(bi biVar, gc gcVar, Executor executor) {
        this(biVar, gcVar, new ky(biVar.b()), executor);
    }

    ba(bi biVar, gc gcVar, final ky kyVar, Executor executor) {
        this.f5738b = biVar;
        this.c = gcVar;
        this.d = gcVar.c();
        this.f5737a = gcVar.d();
        if (this.f5737a) {
            this.c.n(null);
            this.d = null;
        } else {
            d(b(this.d));
        }
        if (!this.c.e()) {
            executor.execute(new Runnable() {
                public void run() {
                    kyVar.a(new kx() {
                        public void a(kw kwVar) {
                            ba.this.f5738b.a(kwVar);
                            ba.this.c(kwVar.f6342a);
                            a();
                        }

                        public void a(Throwable th) {
                            ba.this.f5738b.a((kw) null);
                            a();
                        }

                        private void a() {
                            ba.this.c.g();
                        }
                    });
                }
            });
        }
    }

    public void a(String str) {
        this.f5738b.b(str);
        c(str);
    }

    /* access modifiers changed from: private */
    public void c(String str) {
        if (!(this.f5737a || TextUtils.isEmpty(str)) && TextUtils.isEmpty(this.d)) {
            synchronized (this) {
                this.d = str;
                this.c.n(this.d);
                d(b(str));
                if (this.g == null) {
                    this.g = new Handler(Looper.getMainLooper());
                }
                this.g.post(new Runnable() {
                    public void run() {
                        ba.this.a();
                    }
                });
            }
        }
    }

    private void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            Map<String, String> e2 = e(Uri.decode(str));
            HashMap hashMap = new HashMap(e2.size());
            for (Map.Entry next : e2.entrySet()) {
                hashMap.put(Uri.decode((String) next.getKey()), Uri.decode((String) next.getValue()));
            }
            this.e = hashMap;
        }
    }

    static String b(String str) {
        return e(str).get("appmetrica_deep_link");
    }

    private static Map<String, String> e(String str) {
        HashMap hashMap = new HashMap();
        if (str != null) {
            int lastIndexOf = str.lastIndexOf(63);
            if (lastIndexOf >= 0) {
                str = str.substring(lastIndexOf + 1);
            }
            if (str.contains("=")) {
                for (String str2 : str.split("&")) {
                    int indexOf = str2.indexOf("=");
                    if (indexOf >= 0) {
                        hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                    } else {
                        hashMap.put(str2, "");
                    }
                }
            }
        }
        return hashMap;
    }

    /* access modifiers changed from: private */
    public void a() {
        if (!bv.a((Map) this.e)) {
            DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f;
            if (deferredDeeplinkParametersListener != null) {
                deferredDeeplinkParametersListener.onParametersLoaded(this.e);
                this.f = null;
            }
        } else if (this.d != null) {
            a(DeferredDeeplinkParametersListener.Error.PARSE_ERROR);
        }
    }

    private void a(DeferredDeeplinkParametersListener.Error error) {
        DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f;
        if (deferredDeeplinkParametersListener != null) {
            deferredDeeplinkParametersListener.onError(error, this.d);
            this.f = null;
        }
    }

    public synchronized void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        try {
            this.f = deferredDeeplinkParametersListener;
            if (this.f5737a) {
                a(DeferredDeeplinkParametersListener.Error.NOT_A_FIRST_LAUNCH);
            } else {
                a();
            }
            this.c.f();
        } catch (Throwable th) {
            this.c.f();
            throw th;
        }
    }
}
