package c.e.a.b.h.b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.g.f.C0798a;
import c.e.a.b.g.f.V;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.e.a.b.h.b.n  reason: case insensitive filesystem */
public final class C0940n extends C0798a implements C0934l {
    public C0940n(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    public final void a(zzaj zzaj, zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzaj);
        V.a(A, (Parcelable) zzm);
        b(1, A);
    }

    public final void b(zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzm);
        b(6, A);
    }

    public final String c(zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzm);
        Parcel a2 = a(11, A);
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final void d(zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzm);
        b(4, A);
    }

    public final void a(zzga zzga, zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzga);
        V.a(A, (Parcelable) zzm);
        b(2, A);
    }

    public final void a(zzaj zzaj, String str, String str2) {
        Parcel A = A();
        V.a(A, (Parcelable) zzaj);
        A.writeString(str);
        A.writeString(str2);
        b(5, A);
    }

    public final byte[] a(zzaj zzaj, String str) {
        Parcel A = A();
        V.a(A, (Parcelable) zzaj);
        A.writeString(str);
        Parcel a2 = a(9, A);
        byte[] createByteArray = a2.createByteArray();
        a2.recycle();
        return createByteArray;
    }

    public final void a(long j2, String str, String str2, String str3) {
        Parcel A = A();
        A.writeLong(j2);
        A.writeString(str);
        A.writeString(str2);
        A.writeString(str3);
        b(10, A);
    }

    public final void a(zzr zzr, zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzr);
        V.a(A, (Parcelable) zzm);
        b(12, A);
    }

    public final void a(zzr zzr) {
        Parcel A = A();
        V.a(A, (Parcelable) zzr);
        b(13, A);
    }

    public final List<zzga> a(String str, String str2, boolean z, zzm zzm) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, z);
        V.a(A, (Parcelable) zzm);
        Parcel a2 = a(14, A);
        ArrayList<zzga> createTypedArrayList = a2.createTypedArrayList(zzga.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final List<zzga> a(String str, String str2, String str3, boolean z) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        A.writeString(str3);
        V.a(A, z);
        Parcel a2 = a(15, A);
        ArrayList<zzga> createTypedArrayList = a2.createTypedArrayList(zzga.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final List<zzr> a(String str, String str2, zzm zzm) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (Parcelable) zzm);
        Parcel a2 = a(16, A);
        ArrayList<zzr> createTypedArrayList = a2.createTypedArrayList(zzr.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final List<zzr> a(String str, String str2, String str3) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        A.writeString(str3);
        Parcel a2 = a(17, A);
        ArrayList<zzr> createTypedArrayList = a2.createTypedArrayList(zzr.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    public final void a(zzm zzm) {
        Parcel A = A();
        V.a(A, (Parcelable) zzm);
        b(18, A);
    }
}
