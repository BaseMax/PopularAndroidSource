package c.e.a.b.g.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f10107a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10108b;

    public a(IBinder iBinder, String str) {
        this.f10107a = iBinder;
        this.f10108b = str;
    }

    public final Parcel A() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f10108b);
        return obtain;
    }

    public final Parcel a(int i2, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f10107a.transact(i2, parcel, parcel, 0);
            parcel.readException();
            return parcel;
        } catch (RuntimeException e2) {
            throw e2;
        } finally {
            parcel.recycle();
        }
    }

    public IBinder asBinder() {
        return this.f10107a;
    }
}
