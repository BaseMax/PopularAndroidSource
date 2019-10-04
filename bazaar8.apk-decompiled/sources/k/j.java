package k;

/* compiled from: ForwardingSink */
public abstract class j implements y {

    /* renamed from: a  reason: collision with root package name */
    public final y f15742a;

    public j(y yVar) {
        if (yVar != null) {
            this.f15742a = yVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public void a(g gVar, long j2) {
        this.f15742a.a(gVar, j2);
    }

    public B b() {
        return this.f15742a.b();
    }

    public void close() {
        this.f15742a.close();
    }

    public void flush() {
        this.f15742a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f15742a.toString() + ")";
    }
}
