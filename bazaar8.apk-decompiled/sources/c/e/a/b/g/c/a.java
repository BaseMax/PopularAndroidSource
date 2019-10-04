package c.e.a.b.g.c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f10104a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10105b;

    public a(IBinder iBinder, String str) {
        this.f10104a = iBinder;
        this.f10105b = str;
    }

    public final Parcel A() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f10105b);
        return obtain;
    }

    public final void a(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f10104a.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.f10104a;
    }
}
