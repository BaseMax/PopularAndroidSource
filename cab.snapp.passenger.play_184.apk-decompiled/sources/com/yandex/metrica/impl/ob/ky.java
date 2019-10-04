package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.lang.reflect.Proxy;

public class ky {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6344a;

    public ky(Context context) {
        this.f6344a = context.getApplicationContext();
    }

    public void a(final kx kxVar) {
        try {
            Class<?> cls = Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            Object invoke = cls.getDeclaredMethod("newBuilder", new Class[]{Context.class}).invoke(cls, new Object[]{this.f6344a});
            Class<?> cls2 = Class.forName("com.android.installreferrer.api.InstallReferrerStateListener");
            final Object invoke2 = invoke.getClass().getDeclaredMethod("build", new Class[0]).invoke(invoke, new Object[0]);
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new ku(invoke2, new kx() {
                public void a(kw kwVar) {
                    kx.this.a(kwVar);
                    a();
                }

                public void a(Throwable th) {
                    kx.this.a(th);
                    a();
                }

                public void a() {
                    Object obj = invoke2;
                    if (obj != null) {
                        try {
                            obj.getClass().getDeclaredMethod("endConnection", new Class[0]).invoke(invoke2, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                }
            }));
            invoke2.getClass().getDeclaredMethod("startConnection", new Class[]{cls2}).invoke(invoke2, new Object[]{newProxyInstance});
        } catch (Exception e) {
            kxVar.a((Throwable) e);
        }
    }
}
