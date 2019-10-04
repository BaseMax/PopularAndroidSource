package b.H.a;

import android.annotation.SuppressLint;
import androidx.work.ListenableWorker;
import b.H.a.d.a.c;
import b.H.f;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: WorkerWrapper */
class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f1596a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f1597b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ q f1598c;

    public p(q qVar, c cVar, String str) {
        this.f1598c = qVar;
        this.f1596a = cVar;
        this.f1597b = str;
    }

    @SuppressLint({"SyntheticAccessor"})
    public void run() {
        try {
            ListenableWorker.a aVar = (ListenableWorker.a) this.f1596a.get();
            if (aVar == null) {
                f.a().b(q.f1599a, String.format("%s returned a null result. Treating it as a failure.", new Object[]{this.f1598c.f1604f.f1468e}), new Throwable[0]);
            } else {
                f.a().a(q.f1599a, String.format("%s returned a %s result.", new Object[]{this.f1598c.f1604f.f1468e, aVar}), new Throwable[0]);
                this.f1598c.f1606h = aVar;
            }
        } catch (CancellationException e2) {
            f.a().c(q.f1599a, String.format("%s was cancelled", new Object[]{this.f1597b}), e2);
        } catch (InterruptedException | ExecutionException e3) {
            f.a().b(q.f1599a, String.format("%s failed because it threw an exception/error", new Object[]{this.f1597b}), e3);
        } catch (Throwable th) {
            this.f1598c.c();
            throw th;
        }
        this.f1598c.c();
    }
}
