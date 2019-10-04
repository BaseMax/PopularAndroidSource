package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class w implements Parcelable.Creator<PolygonOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList<LatLng> arrayList2 = null;
        ArrayList<PatternItem> arrayList3 = null;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    arrayList2 = ej.zzc(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    ej.zza(parcel, readInt, arrayList, getClass().getClassLoader());
                    break;
                case 4:
                    f = ej.zzl(parcel, readInt);
                    break;
                case 5:
                    i = ej.zzg(parcel, readInt);
                    break;
                case 6:
                    i2 = ej.zzg(parcel, readInt);
                    break;
                case 7:
                    f2 = ej.zzl(parcel, readInt);
                    break;
                case 8:
                    z = ej.zzc(parcel, readInt);
                    break;
                case 9:
                    z2 = ej.zzc(parcel, readInt);
                    break;
                case 10:
                    z3 = ej.zzc(parcel, readInt);
                    break;
                case 11:
                    i3 = ej.zzg(parcel, readInt);
                    break;
                case 12:
                    arrayList3 = ej.zzc(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        PolygonOptions polygonOptions = new PolygonOptions(arrayList2, arrayList, f, i, i2, f2, z, z2, z3, i3, arrayList3);
        return polygonOptions;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PolygonOptions[i];
    }
}
