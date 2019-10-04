package c.e.a.b.d.a.a;

import android.os.DeadObjectException;
import android.os.RemoteException;
import c.e.a.b.d.a.a;
import c.e.a.b.d.a.a.C0755c;
import c.e.a.b.j.h;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;

public final class L<ResultT> extends D {

    /* renamed from: b  reason: collision with root package name */
    public final C0762j<a.b, ResultT> f9817b;

    /* renamed from: c  reason: collision with root package name */
    public final h<ResultT> f9818c;

    /* renamed from: d  reason: collision with root package name */
    public final C0761i f9819d;

    public L(int i2, C0762j<a.b, ResultT> jVar, h<ResultT> hVar, C0761i iVar) {
        super(i2);
        this.f9818c = hVar;
        this.f9817b = jVar;
        this.f9819d = iVar;
    }

    public final void a(C0755c.a<?> aVar) {
        try {
            this.f9817b.a(aVar.f(), this.f9818c);
        } catch (DeadObjectException e2) {
            throw e2;
        } catch (RemoteException e3) {
            a(r.a(e3));
        } catch (RuntimeException e4) {
            a(e4);
        }
    }

    public final Feature[] b(C0755c.a<?> aVar) {
        return this.f9817b.b();
    }

    public final boolean c(C0755c.a<?> aVar) {
        return this.f9817b.a();
    }

    public final void a(Status status) {
        this.f9818c.b(this.f9819d.a(status));
    }

    public final void a(RuntimeException runtimeException) {
        this.f9818c.b((Exception) runtimeException);
    }

    public final void a(C0765m mVar, boolean z) {
        mVar.a(this.f9818c, z);
    }
}
