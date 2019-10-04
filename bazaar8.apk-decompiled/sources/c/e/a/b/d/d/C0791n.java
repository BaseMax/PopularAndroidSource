package c.e.a.b.d.d;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import c.e.a.b.g.d.b;
import c.e.a.b.g.d.c;
import com.google.android.gms.common.internal.zzb;

/* renamed from: c.e.a.b.d.d.n  reason: case insensitive filesystem */
public interface C0791n extends IInterface {

    /* renamed from: c.e.a.b.d.d.n$a */
    public static abstract class a extends b implements C0791n {
        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) c.a(parcel, Bundle.CREATOR));
            } else if (i2 == 2) {
                b(parcel.readInt(), (Bundle) c.a(parcel, Bundle.CREATOR));
            } else if (i2 != 3) {
                return false;
            } else {
                a(parcel.readInt(), parcel.readStrongBinder(), (zzb) c.a(parcel, zzb.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i2, IBinder iBinder, Bundle bundle);

    void a(int i2, IBinder iBinder, zzb zzb);

    void b(int i2, Bundle bundle);
}
