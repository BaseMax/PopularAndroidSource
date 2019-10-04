package c.e.a.b.g.f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: c.e.a.b.g.f.a  reason: case insensitive filesystem */
public class C0798a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f10313a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10314b;

    public C0798a(IBinder iBinder, String str) {
        this.f10313a = iBinder;
        this.f10314b = str;
    }

    public final Parcel A() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f10314b);
        return obtain;
    }

    public final Parcel a(int i2, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f10313a.transact(i2, parcel, parcel, 0);
            parcel.readException();
            return parcel;
        } catch (RuntimeException e2) {
            throw e2;
        } finally {
            parcel.recycle();
        }
    }

    public IBinder asBinder() {
        return this.f10313a;
    }

    public final void b(int i2, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f10313a.transact(i2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
