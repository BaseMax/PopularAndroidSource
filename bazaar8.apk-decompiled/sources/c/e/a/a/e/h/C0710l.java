package c.e.a.a.e.h;

import android.util.SparseArray;
import c.e.a.a.e.h.J;
import c.e.a.a.k.a.d;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: c.e.a.a.e.h.l  reason: case insensitive filesystem */
/* compiled from: DefaultTsPayloadReaderFactory */
public final class C0710l implements J.c {

    /* renamed from: a  reason: collision with root package name */
    public final int f8142a;

    /* renamed from: b  reason: collision with root package name */
    public final List<Format> f8143b;

    public C0710l(int i2) {
        this(i2, Collections.singletonList(Format.a(null, "application/cea-608", 0, null)));
    }

    public SparseArray<J> a() {
        return new SparseArray<>();
    }

    public final L b(J.b bVar) {
        return new L(c(bVar));
    }

    public final List<Format> c(J.b bVar) {
        int i2;
        String str;
        List<byte[]> list;
        if (a(32)) {
            return this.f8143b;
        }
        v vVar = new v(bVar.f8069d);
        List<Format> list2 = this.f8143b;
        while (vVar.a() > 0) {
            int u = vVar.u();
            int c2 = vVar.c() + vVar.u();
            if (u == 134) {
                list2 = new ArrayList<>();
                int u2 = vVar.u() & 31;
                for (int i3 = 0; i3 < u2; i3++) {
                    String b2 = vVar.b(3);
                    int u3 = vVar.u();
                    boolean z = true;
                    boolean z2 = (u3 & 128) != 0;
                    if (z2) {
                        i2 = u3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i2 = 1;
                    }
                    byte u4 = (byte) vVar.u();
                    vVar.f(1);
                    if (z2) {
                        if ((u4 & 64) == 0) {
                            z = false;
                        }
                        list = d.a(z);
                    } else {
                        list = null;
                    }
                    list2.add(Format.a((String) null, str, (String) null, -1, 0, b2, i2, (DrmInitData) null, Long.MAX_VALUE, list));
                }
            }
            vVar.e(c2);
        }
        return list2;
    }

    public J a(int i2, J.b bVar) {
        if (i2 == 2) {
            return new x(new p(b(bVar)));
        }
        if (i2 == 3 || i2 == 4) {
            return new x(new v(bVar.f8067b));
        }
        J j2 = null;
        if (i2 == 15) {
            if (!a(2)) {
                j2 = new x(new C0709k(false, bVar.f8067b));
            }
            return j2;
        } else if (i2 == 17) {
            if (!a(2)) {
                j2 = new x(new u(bVar.f8067b));
            }
            return j2;
        } else if (i2 == 21) {
            return new x(new t());
        } else {
            if (i2 == 27) {
                if (!a(4)) {
                    j2 = new x(new r(a(bVar), a(1), a(8)));
                }
                return j2;
            } else if (i2 == 36) {
                return new x(new s(a(bVar)));
            } else {
                if (i2 == 89) {
                    return new x(new n(bVar.f8068c));
                }
                if (i2 != 138) {
                    if (i2 == 172) {
                        return new x(new C0707i(bVar.f8067b));
                    }
                    if (i2 != 129) {
                        if (i2 != 130) {
                            if (i2 == 134) {
                                if (!a(16)) {
                                    j2 = new D(new F());
                                }
                                return j2;
                            } else if (i2 != 135) {
                                return null;
                            }
                        } else if (!a(64)) {
                            return null;
                        }
                    }
                    return new x(new C0705g(bVar.f8067b));
                }
                return new x(new m(bVar.f8067b));
            }
        }
    }

    public C0710l(int i2, List<Format> list) {
        this.f8142a = i2;
        this.f8143b = list;
    }

    public final E a(J.b bVar) {
        return new E(c(bVar));
    }

    public final boolean a(int i2) {
        return (i2 & this.f8142a) != 0;
    }
}
