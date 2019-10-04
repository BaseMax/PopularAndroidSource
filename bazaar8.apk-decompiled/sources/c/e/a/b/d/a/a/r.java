package c.e.a.b.d.a.a;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import c.e.a.b.d.a.a.C0755c;
import c.e.a.b.d.g.n;
import com.google.android.gms.common.api.Status;

public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    public final int f9907a;

    public r(int i2) {
        this.f9907a = i2;
    }

    public static Status a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (n.b() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void a(C0755c.a<?> aVar);

    public abstract void a(C0765m mVar, boolean z);

    public abstract void a(Status status);

    public abstract void a(RuntimeException runtimeException);
}
