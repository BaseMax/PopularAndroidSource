package com.koushikdutta.async.http;

import android.os.Build;
import com.koushikdutta.async.http.b;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

public final class x implements g {

    /* renamed from: a  reason: collision with root package name */
    Hashtable<String, a> f4835a = new Hashtable<>();

    static class a implements g {

        /* renamed from: a  reason: collision with root package name */
        Field f4836a;

        /* renamed from: b  reason: collision with root package name */
        Field f4837b;
        Field c;
        Field d;
        boolean e;

        public final SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
            return null;
        }

        public a(Class cls) {
            try {
                this.f4836a = cls.getSuperclass().getDeclaredField("peerHost");
                this.f4836a.setAccessible(true);
                this.f4837b = cls.getSuperclass().getDeclaredField("peerPort");
                this.f4837b.setAccessible(true);
                this.c = cls.getDeclaredField("sslParameters");
                this.c.setAccessible(true);
                this.d = this.c.getType().getDeclaredField("useSni");
                this.d.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
        }

        public final void configureEngine(SSLEngine sSLEngine, b.a aVar, String str, int i) {
            if (this.d != null && !this.e) {
                try {
                    this.f4836a.set(sSLEngine, str);
                    this.f4837b.set(sSLEngine, Integer.valueOf(i));
                    this.d.set(this.c.get(sSLEngine), Boolean.TRUE);
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public final SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
        if (com.google.android.gms.b.a.PROVIDER_NAME.equals(sSLContext.getProvider().getName()) || Build.VERSION.SDK_INT >= 23) {
            return sSLContext.createSSLEngine(str, i);
        }
        return sSLContext.createSSLEngine();
    }

    public final void configureEngine(SSLEngine sSLEngine, b.a aVar, String str, int i) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        a aVar2 = this.f4835a.get(canonicalName);
        if (aVar2 == null) {
            aVar2 = new a(sSLEngine.getClass());
            this.f4835a.put(canonicalName, aVar2);
        }
        aVar2.configureEngine(sSLEngine, aVar, str, i);
    }
}
