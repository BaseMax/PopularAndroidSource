package c.e.c.b;

import c.e.c.e.a;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class t<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f11561a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public volatile Object f11562b = f11561a;

    /* renamed from: c  reason: collision with root package name */
    public volatile a<T> f11563c;

    public t(a<T> aVar) {
        this.f11563c = aVar;
    }

    public T get() {
        T t = this.f11562b;
        if (t == f11561a) {
            synchronized (this) {
                t = this.f11562b;
                if (t == f11561a) {
                    t = this.f11563c.get();
                    this.f11562b = t;
                    this.f11563c = null;
                }
            }
        }
        return t;
    }
}
