package c.e.a.a.k.d;

import c.e.a.a.k.e;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import java.util.Collections;
import java.util.List;

/* compiled from: SsaSubtitle */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    public final c.e.a.a.k.b[] f9194a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f9195b;

    public b(c.e.a.a.k.b[] bVarArr, long[] jArr) {
        this.f9194a = bVarArr;
        this.f9195b = jArr;
    }

    public int a(long j2) {
        int a2 = I.a(this.f9195b, j2, false, false);
        if (a2 < this.f9195b.length) {
            return a2;
        }
        return -1;
    }

    public List<c.e.a.a.k.b> b(long j2) {
        int b2 = I.b(this.f9195b, j2, true, false);
        if (b2 != -1) {
            c.e.a.a.k.b[] bVarArr = this.f9194a;
            if (bVarArr[b2] != null) {
                return Collections.singletonList(bVarArr[b2]);
            }
        }
        return Collections.emptyList();
    }

    public int f() {
        return this.f9195b.length;
    }

    public long a(int i2) {
        boolean z = true;
        C0737e.a(i2 >= 0);
        if (i2 >= this.f9195b.length) {
            z = false;
        }
        C0737e.a(z);
        return this.f9195b[i2];
    }
}
