package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.km;
import java.util.HashMap;
import java.util.concurrent.Executor;

public abstract class kn<T extends km> {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, T> f6274a = new HashMap<>();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public kp f6275b = new kp();
    private final Executor c;

    /* access modifiers changed from: protected */
    public abstract T a(Executor executor, Context context, String str);

    protected kn(Executor executor) {
        this.c = executor;
    }

    public T a(final Context context, String str) {
        T t = (km) this.f6274a.get(str);
        if (t == null) {
            synchronized (this.f6274a) {
                t = (km) this.f6274a.get(str);
                if (t == null) {
                    if (this.f6275b.f() == null) {
                        this.c.execute(new Runnable() {
                            public void run() {
                                kn.this.f6275b.a(context);
                            }
                        });
                    }
                    T a2 = a(this.c, context, str);
                    this.f6274a.put(str, a2);
                    t = a2;
                }
            }
        }
        return t;
    }
}
