package j.a;

/* compiled from: NamedRunnable */
public abstract class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final String f15310a;

    public b(String str, Object... objArr) {
        this.f15310a = e.a(str, objArr);
    }

    public abstract void b();

    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f15310a);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
