package c.e.a.b.g.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.1.0 */
public class b implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f10097a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10098b;

    public b(IBinder iBinder, String str) {
        this.f10097a = iBinder;
        this.f10098b = str;
    }

    public final Parcel A() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f10098b);
        return obtain;
    }

    public final void a(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f10097a.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.f10097a;
    }
}
