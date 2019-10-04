package c.e.a.b.f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import c.e.a.b.e.a;
import c.e.a.b.g.d.a;
import c.e.a.b.g.d.c;

public final class j extends a implements i {
    public j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final c.e.a.b.e.a a(c.e.a.b.e.a aVar, String str, int i2) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        A.writeInt(i2);
        Parcel a2 = a(2, A);
        c.e.a.b.e.a a3 = a.C0127a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    public final int b(c.e.a.b.e.a aVar, String str, boolean z) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        c.a(A, z);
        Parcel a2 = a(3, A);
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final int z() {
        Parcel a2 = a(6, A());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final int a(c.e.a.b.e.a aVar, String str, boolean z) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        c.a(A, z);
        Parcel a2 = a(5, A);
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final c.e.a.b.e.a b(c.e.a.b.e.a aVar, String str, int i2) {
        Parcel A = A();
        c.a(A, (IInterface) aVar);
        A.writeString(str);
        A.writeInt(i2);
        Parcel a2 = a(4, A);
        c.e.a.b.e.a a3 = a.C0127a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
