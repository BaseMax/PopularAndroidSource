package c.e.a.b.d.d;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.GetServiceRequest;

/* renamed from: c.e.a.b.d.d.o  reason: case insensitive filesystem */
public final class C0792o implements C0793p {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f10026a;

    public C0792o(IBinder iBinder) {
        this.f10026a = iBinder;
    }

    public final void a(C0791n nVar, GetServiceRequest getServiceRequest) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(nVar != null ? nVar.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                getServiceRequest.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f10026a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final IBinder asBinder() {
        return this.f10026a;
    }
}
