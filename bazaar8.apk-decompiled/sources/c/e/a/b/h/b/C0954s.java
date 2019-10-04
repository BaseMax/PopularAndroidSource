package c.e.a.b.h.b;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import c.e.a.b.d.d.C0781d;
import c.e.a.b.d.e;

/* renamed from: c.e.a.b.h.b.s  reason: case insensitive filesystem */
public final class C0954s extends C0781d<C0934l> {
    public C0954s(Context context, Looper looper, C0781d.a aVar, C0781d.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    public final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (queryLocalInterface instanceof C0934l) {
            return (C0934l) queryLocalInterface;
        }
        return new C0940n(iBinder);
    }

    public final int e() {
        return e.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public final String s() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    public final String t() {
        return "com.google.android.gms.measurement.START";
    }
}
