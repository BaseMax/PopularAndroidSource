package e.a.a.a.a.a;

import android.content.Context;

/* compiled from: AbstractValueCache */
public abstract class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    public final c<T> f13665a;

    public a(c<T> cVar) {
        this.f13665a = cVar;
    }

    public abstract T a(Context context);

    public final synchronized T a(Context context, d<T> dVar) {
        T a2;
        a2 = a(context);
        if (a2 == null) {
            a2 = this.f13665a != null ? this.f13665a.a(context, dVar) : dVar.load(context);
            a(context, a2);
        }
        return a2;
    }

    public abstract void b(Context context, T t);

    public final void a(Context context, T t) {
        if (t != null) {
            b(context, t);
            return;
        }
        throw new NullPointerException();
    }
}
