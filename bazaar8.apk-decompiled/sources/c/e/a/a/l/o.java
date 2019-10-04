package c.e.a.a.l;

import java.util.Arrays;

/* compiled from: TrackSelectionArray */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final int f9336a;

    /* renamed from: b  reason: collision with root package name */
    public final n[] f9337b;

    /* renamed from: c  reason: collision with root package name */
    public int f9338c;

    public o(n... nVarArr) {
        this.f9337b = nVarArr;
        this.f9336a = nVarArr.length;
    }

    public n a(int i2) {
        return this.f9337b[i2];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f9337b, ((o) obj).f9337b);
    }

    public int hashCode() {
        if (this.f9338c == 0) {
            this.f9338c = 527 + Arrays.hashCode(this.f9337b);
        }
        return this.f9338c;
    }

    public n[] a() {
        return (n[]) this.f9337b.clone();
    }
}
