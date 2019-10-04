package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class t implements Parcelable.Creator<ActivityRecognitionResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        long j = 0;
        long j2 = 0;
        ArrayList<DetectedActivity> arrayList = null;
        Bundle bundle = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                arrayList = ej.zzc(parcel, readInt, DetectedActivity.CREATOR);
            } else if (i2 == 2) {
                j = ej.zzi(parcel, readInt);
            } else if (i2 == 3) {
                j2 = ej.zzi(parcel, readInt);
            } else if (i2 == 4) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 5) {
                ej.zzb(parcel, readInt);
            } else {
                bundle = ej.zzs(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        ActivityRecognitionResult activityRecognitionResult = new ActivityRecognitionResult(arrayList, j, j2, i, bundle);
        return activityRecognitionResult;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
