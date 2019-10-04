package c.e.a.b.j;

import com.google.android.gms.tasks.RuntimeExecutionException;

public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11155a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ m f11156b;

    public n(m mVar, g gVar) {
        this.f11156b = mVar;
        this.f11155a = gVar;
    }

    public final void run() {
        try {
            g gVar = (g) this.f11156b.f11153b.a(this.f11155a);
            if (gVar == null) {
                this.f11156b.a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            gVar.a(i.f11144b, this.f11156b);
            gVar.a(i.f11144b, (d) this.f11156b);
            gVar.a(i.f11144b, (C0979b) this.f11156b);
        } catch (RuntimeExecutionException e2) {
            if (e2.getCause() instanceof Exception) {
                this.f11156b.f11154c.a((Exception) e2.getCause());
            } else {
                this.f11156b.f11154c.a((Exception) e2);
            }
        } catch (Exception e3) {
            this.f11156b.f11154c.a(e3);
        }
    }
}
