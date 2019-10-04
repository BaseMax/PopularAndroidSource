package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class Tile extends zzbfm {
    public static final Parcelable.Creator<Tile> CREATOR = new ac();
    public final byte[] data;
    public final int height;
    public final int width;

    public Tile(int i, int i2, byte[] bArr) {
        this.width = i;
        this.height = i2;
        this.data = bArr;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 2, this.width);
        el.zzc(parcel, 3, this.height);
        el.zza(parcel, 4, this.data, false);
        el.zzai(parcel, zze);
    }
}
