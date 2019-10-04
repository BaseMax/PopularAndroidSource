package i.a.e;

import h.f.b.j;
import i.a.C1104ga;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.scheduling.TaskMode;

/* compiled from: Dispatcher.kt */
public final class e extends C1104ga implements i, Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14798a = AtomicIntegerFieldUpdater.newUpdater(e.class, "inFlightTasks");

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentLinkedQueue<Runnable> f14799b = new ConcurrentLinkedQueue<>();

    /* renamed from: c  reason: collision with root package name */
    public final c f14800c;

    /* renamed from: d  reason: collision with root package name */
    public final int f14801d;

    /* renamed from: e  reason: collision with root package name */
    public final TaskMode f14802e;
    public volatile int inFlightTasks = 0;

    public e(c cVar, int i2, TaskMode taskMode) {
        j.b(cVar, "dispatcher");
        j.b(taskMode, "taskMode");
        this.f14800c = cVar;
        this.f14801d = i2;
        this.f14802e = taskMode;
    }

    public void a(h.c.e eVar, Runnable runnable) {
        j.b(eVar, "context");
        j.b(runnable, "block");
        a(runnable, false);
    }

    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher");
    }

    public void execute(Runnable runnable) {
        j.b(runnable, "command");
        a(runnable, false);
    }

    public String toString() {
        return super.toString() + "[dispatcher = " + this.f14800c + ']';
    }

    public void v() {
        Runnable poll = this.f14799b.poll();
        if (poll != null) {
            this.f14800c.a(poll, this, true);
            return;
        }
        f14798a.decrementAndGet(this);
        Runnable poll2 = this.f14799b.poll();
        if (poll2 != null) {
            a(poll2, true);
        }
    }

    public TaskMode w() {
        return this.f14802e;
    }

    public final void a(Runnable runnable, boolean z) {
        while (f14798a.incrementAndGet(this) > this.f14801d) {
            this.f14799b.add(runnable);
            if (f14798a.decrementAndGet(this) < this.f14801d) {
                runnable = this.f14799b.poll();
                if (runnable == null) {
                    return;
                }
            } else {
                return;
            }
        }
        this.f14800c.a(runnable, this, z);
    }
}
