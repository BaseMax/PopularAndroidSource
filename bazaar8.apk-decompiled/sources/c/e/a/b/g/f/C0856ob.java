package c.e.a.b.g.f;

import android.os.IBinder;
import android.os.IInterface;

/* renamed from: c.e.a.b.g.f.ob  reason: case insensitive filesystem */
public abstract class C0856ob extends C0869s implements Sa {
    public static Sa a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        if (queryLocalInterface instanceof Sa) {
            return (Sa) queryLocalInterface;
        }
        return new Lb(iBinder);
    }
}
