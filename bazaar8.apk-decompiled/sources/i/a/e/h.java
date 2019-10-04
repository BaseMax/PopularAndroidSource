package i.a.e;

import h.f.b.j;
import kotlinx.coroutines.scheduling.TaskMode;

/* compiled from: Tasks.kt */
public abstract class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public long f14806a;

    /* renamed from: b  reason: collision with root package name */
    public i f14807b;

    public h(long j2, i iVar) {
        j.b(iVar, "taskContext");
        this.f14806a = j2;
        this.f14807b = iVar;
    }

    public final TaskMode a() {
        return this.f14807b.w();
    }

    public h() {
        this(0, g.f14805b);
    }
}
