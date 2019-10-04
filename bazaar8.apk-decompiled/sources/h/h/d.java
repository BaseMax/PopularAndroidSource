package h.h;

import h.f.b.f;

/* compiled from: Ranges.kt */
public final class d extends b implements a<Integer> {

    /* renamed from: e  reason: collision with root package name */
    public static final d f14588e = new d(1, 0);

    /* renamed from: f  reason: collision with root package name */
    public static final a f14589f = new a(null);

    /* compiled from: Ranges.kt */
    public static final class a {
        public a() {
        }

        public final d a() {
            return d.f14588e;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(int i2, int i3) {
        super(i2, i3, 1);
    }

    public Integer c() {
        return Integer.valueOf(getLast());
    }

    public Integer d() {
        return Integer.valueOf(getFirst());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (getLast() == r3.getLast()) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof h.h.d
            if (r0 == 0) goto L_0x002b
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L_0x0013
            r0 = r3
            h.h.d r0 = (h.h.d) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0029
        L_0x0013:
            int r0 = r2.getFirst()
            h.h.d r3 = (h.h.d) r3
            int r1 = r3.getFirst()
            if (r0 != r1) goto L_0x002b
            int r0 = r2.getLast()
            int r3 = r3.getLast()
            if (r0 != r3) goto L_0x002b
        L_0x0029:
            r3 = 1
            goto L_0x002c
        L_0x002b:
            r3 = 0
        L_0x002c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h.d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getFirst() * 31) + getLast();
    }

    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    public String toString() {
        return getFirst() + ".." + getLast();
    }
}
