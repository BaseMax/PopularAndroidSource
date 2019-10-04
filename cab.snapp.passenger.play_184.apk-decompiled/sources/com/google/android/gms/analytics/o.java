package com.google.android.gms.analytics;

import android.os.Build;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class o {

    /* renamed from: a  reason: collision with root package name */
    final q f2587a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2588b;
    private final d c;
    private boolean d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;
    private final Map<Class<? extends p>, p> j;
    private final List<u> k;

    private o(o oVar) {
        this.f2587a = oVar.f2587a;
        this.c = oVar.c;
        this.e = oVar.e;
        this.f = oVar.f;
        this.g = oVar.g;
        this.h = oVar.h;
        this.i = oVar.i;
        this.k = new ArrayList(oVar.k);
        this.j = new HashMap(oVar.j.size());
        for (Map.Entry next : oVar.j.entrySet()) {
            p a2 = a((Class) next.getKey());
            ((p) next.getValue()).zzb(a2);
            this.j.put((Class) next.getKey(), a2);
        }
    }

    o(q qVar, d dVar) {
        ap.checkNotNull(qVar);
        ap.checkNotNull(dVar);
        this.f2587a = qVar;
        this.c = dVar;
        this.h = 1800000;
        this.i = 3024000000L;
        this.j = new HashMap();
        this.k = new ArrayList();
    }

    private static <T extends p> T a(Class<T> cls) {
        try {
            return (p) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            if (e2 instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
            } else if (e2 instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e2);
            } else if (Build.VERSION.SDK_INT < 19 || !(e2 instanceof ReflectiveOperationException)) {
                throw new RuntimeException(e2);
            } else {
                throw new IllegalArgumentException("Linkage exception", e2);
            }
        }
    }

    public final List<u> getTransports() {
        return this.k;
    }

    public final <T extends p> T zza(Class<T> cls) {
        return (p) this.j.get(cls);
    }

    public final void zza(p pVar) {
        ap.checkNotNull(pVar);
        Class cls = pVar.getClass();
        if (cls.getSuperclass() == p.class) {
            pVar.zzb(zzb(cls));
            return;
        }
        throw new IllegalArgumentException();
    }

    public final <T extends p> T zzb(Class<T> cls) {
        T t = (p) this.j.get(cls);
        if (t != null) {
            return t;
        }
        T a2 = a(cls);
        this.j.put(cls, a2);
        return a2;
    }

    public final void zzl(long j2) {
        this.f = j2;
    }

    public final o zzus() {
        return new o(this);
    }

    public final Collection<p> zzut() {
        return this.j.values();
    }

    public final long zzuu() {
        return this.e;
    }

    public final boolean zzuw() {
        return this.d;
    }

    public final void zzuv() {
        r rVar = this.f2587a.f2590b;
        if (this.f2588b) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (!zzuw()) {
            o zzus = zzus();
            zzus.g = zzus.c.elapsedRealtime();
            long j2 = zzus.f;
            if (j2 == 0) {
                j2 = zzus.c.currentTimeMillis();
            }
            zzus.e = j2;
            zzus.d = true;
            rVar.f2592a.execute(new s(rVar, zzus));
        } else {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
    }
}
