package c.b.a.c.b;

import android.os.Process;

/* renamed from: c.b.a.c.b.b  reason: case insensitive filesystem */
/* compiled from: ActiveResources */
class C0359b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0360c f3890a;

    public C0359b(C0360c cVar) {
        this.f3890a = cVar;
    }

    public void run() {
        Process.setThreadPriority(10);
        this.f3890a.a();
    }
}
