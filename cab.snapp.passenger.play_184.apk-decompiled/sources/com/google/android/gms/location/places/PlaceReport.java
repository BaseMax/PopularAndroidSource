package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public class PlaceReport extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f3651a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3652b;
    private final String c;
    private final String d;

    PlaceReport(int i, String str, String str2, String str3) {
        this.f3651a = i;
        this.f3652b = str;
        this.c = str2;
        this.d = str3;
    }

    public static PlaceReport create(String str, String str2) {
        char c2;
        ap.checkNotNull(str);
        ap.zzgm(str2);
        ap.zzgm(EnvironmentCompat.MEDIA_UNKNOWN);
        boolean z = false;
        switch (EnvironmentCompat.MEDIA_UNKNOWN.hashCode()) {
            case -284840886:
                c2 = 0;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1 || c2 == 2 || c2 == 3 || c2 == 4 || c2 == 5) {
            z = true;
        }
        ap.checkArgument(z, "Invalid source");
        return new PlaceReport(1, str, str2, EnvironmentCompat.MEDIA_UNKNOWN);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return ag.equal(this.f3652b, placeReport.f3652b) && ag.equal(this.c, placeReport.c) && ag.equal(this.d, placeReport.d);
    }

    public String getPlaceId() {
        return this.f3652b;
    }

    public String getTag() {
        return this.c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3652b, this.c, this.d});
    }

    public String toString() {
        ah zzx = ag.zzx(this);
        zzx.zzg("placeId", this.f3652b);
        zzx.zzg("tag", this.c);
        if (!EnvironmentCompat.MEDIA_UNKNOWN.equals(this.d)) {
            zzx.zzg("source", this.d);
        }
        return zzx.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3651a);
        el.zza(parcel, 2, getPlaceId(), false);
        el.zza(parcel, 3, getTag(), false);
        el.zza(parcel, 4, this.d, false);
        el.zzai(parcel, zze);
    }
}
