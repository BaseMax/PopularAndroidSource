package b.i.j;

/* compiled from: Pools */
public class g<T> extends f<T> {

    /* renamed from: c  reason: collision with root package name */
    public final Object f2759c = new Object();

    public g(int i2) {
        super(i2);
    }

    public T a() {
        T a2;
        synchronized (this.f2759c) {
            a2 = super.a();
        }
        return a2;
    }

    public boolean a(T t) {
        boolean a2;
        synchronized (this.f2759c) {
            a2 = super.a(t);
        }
        return a2;
    }
}
