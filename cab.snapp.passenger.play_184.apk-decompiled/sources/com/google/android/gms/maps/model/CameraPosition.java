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

public final class CameraPosition extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<CameraPosition> CREATOR = new m();
    public final float bearing;
    public final LatLng target;
    public final float tilt;
    public final float zoom;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private LatLng f3712a;

        /* renamed from: b  reason: collision with root package name */
        private float f3713b;
        private float c;
        private float d;

        public a() {
        }

        public a(CameraPosition cameraPosition) {
            this.f3712a = cameraPosition.target;
            this.f3713b = cameraPosition.zoom;
            this.c = cameraPosition.tilt;
            this.d = cameraPosition.bearing;
        }

        public final a bearing(float f) {
            this.d = f;
            return this;
        }

        public final CameraPosition build() {
            return new CameraPosition(this.f3712a, this.f3713b, this.c, this.d);
        }

        public final a target(LatLng latLng) {
            this.f3712a = latLng;
            return this;
        }

        public final a tilt(float f) {
            this.c = f;
            return this;
        }

        public final a zoom(float f) {
            this.f3713b = f;
            return this;
        }
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        ap.checkNotNull(latLng, "null camera target");
        ap.zzb(0.0f <= f2 && f2 <= 90.0f, "Tilt needs to be between 0 and 90 inclusive: %s", Float.valueOf(f2));
        this.target = latLng;
        this.zoom = f;
        this.tilt = f2 + 0.0f;
        this.bearing = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
    }

    public static a builder() {
        return new a();
    }

    public static a builder(CameraPosition cameraPosition) {
        return new a(cameraPosition);
    }

    public static CameraPosition createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, a.d.MapAttrs);
        LatLng latLng = new LatLng((double) (obtainAttributes.hasValue(a.d.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(a.d.MapAttrs_cameraTargetLat, 0.0f) : 0.0f), (double) (obtainAttributes.hasValue(a.d.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(a.d.MapAttrs_cameraTargetLng, 0.0f) : 0.0f));
        a builder = builder();
        builder.target(latLng);
        if (obtainAttributes.hasValue(a.d.MapAttrs_cameraZoom)) {
            builder.zoom(obtainAttributes.getFloat(a.d.MapAttrs_cameraZoom, 0.0f));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_cameraBearing)) {
            builder.bearing(obtainAttributes.getFloat(a.d.MapAttrs_cameraBearing, 0.0f));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_cameraTilt)) {
            builder.tilt(obtainAttributes.getFloat(a.d.MapAttrs_cameraTilt, 0.0f));
        }
        return builder.build();
    }

    public static final CameraPosition fromLatLngZoom(LatLng latLng, float f) {
        return new CameraPosition(latLng, f, 0.0f, 0.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.target.equals(cameraPosition.target) && Float.floatToIntBits(this.zoom) == Float.floatToIntBits(cameraPosition.zoom) && Float.floatToIntBits(this.tilt) == Float.floatToIntBits(cameraPosition.tilt) && Float.floatToIntBits(this.bearing) == Float.floatToIntBits(cameraPosition.bearing);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.target, Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing)});
    }

    public final String toString() {
        return ag.zzx(this).zzg("target", this.target).zzg("zoom", Float.valueOf(this.zoom)).zzg("tilt", Float.valueOf(this.tilt)).zzg("bearing", Float.valueOf(this.bearing)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) this.target, i, false);
        el.zza(parcel, 3, this.zoom);
        el.zza(parcel, 4, this.tilt);
        el.zza(parcel, 5, this.bearing);
        el.zzai(parcel, zze);
    }
}
