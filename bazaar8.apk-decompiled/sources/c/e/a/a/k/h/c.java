package c.e.a.a.k.h;

import c.e.a.a.k.b;
import c.e.a.a.k.e;
import c.e.a.a.o.C0737e;
import java.util.Collections;
import java.util.List;

/* compiled from: Mp4WebvttSubtitle */
public final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    public final List<b> f9248a;

    public c(List<b> list) {
        this.f9248a = Collections.unmodifiableList(list);
    }

    public int a(long j2) {
        return j2 < 0 ? 0 : -1;
    }

    public long a(int i2) {
        C0737e.a(i2 == 0);
        return 0;
    }

    public List<b> b(long j2) {
        return j2 >= 0 ? this.f9248a : Collections.emptyList();
    }

    public int f() {
        return 1;
    }
}
