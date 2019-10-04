package b.c.a.a;

import java.util.concurrent.Executor;

/* renamed from: b.c.a.a.c  reason: case insensitive filesystem */
/* compiled from: ArchTaskExecutor */
public class C0237c extends C0240f {

    /* renamed from: a  reason: collision with root package name */
    public static volatile C0237c f2269a;

    /* renamed from: b  reason: collision with root package name */
    public static final Executor f2270b = new C0235a();

    /* renamed from: c  reason: collision with root package name */
    public static final Executor f2271c = new C0236b();

    /* renamed from: d  reason: collision with root package name */
    public C0240f f2272d = this.f2273e;

    /* renamed from: e  reason: collision with root package name */
    public C0240f f2273e = new C0239e();

    public static Executor b() {
        return f2271c;
    }

    public static C0237c c() {
        if (f2269a != null) {
            return f2269a;
        }
        synchronized (C0237c.class) {
            if (f2269a == null) {
                f2269a = new C0237c();
            }
        }
        return f2269a;
    }

    public void a(Runnable runnable) {
        this.f2272d.a(runnable);
    }

    public boolean a() {
        return this.f2272d.a();
    }

    public void c(Runnable runnable) {
        this.f2272d.c(runnable);
    }
}
