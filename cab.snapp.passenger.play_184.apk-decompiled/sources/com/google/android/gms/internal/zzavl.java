package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;

public final class zzavl extends zzbfm {
    public static final Parcelable.Creator<zzavl> CREATOR = new cp();

    /* renamed from: a  reason: collision with root package name */
    private int f3554a;

    /* renamed from: b  reason: collision with root package name */
    private String f3555b;
    private PendingIntent c;

    public zzavl(String str, PendingIntent pendingIntent) {
        this(str, pendingIntent, (byte) 0);
    }

    zzavl(String str, PendingIntent pendingIntent, byte b2) {
        this.f3554a = 1;
        this.f3555b = (String) ap.checkNotNull(str);
        this.c = (PendingIntent) ap.checkNotNull(pendingIntent);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3554a);
        el.zza(parcel, 2, this.f3555b, false);
        el.zza(parcel, 3, (Parcelable) this.c, i, false);
        el.zzai(parcel, zze);
    }
}
