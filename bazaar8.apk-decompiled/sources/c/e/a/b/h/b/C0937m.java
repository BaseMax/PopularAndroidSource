package c.e.a.b.h.b;

import android.os.Parcel;
import c.e.a.b.g.f.C0869s;
import c.e.a.b.g.f.V;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;
import java.util.List;

/* renamed from: c.e.a.b.h.b.m  reason: case insensitive filesystem */
public abstract class C0937m extends C0869s implements C0934l {
    public C0937m() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                a((zzaj) V.a(parcel, zzaj.CREATOR), (zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            case 2:
                a((zzga) V.a(parcel, zzga.CREATOR), (zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            case 4:
                d((zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            case 5:
                a((zzaj) V.a(parcel, zzaj.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                break;
            case 6:
                b((zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            case 7:
                List<zzga> a2 = a((zzm) V.a(parcel, zzm.CREATOR), V.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a2);
                break;
            case 9:
                byte[] a3 = a((zzaj) V.a(parcel, zzaj.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(a3);
                break;
            case 10:
                a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                break;
            case 11:
                String c2 = c((zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(c2);
                break;
            case 12:
                a((zzr) V.a(parcel, zzr.CREATOR), (zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            case 13:
                a((zzr) V.a(parcel, zzr.CREATOR));
                parcel2.writeNoException();
                break;
            case 14:
                List<zzga> a4 = a(parcel.readString(), parcel.readString(), V.a(parcel), (zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                break;
            case 15:
                List<zzga> a5 = a(parcel.readString(), parcel.readString(), parcel.readString(), V.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                break;
            case 16:
                List<zzr> a6 = a(parcel.readString(), parcel.readString(), (zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a6);
                break;
            case 17:
                List<zzr> a7 = a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a7);
                break;
            case 18:
                a((zzm) V.a(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                break;
            default:
                return false;
        }
        return true;
    }
}
