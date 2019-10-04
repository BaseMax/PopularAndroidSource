package c.e.a.a.e;

/* compiled from: SeekPoint */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static final p f8325a = new p(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final long f8326b;

    /* renamed from: c  reason: collision with root package name */
    public final long f8327c;

    public p(long j2, long j3) {
        this.f8326b = j2;
        this.f8327c = j3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (!(this.f8326b == pVar.f8326b && this.f8327c == pVar.f8327c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f8326b) * 31) + ((int) this.f8327c);
    }

    public String toString() {
        return "[timeUs=" + this.f8326b + ", position=" + this.f8327c + "]";
    }
}
