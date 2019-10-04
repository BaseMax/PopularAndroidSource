package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Collections;
import java.util.List;

public final class zzag extends zzbfm {
    public static final Parcelable.Creator<zzag> CREATOR = new s();

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f3657a;

    /* renamed from: b  reason: collision with root package name */
    private final PendingIntent f3658b;
    private final String c;

    zzag(List<String> list, PendingIntent pendingIntent, String str) {
        this.f3657a = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f3658b = pendingIntent;
        this.c = str;
    }

    public static zzag zzac(List<String> list) {
        ap.checkNotNull(list, "geofence can't be null.");
        ap.checkArgument(!list.isEmpty(), "Geofences must contains at least one id.");
        return new zzag(list, null, "");
    }

    public static zzag zzb(PendingIntent pendingIntent) {
        ap.checkNotNull(pendingIntent, "PendingIntent can not be null.");
        return new zzag(null, pendingIntent, "");
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzb(parcel, 1, this.f3657a, false);
        el.zza(parcel, 2, (Parcelable) this.f3658b, i, false);
        el.zza(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
