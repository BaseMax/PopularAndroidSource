package c.b.a.c.b.c;

import android.os.Process;
import android.os.StrictMode;
import c.b.a.c.b.c.b;

/* compiled from: GlideExecutor */
class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b.a f3933a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(b.a aVar, Runnable runnable, String str) {
        super(runnable, str);
        this.f3933a = aVar;
    }

    public void run() {
        Process.setThreadPriority(9);
        if (this.f3933a.f3942c) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
        }
        try {
            super.run();
        } catch (Throwable th) {
            this.f3933a.f3941b.a(th);
        }
    }
}
