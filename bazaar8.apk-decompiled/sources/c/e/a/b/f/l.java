package c.e.a.b.f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import c.e.a.b.e.a;
import c.e.a.b.g.d.a;
import c.e.a.b.g.d.c;

public final class l extends a implements k {
    public l(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final c.e.a.b.e.a a(c.e.a.b.e.a aVar, String str, int i2, c.e.a.b.e.a aVar2) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        A.writeInt(i2);
        c.a(A, (IInterface) aVar2);
        Parcel a2 = a(2, A);
        c.e.a.b.e.a a3 = a.C0127a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    public final c.e.a.b.e.a b(c.e.a.b.e.a aVar, String str, int i2, c.e.a.b.e.a aVar2) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        A.writeInt(i2);
        c.a(A, (IInterface) aVar2);
        Parcel a2 = a(3, A);
        c.e.a.b.e.a a3 = a.C0127a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
