package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public class DeviceMetaData extends zzbfm {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    private int f2614a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2615b;
    private long c;
    private final boolean d;

    DeviceMetaData(int i, boolean z, long j, boolean z2) {
        this.f2614a = i;
        this.f2615b = z;
        this.c = j;
        this.d = z2;
    }

    public long getMinAgeOfLockScreen() {
        return this.c;
    }

    public boolean isChallengeAllowed() {
        return this.d;
    }

    public boolean isLockScreenSolved() {
        return this.f2615b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2614a);
        el.zza(parcel, 2, isLockScreenSolved());
        el.zza(parcel, 3, getMinAgeOfLockScreen());
        el.zza(parcel, 4, isChallengeAllowed());
        el.zzai(parcel, zze);
    }
}
