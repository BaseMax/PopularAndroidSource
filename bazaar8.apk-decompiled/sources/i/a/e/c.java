package i.a.e;

import h.c.e;
import h.f.b.f;
import h.f.b.j;
import i.a.C;
import i.a.C1104ga;
import i.a.M;
import java.util.concurrent.RejectedExecutionException;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import kotlinx.coroutines.scheduling.TaskMode;

/* compiled from: Dispatcher.kt */
public class c extends C1104ga {

    /* renamed from: a  reason: collision with root package name */
    public CoroutineScheduler f14793a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14794b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14795c;

    /* renamed from: d  reason: collision with root package name */
    public final long f14796d;

    /* renamed from: e  reason: collision with root package name */
    public final String f14797e;

    public c(int i2, int i3, long j2, String str) {
        j.b(str, "schedulerName");
        this.f14794b = i2;
        this.f14795c = i3;
        this.f14796d = j2;
        this.f14797e = str;
        this.f14793a = y();
    }

    public void a(e eVar, Runnable runnable) {
        j.b(eVar, "context");
        j.b(runnable, "block");
        try {
            CoroutineScheduler.a(this.f14793a, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            M.f14648g.a(eVar, runnable);
        }
    }

    public final C b(int i2) {
        if (i2 > 0) {
            return new e(this, i2, TaskMode.PROBABLY_BLOCKING);
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i2).toString());
    }

    public final CoroutineScheduler y() {
        CoroutineScheduler coroutineScheduler = new CoroutineScheduler(this.f14794b, this.f14795c, this.f14796d, this.f14797e);
        return coroutineScheduler;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i2, int i3, String str, int i4, f fVar) {
        this((i4 & 1) != 0 ? k.f14812d : i2, (i4 & 2) != 0 ? k.f14813e : i3, (i4 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    public final void a(Runnable runnable, i iVar, boolean z) {
        j.b(runnable, "block");
        j.b(iVar, "context");
        try {
            this.f14793a.a(runnable, iVar, z);
        } catch (RejectedExecutionException unused) {
            M.f14648g.a((Runnable) this.f14793a.a(runnable, iVar));
        }
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public c(int i2, int i3, String str) {
        this(i2, i3, k.f14814f, str);
        j.b(str, "schedulerName");
    }
}
