package c.e.a.a.k.f;

import c.e.a.a.k.b;
import c.e.a.a.k.e;
import c.e.a.a.o.I;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: TtmlSubtitle */
public final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    public final b f9237a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f9238b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, e> f9239c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, c> f9240d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f9241e;

    public f(b bVar, Map<String, e> map, Map<String, c> map2, Map<String, String> map3) {
        this.f9237a = bVar;
        this.f9240d = map2;
        this.f9241e = map3;
        this.f9239c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f9238b = bVar.b();
    }

    public int a(long j2) {
        int a2 = I.a(this.f9238b, j2, false, false);
        if (a2 < this.f9238b.length) {
            return a2;
        }
        return -1;
    }

    public List<b> b(long j2) {
        return this.f9237a.a(j2, this.f9239c, this.f9240d, this.f9241e);
    }

    public int f() {
        return this.f9238b.length;
    }

    public long a(int i2) {
        return this.f9238b[i2];
    }
}
