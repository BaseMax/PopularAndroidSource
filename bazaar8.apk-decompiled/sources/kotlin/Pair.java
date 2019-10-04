package kotlin;

import java.io.Serializable;

/* compiled from: Tuples.kt */
public final class Pair<A, B> implements Serializable {
    public final A first;
    public final B second;

    public Pair(A a2, B b2) {
        this.first = a2;
        this.second = b2;
    }

    public final A a() {
        return this.first;
    }

    public final B b() {
        return this.second;
    }

    public final A c() {
        return this.first;
    }

    public final B d() {
        return this.second;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.second, (java.lang.Object) r3.second) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof kotlin.Pair
            if (r0 == 0) goto L_0x001d
            kotlin.Pair r3 = (kotlin.Pair) r3
            A r0 = r2.first
            A r1 = r3.first
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            B r0 = r2.second
            B r3 = r3.second
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.Pair.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        A a2 = this.first;
        int i2 = 0;
        int hashCode = (a2 != null ? a2.hashCode() : 0) * 31;
        B b2 = this.second;
        if (b2 != null) {
            i2 = b2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
