package i.a.e;

import i.a.L;

/* compiled from: Tasks.kt */
public final class j extends h {

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f14808c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(Runnable runnable, long j2, i iVar) {
        super(j2, iVar);
        h.f.b.j.b(runnable, "block");
        h.f.b.j.b(iVar, "taskContext");
        this.f14808c = runnable;
    }

    public void run() {
        try {
            this.f14808c.run();
        } finally {
            this.f14807b.v();
        }
    }

    public String toString() {
        return "Task[" + L.a((Object) this.f14808c) + '@' + L.b(this.f14808c) + ", " + this.f14806a + ", " + this.f14807b + ']';
    }
}
