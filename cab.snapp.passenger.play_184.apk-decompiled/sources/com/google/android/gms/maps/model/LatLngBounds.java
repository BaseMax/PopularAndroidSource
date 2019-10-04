package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class LatLngBounds extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new q();
    public final LatLng northeast;
    public final LatLng southwest;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private double f3720a = Double.POSITIVE_INFINITY;

        /* renamed from: b  reason: collision with root package name */
        private double f3721b = Double.NEGATIVE_INFINITY;
        private double c = Double.NaN;
        private double d = Double.NaN;

        public final LatLngBounds build() {
            ap.zza(!Double.isNaN(this.c), (Object) "no included points");
            return new LatLngBounds(new LatLng(this.f3720a, this.c), new LatLng(this.f3721b, this.d));
        }

        public final a include(LatLng latLng) {
            this.f3720a = Math.min(this.f3720a, latLng.latitude);
            this.f3721b = Math.max(this.f3721b, latLng.latitude);
            double d2 = latLng.longitude;
            if (Double.isNaN(this.c)) {
                this.c = d2;
            } else {
                double d3 = this.c;
                double d4 = this.d;
                boolean z = false;
                if (d3 > d4 ? d3 <= d2 || d2 <= d4 : d3 <= d2 && d2 <= d4) {
                    z = true;
                }
                if (!z) {
                    if (LatLngBounds.c(this.c, d2) < LatLngBounds.d(this.d, d2)) {
                        this.c = d2;
                    }
                }
                return this;
            }
            this.d = d2;
            return this;
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        ap.checkNotNull(latLng, "null southwest");
        ap.checkNotNull(latLng2, "null northeast");
        ap.zzb(latLng2.latitude >= latLng.latitude, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.latitude), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    private final boolean a(double d) {
        int i = (this.southwest.longitude > this.northeast.longitude ? 1 : (this.southwest.longitude == this.northeast.longitude ? 0 : -1));
        int i2 = (this.southwest.longitude > d ? 1 : (this.southwest.longitude == d ? 0 : -1));
        return i <= 0 ? i2 <= 0 && d <= this.northeast.longitude : i2 <= 0 || d <= this.northeast.longitude;
    }

    public static a builder() {
        return new a();
    }

    /* access modifiers changed from: private */
    public static double c(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        if (!(context == null || attributeSet == null)) {
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, a.d.MapAttrs);
            Float valueOf = obtainAttributes.hasValue(a.d.MapAttrs_latLngBoundsSouthWestLatitude) ? Float.valueOf(obtainAttributes.getFloat(a.d.MapAttrs_latLngBoundsSouthWestLatitude, 0.0f)) : null;
            Float valueOf2 = obtainAttributes.hasValue(a.d.MapAttrs_latLngBoundsSouthWestLongitude) ? Float.valueOf(obtainAttributes.getFloat(a.d.MapAttrs_latLngBoundsSouthWestLongitude, 0.0f)) : null;
            Float valueOf3 = obtainAttributes.hasValue(a.d.MapAttrs_latLngBoundsNorthEastLatitude) ? Float.valueOf(obtainAttributes.getFloat(a.d.MapAttrs_latLngBoundsNorthEastLatitude, 0.0f)) : null;
            Float valueOf4 = obtainAttributes.hasValue(a.d.MapAttrs_latLngBoundsNorthEastLongitude) ? Float.valueOf(obtainAttributes.getFloat(a.d.MapAttrs_latLngBoundsNorthEastLongitude, 0.0f)) : null;
            if (!(valueOf == null || valueOf2 == null || valueOf3 == null || valueOf4 == null)) {
                return new LatLngBounds(new LatLng((double) valueOf.floatValue(), (double) valueOf2.floatValue()), new LatLng((double) valueOf3.floatValue(), (double) valueOf4.floatValue()));
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    public static double d(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    public final boolean contains(LatLng latLng) {
        double d = latLng.latitude;
        return ((this.southwest.latitude > d ? 1 : (this.southwest.latitude == d ? 0 : -1)) <= 0 && (d > this.northeast.latitude ? 1 : (d == this.northeast.latitude ? 0 : -1)) <= 0) && a(latLng.longitude);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public final LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        double d2 = this.northeast.longitude;
        double d3 = this.southwest.longitude;
        if (d3 > d2) {
            d2 += 360.0d;
        }
        return new LatLng(d, (d2 + d3) / 2.0d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.southwest, this.northeast});
    }

    public final LatLngBounds including(LatLng latLng) {
        double min = Math.min(this.southwest.latitude, latLng.latitude);
        double max = Math.max(this.northeast.latitude, latLng.latitude);
        double d = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        double d3 = latLng.longitude;
        if (!a(d3)) {
            if (c(d2, d3) < d(d, d3)) {
                d2 = d3;
            } else {
                d = d3;
            }
        }
        return new LatLngBounds(new LatLng(min, d2), new LatLng(max, d));
    }

    public final String toString() {
        return ag.zzx(this).zzg("southwest", this.southwest).zzg("northeast", this.northeast).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) this.southwest, i, false);
        el.zza(parcel, 3, (Parcelable) this.northeast, i, false);
        el.zzai(parcel, zze);
    }
}
