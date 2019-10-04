package c.e.a.b.d.a.a;

import android.os.DeadObjectException;
import android.os.RemoteException;
import c.e.a.b.d.a.a.C0755c;
import c.e.a.b.j.h;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

public abstract class K<T> extends D {

    /* renamed from: b  reason: collision with root package name */
    public final h<T> f9816b;

    public K(int i2, h<T> hVar) {
        super(i2);
        this.f9816b = hVar;
    }

    public void a(Status status) {
        this.f9816b.b((Exception) new ApiException(status));
    }

    public abstract void d(C0755c.a<?> aVar);

    public void a(RuntimeException runtimeException) {
        this.f9816b.b((Exception) runtimeException);
    }

    public final void a(C0755c.a<?> aVar) {
        try {
            d(aVar);
        } catch (DeadObjectException e2) {
            a(r.a((RemoteException) e2));
            throw e2;
        } catch (RemoteException e3) {
            a(r.a(e3));
        } catch (RuntimeException e4) {
            a(e4);
        }
    }
}
