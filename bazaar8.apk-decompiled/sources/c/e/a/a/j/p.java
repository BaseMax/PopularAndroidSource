package c.e.a.a.j;

/* compiled from: CompositeSequenceableLoader */
public class p implements D {

    /* renamed from: a  reason: collision with root package name */
    public final D[] f8970a;

    public p(D[] dArr) {
        this.f8970a = dArr;
    }

    public final long b() {
        long j2 = Long.MAX_VALUE;
        for (D b2 : this.f8970a) {
            long b3 = b2.b();
            if (b3 != Long.MIN_VALUE) {
                j2 = Math.min(j2, b3);
            }
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    public final void c(long j2) {
        for (D c2 : this.f8970a) {
            c2.c(j2);
        }
    }

    public final long g() {
        long j2 = Long.MAX_VALUE;
        for (D g2 : this.f8970a) {
            long g3 = g2.g();
            if (g3 != Long.MIN_VALUE) {
                j2 = Math.min(j2, g3);
            }
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    public boolean b(long j2) {
        long j3 = j2;
        boolean z = false;
        while (true) {
            long b2 = b();
            if (b2 != Long.MIN_VALUE) {
                boolean z2 = false;
                for (D d2 : this.f8970a) {
                    long b3 = d2.b();
                    boolean z3 = b3 != Long.MIN_VALUE && b3 <= j3;
                    if (b3 == b2 || z3) {
                        z2 |= d2.b(j3);
                    }
                }
                z |= z2;
                if (!z2) {
                    break;
                }
            } else {
                break;
            }
        }
        return z;
    }
}
