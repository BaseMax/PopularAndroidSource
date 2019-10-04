package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.util.j;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.io.IOException;

public final class MapStyleOptions extends zzbfm {
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new s();

    /* renamed from: a  reason: collision with root package name */
    private static final String f3722a = MapStyleOptions.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private String f3723b;

    public MapStyleOptions(String str) {
        this.f3723b = str;
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i) throws Resources.NotFoundException {
        try {
            return new MapStyleOptions(new String(j.zza(context.getResources().openRawResource(i), true), "UTF-8"));
        } catch (IOException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 37);
            sb.append("Failed to read resource ");
            sb.append(i);
            sb.append(": ");
            sb.append(valueOf);
            throw new Resources.NotFoundException(sb.toString());
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f3723b, false);
        el.zzai(parcel, zze);
    }
}
