package b.z;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: TransactionExecutor */
public class F implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f3581a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayDeque<Runnable> f3582b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    public Runnable f3583c;

    public F(Executor executor) {
        this.f3581a = executor;
    }

    public synchronized void a() {
        Runnable poll = this.f3582b.poll();
        this.f3583c = poll;
        if (poll != null) {
            this.f3581a.execute(this.f3583c);
        }
    }

    public synchronized void execute(Runnable runnable) {
        this.f3582b.offer(new E(this, runnable));
        if (this.f3583c == null) {
            a();
        }
    }
}
