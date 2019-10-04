package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzgb;
import java.util.Iterator;
import java.util.Map;

public final class Ob implements Nb {
    public final Map<?, ?> a(Object obj) {
        return (zzgb) obj;
    }

    public final Map<?, ?> b(Object obj) {
        return (zzgb) obj;
    }

    public final Mb<?, ?> c(Object obj) {
        throw new NoSuchMethodError();
    }

    public final Object d(Object obj) {
        return zzgb.c().d();
    }

    public final Object e(Object obj) {
        ((zzgb) obj).b();
        return obj;
    }

    public final boolean f(Object obj) {
        return !((zzgb) obj).a();
    }

    public final Object a(Object obj, Object obj2) {
        zzgb zzgb = (zzgb) obj;
        zzgb zzgb2 = (zzgb) obj2;
        if (!zzgb2.isEmpty()) {
            if (!zzgb.a()) {
                zzgb = zzgb.d();
            }
            zzgb.a(zzgb2);
        }
        return zzgb;
    }

    public final int a(int i2, Object obj, Object obj2) {
        zzgb zzgb = (zzgb) obj;
        if (zzgb.isEmpty()) {
            return 0;
        }
        Iterator it = zzgb.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
