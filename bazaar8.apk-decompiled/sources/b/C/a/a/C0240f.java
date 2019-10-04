package b.c.a.a;

/* renamed from: b.c.a.a.f  reason: case insensitive filesystem */
/* compiled from: TaskExecutor */
public abstract class C0240f {
    public abstract void a(Runnable runnable);

    public abstract boolean a();

    public void b(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            c(runnable);
        }
    }

    public abstract void c(Runnable runnable);
}
