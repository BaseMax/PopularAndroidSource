package c.c.a.e.d.b;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: PaymentSharedDataSource_Factory */
public final class B implements c<A> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4934a;

    public B(a<Context> aVar) {
        this.f4934a = aVar;
    }

    public static B a(a<Context> aVar) {
        return new B(aVar);
    }

    public static A b(a<Context> aVar) {
        return new A(aVar.get());
    }

    public A get() {
        return b(this.f4934a);
    }
}
