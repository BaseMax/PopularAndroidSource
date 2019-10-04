package c.e.a.a.k.g;

import c.e.a.a.k.e;
import c.e.a.a.o.C0737e;
import java.util.Collections;
import java.util.List;

/* compiled from: Tx3gSubtitle */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    public static final b f9242a = new b();

    /* renamed from: b  reason: collision with root package name */
    public final List<c.e.a.a.k.b> f9243b;

    public b(c.e.a.a.k.b bVar) {
        this.f9243b = Collections.singletonList(bVar);
    }

    public int a(long j2) {
        return j2 < 0 ? 0 : -1;
    }

    public long a(int i2) {
        C0737e.a(i2 == 0);
        return 0;
    }

    public List<c.e.a.a.k.b> b(long j2) {
        return j2 >= 0 ? this.f9243b : Collections.emptyList();
    }

    public int f() {
        return 1;
    }

    public b() {
        this.f9243b = Collections.emptyList();
    }
}
