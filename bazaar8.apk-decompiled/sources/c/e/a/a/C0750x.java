package c.e.a.a;

import android.content.Context;
import android.os.Looper;
import c.e.a.a.a.a;
import c.e.a.a.d.l;
import c.e.a.a.d.p;
import c.e.a.a.l.r;
import c.e.a.a.n.f;
import c.e.a.a.n.o;
import c.e.a.a.o.I;

/* renamed from: c.e.a.a.x  reason: case insensitive filesystem */
/* compiled from: ExoPlayerFactory */
public final class C0750x {

    /* renamed from: a  reason: collision with root package name */
    public static f f9755a;

    public static X a(Context context, r rVar) {
        return a(context, new C0748v(context), rVar);
    }

    public static X a(Context context, U u, r rVar) {
        return a(context, u, rVar, new C0746t());
    }

    public static X a(Context context, U u, r rVar, F f2) {
        return a(context, u, rVar, f2, null, I.a());
    }

    public static X a(Context context, U u, r rVar, F f2, l<p> lVar, Looper looper) {
        return a(context, u, rVar, f2, lVar, new a.C0105a(), looper);
    }

    public static X a(Context context, U u, r rVar, F f2, l<p> lVar, a.C0105a aVar, Looper looper) {
        return a(context, u, rVar, f2, lVar, a(context), aVar, looper);
    }

    public static X a(Context context, U u, r rVar, F f2, l<p> lVar, f fVar, a.C0105a aVar, Looper looper) {
        X x = new X(context, u, rVar, f2, lVar, fVar, aVar, looper);
        return x;
    }

    public static synchronized f a(Context context) {
        f fVar;
        synchronized (C0750x.class) {
            if (f9755a == null) {
                f9755a = new o.a(context).a();
            }
            fVar = f9755a;
        }
        return fVar;
    }
}
