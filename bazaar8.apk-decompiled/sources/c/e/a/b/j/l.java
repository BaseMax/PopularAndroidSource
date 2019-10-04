package c.e.a.b.j;

import com.google.android.gms.tasks.RuntimeExecutionException;

public final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11150a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f11151b;

    public l(k kVar, g gVar) {
        this.f11151b = kVar;
        this.f11150a = gVar;
    }

    public final void run() {
        if (this.f11150a.c()) {
            this.f11151b.f11149c.f();
            return;
        }
        try {
            this.f11151b.f11149c.a(this.f11151b.f11148b.a(this.f11150a));
        } catch (RuntimeExecutionException e2) {
            if (e2.getCause() instanceof Exception) {
                this.f11151b.f11149c.a((Exception) e2.getCause());
            } else {
                this.f11151b.f11149c.a((Exception) e2);
            }
        } catch (Exception e3) {
            this.f11151b.f11149c.a(e3);
        }
    }
}
