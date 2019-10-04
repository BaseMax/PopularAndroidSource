package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;

/* renamed from: c.e.a.b.g.f.zc  reason: case insensitive filesystem */
public abstract class C0900zc<T, B> {
    public abstract B a();

    public abstract void a(Object obj);

    public abstract void a(B b2, int i2, int i3);

    public abstract void a(B b2, int i2, long j2);

    public abstract void a(B b2, int i2, zzdp zzdp);

    public abstract void a(B b2, int i2, T t);

    public abstract void a(T t, Oc oc);

    public abstract void a(Object obj, T t);

    public abstract boolean a(C0825gc gcVar);

    public final boolean a(B b2, C0825gc gcVar) {
        int tag = gcVar.getTag();
        int i2 = tag >>> 3;
        int i3 = tag & 7;
        if (i3 == 0) {
            a(b2, i2, gcVar.h());
            return true;
        } else if (i3 == 1) {
            b(b2, i2, gcVar.c());
            return true;
        } else if (i3 == 2) {
            a(b2, i2, gcVar.k());
            return true;
        } else if (i3 == 3) {
            Object a2 = a();
            int i4 = 4 | (i2 << 3);
            while (gcVar.e() != Integer.MAX_VALUE) {
                if (!a(a2, gcVar)) {
                    break;
                }
            }
            if (i4 == gcVar.getTag()) {
                a(b2, i2, b(a2));
                return true;
            }
            throw zzfh.e();
        } else if (i3 == 4) {
            return false;
        } else {
            if (i3 == 5) {
                a(b2, i2, gcVar.l());
                return true;
            }
            throw zzfh.f();
        }
    }

    public abstract T b(B b2);

    public abstract void b(B b2, int i2, long j2);

    public abstract void b(T t, Oc oc);

    public abstract void b(Object obj, B b2);

    public abstract int c(T t);

    public abstract T c(T t, T t2);

    public abstract T d(Object obj);

    public abstract B e(Object obj);

    public abstract int f(T t);
}
