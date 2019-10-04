package e.a.a.a;

import e.a.a.a.a.b.C;
import e.a.a.a.a.c.j;
import io.fabric.sdk.android.InitializationException;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;

/* compiled from: InitializationTask */
public class k<Result> extends j<Void, Void, Result> {
    public final l<Result> p;

    public k(l<Result> lVar) {
        this.p = lVar;
    }

    public void b(Result result) {
        this.p.onCancelled(result);
        this.p.initializationCallback.a((Exception) new InitializationException(this.p.getIdentifier() + " Initialization was cancelled"));
    }

    public void c() {
        super.c();
        C a2 = a("onPreExecute");
        try {
            boolean onPreExecute = this.p.onPreExecute();
            a2.c();
            if (onPreExecute) {
                return;
            }
        } catch (UnmetDependencyException e2) {
            throw e2;
        } catch (Exception e3) {
            f.e().b("Fabric", "Failure onPreExecute()", e3);
            a2.c();
        } catch (Throwable th) {
            a2.c();
            a(true);
            throw th;
        }
        a(true);
    }

    public Priority getPriority() {
        return Priority.HIGH;
    }

    public Result a(Void... voidArr) {
        C a2 = a("doInBackground");
        Result doInBackground = !b() ? this.p.doInBackground() : null;
        a2.c();
        return doInBackground;
    }

    public final C a(String str) {
        C c2 = new C(this.p.getIdentifier() + "." + str, "KitInitialization");
        c2.b();
        return c2;
    }

    public void c(Result result) {
        this.p.onPostExecute(result);
        this.p.initializationCallback.a(result);
    }
}
