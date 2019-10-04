package c.e.a.b.d.g.a;

import android.os.Process;

public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f10053a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10054b;

    public b(Runnable runnable, int i2) {
        this.f10053a = runnable;
        this.f10054b = i2;
    }

    public final void run() {
        Process.setThreadPriority(this.f10054b);
        this.f10053a.run();
    }
}
