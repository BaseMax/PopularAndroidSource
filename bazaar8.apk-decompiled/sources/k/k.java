package k;

/* compiled from: ForwardingSource */
public abstract class k implements z {

    /* renamed from: a  reason: collision with root package name */
    public final z f15743a;

    public k(z zVar) {
        if (zVar != null) {
            this.f15743a = zVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public long b(g gVar, long j2) {
        return this.f15743a.b(gVar, j2);
    }

    public void close() {
        this.f15743a.close();
    }

    public final z e() {
        return this.f15743a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f15743a.toString() + ")";
    }

    public B b() {
        return this.f15743a.b();
    }
}
