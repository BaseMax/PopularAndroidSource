package c.e.a.a;

/* compiled from: RendererConfiguration */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public static final T f7316a = new T(0);

    /* renamed from: b  reason: collision with root package name */
    public final int f7317b;

    public T(int i2) {
        this.f7317b = i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || T.class != obj.getClass()) {
            return false;
        }
        if (this.f7317b != ((T) obj).f7317b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f7317b;
    }
}
