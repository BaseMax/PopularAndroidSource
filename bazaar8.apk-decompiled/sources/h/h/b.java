package h.h;

import h.a.w;
import h.d.c;
import h.f.b.f;

/* compiled from: Progressions.kt */
public class b implements Iterable<Integer>, h.f.b.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f14580a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final int f14581b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14582c;

    /* renamed from: d  reason: collision with root package name */
    public final int f14583d;

    /* compiled from: Progressions.kt */
    public static final class a {
        public a() {
        }

        public final b a(int i2, int i3, int i4) {
            return new b(i2, i3, i4);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public b(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i4 != Integer.MIN_VALUE) {
            this.f14581b = i2;
            this.f14582c = c.b(i2, i3, i4);
            this.f14583d = i4;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public final int a() {
        return this.f14583d;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0025, code lost:
        if (r2.f14583d == r3.f14583d) goto L_0x0027;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof h.h.b
            if (r0 == 0) goto L_0x0029
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L_0x0013
            r0 = r3
            h.h.b r0 = (h.h.b) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0027
        L_0x0013:
            int r0 = r2.f14581b
            h.h.b r3 = (h.h.b) r3
            int r1 = r3.f14581b
            if (r0 != r1) goto L_0x0029
            int r0 = r2.f14582c
            int r1 = r3.f14582c
            if (r0 != r1) goto L_0x0029
            int r0 = r2.f14583d
            int r3 = r3.f14583d
            if (r0 != r3) goto L_0x0029
        L_0x0027:
            r3 = 1
            goto L_0x002a
        L_0x0029:
            r3 = 0
        L_0x002a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h.b.equals(java.lang.Object):boolean");
    }

    public final int getFirst() {
        return this.f14581b;
    }

    public final int getLast() {
        return this.f14582c;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f14581b * 31) + this.f14582c) * 31) + this.f14583d;
    }

    public boolean isEmpty() {
        if (this.f14583d > 0) {
            if (this.f14581b > this.f14582c) {
                return true;
            }
        } else if (this.f14581b < this.f14582c) {
            return true;
        }
        return false;
    }

    public String toString() {
        int i2;
        StringBuilder sb;
        if (this.f14583d > 0) {
            sb = new StringBuilder();
            sb.append(this.f14581b);
            sb.append("..");
            sb.append(this.f14582c);
            sb.append(" step ");
            i2 = this.f14583d;
        } else {
            sb = new StringBuilder();
            sb.append(this.f14581b);
            sb.append(" downTo ");
            sb.append(this.f14582c);
            sb.append(" step ");
            i2 = -this.f14583d;
        }
        sb.append(i2);
        return sb.toString();
    }

    public w iterator() {
        return new c(this.f14581b, this.f14582c, this.f14583d);
    }
}
