package io.fabric.sdk.android.services.a;

import android.content.Context;

public abstract class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f6564a;

    /* access modifiers changed from: protected */
    public abstract void a();

    /* access modifiers changed from: protected */
    public abstract void a(T t);

    /* access modifiers changed from: protected */
    public abstract T b();

    public a() {
        this(null);
    }

    public a(c<T> cVar) {
        this.f6564a = cVar;
    }

    public final synchronized T get(Context context, d<T> dVar) throws Exception {
        T b2;
        b2 = b();
        if (b2 == null) {
            b2 = this.f6564a != null ? this.f6564a.get(context, dVar) : dVar.load(context);
            if (b2 != null) {
                a(b2);
            } else {
                throw new NullPointerException();
            }
        }
        return b2;
    }

    public final synchronized void invalidate(Context context) {
        a();
    }
}
