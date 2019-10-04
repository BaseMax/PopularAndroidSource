package c.e.a.b.j;

import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;

public final class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11179a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ w f11180b;

    public x(w wVar, g gVar) {
        this.f11180b = wVar;
        this.f11179a = gVar;
    }

    public final void run() {
        try {
            g a2 = this.f11180b.f11177b.a(this.f11179a.b());
            if (a2 == null) {
                this.f11180b.a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            a2.a(i.f11144b, this.f11180b);
            a2.a(i.f11144b, (d) this.f11180b);
            a2.a(i.f11144b, (C0979b) this.f11180b);
        } catch (RuntimeExecutionException e2) {
            if (e2.getCause() instanceof Exception) {
                this.f11180b.a((Exception) e2.getCause());
            } else {
                this.f11180b.a((Exception) e2);
            }
        } catch (CancellationException unused) {
            this.f11180b.a();
        } catch (Exception e3) {
            this.f11180b.a(e3);
        }
    }
}
