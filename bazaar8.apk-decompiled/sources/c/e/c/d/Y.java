package c.e.c.d;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;

public final class Y implements W {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f11637a;

    public Y(IBinder iBinder) {
        this.f11637a = iBinder;
    }

    public final void a(Message message) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
        obtain.writeInt(1);
        message.writeToParcel(obtain, 0);
        try {
            this.f11637a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public final IBinder asBinder() {
        return this.f11637a;
    }
}
