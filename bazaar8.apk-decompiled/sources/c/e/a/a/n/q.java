package c.e.a.a.n;

import android.content.Context;
import c.e.a.a.n.j;

/* compiled from: DefaultDataSourceFactory */
public final class q implements j.a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9513a;

    /* renamed from: b  reason: collision with root package name */
    public final A f9514b;

    /* renamed from: c  reason: collision with root package name */
    public final j.a f9515c;

    public q(Context context, String str) {
        this(context, str, (A) null);
    }

    public q(Context context, String str, A a2) {
        this(context, a2, (j.a) new s(str, a2));
    }

    public p a() {
        p pVar = new p(this.f9513a, this.f9515c.a());
        A a2 = this.f9514b;
        if (a2 != null) {
            pVar.a(a2);
        }
        return pVar;
    }

    public q(Context context, A a2, j.a aVar) {
        this.f9513a = context.getApplicationContext();
        this.f9514b = a2;
        this.f9515c = aVar;
    }
}
