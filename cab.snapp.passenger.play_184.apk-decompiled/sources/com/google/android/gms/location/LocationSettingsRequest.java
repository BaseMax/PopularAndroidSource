package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest extends zzbfm {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new o();

    /* renamed from: a  reason: collision with root package name */
    private final List<LocationRequest> f3634a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3635b;
    private final boolean c;
    private zzz d;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayList<LocationRequest> f3636a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        private boolean f3637b = false;
        private boolean c = false;
        private zzz d = null;

        public final a addAllLocationRequests(Collection<LocationRequest> collection) {
            for (LocationRequest next : collection) {
                if (next != null) {
                    this.f3636a.add(next);
                }
            }
            return this;
        }

        public final a addLocationRequest(LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.f3636a.add(locationRequest);
            }
            return this;
        }

        public final LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.f3636a, this.f3637b, this.c, null);
        }

        public final a setAlwaysShow(boolean z) {
            this.f3637b = z;
            return this;
        }

        public final a setNeedBle(boolean z) {
            this.c = z;
            return this;
        }
    }

    LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzz zzz) {
        this.f3634a = list;
        this.f3635b = z;
        this.c = z2;
        this.d = zzz;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, Collections.unmodifiableList(this.f3634a), false);
        el.zza(parcel, 2, this.f3635b);
        el.zza(parcel, 3, this.c);
        el.zza(parcel, 5, (Parcelable) this.d, i, false);
        el.zzai(parcel, zze);
    }
}
