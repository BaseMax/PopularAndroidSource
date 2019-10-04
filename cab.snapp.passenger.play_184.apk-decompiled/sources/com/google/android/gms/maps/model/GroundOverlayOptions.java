package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.a.a;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class GroundOverlayOptions extends zzbfm {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new p();
    public static final float NO_DIMENSION = -1.0f;

    /* renamed from: a  reason: collision with root package name */
    private a f3718a;

    /* renamed from: b  reason: collision with root package name */
    private LatLng f3719b;
    private float c;
    private float d;
    private LatLngBounds e;
    private float f;
    private float g;
    private boolean h = true;
    private float i = 0.0f;
    private float j = 0.5f;
    private float k = 0.5f;
    private boolean l = false;

    public GroundOverlayOptions() {
    }

    GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f2, float f3, LatLngBounds latLngBounds, float f4, float f5, boolean z, float f6, float f7, float f8, boolean z2) {
        this.f3718a = new a(a.C0060a.zzaq(iBinder));
        this.f3719b = latLng;
        this.c = f2;
        this.d = f3;
        this.e = latLngBounds;
        this.f = f4;
        this.g = f5;
        this.h = z;
        this.i = f6;
        this.j = f7;
        this.k = f8;
        this.l = z2;
    }

    private final GroundOverlayOptions a(LatLng latLng, float f2, float f3) {
        this.f3719b = latLng;
        this.c = f2;
        this.d = f3;
        return this;
    }

    public final GroundOverlayOptions anchor(float f2, float f3) {
        this.j = f2;
        this.k = f3;
        return this;
    }

    public final GroundOverlayOptions bearing(float f2) {
        this.f = ((f2 % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public final GroundOverlayOptions clickable(boolean z) {
        this.l = z;
        return this;
    }

    public final float getAnchorU() {
        return this.j;
    }

    public final float getAnchorV() {
        return this.k;
    }

    public final float getBearing() {
        return this.f;
    }

    public final LatLngBounds getBounds() {
        return this.e;
    }

    public final float getHeight() {
        return this.d;
    }

    public final a getImage() {
        return this.f3718a;
    }

    public final LatLng getLocation() {
        return this.f3719b;
    }

    public final float getTransparency() {
        return this.i;
    }

    public final float getWidth() {
        return this.c;
    }

    public final float getZIndex() {
        return this.g;
    }

    public final GroundOverlayOptions image(a aVar) {
        ap.checkNotNull(aVar, "imageDescriptor must not be null");
        this.f3718a = aVar;
        return this;
    }

    public final boolean isClickable() {
        return this.l;
    }

    public final boolean isVisible() {
        return this.h;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f2) {
        boolean z = true;
        ap.zza(this.e == null, (Object) "Position has already been set using positionFromBounds");
        ap.checkArgument(latLng != null, "Location must be specified");
        if (f2 < 0.0f) {
            z = false;
        }
        ap.checkArgument(z, "Width must be non-negative");
        return a(latLng, f2, -1.0f);
    }

    public final GroundOverlayOptions position(LatLng latLng, float f2, float f3) {
        boolean z = true;
        ap.zza(this.e == null, (Object) "Position has already been set using positionFromBounds");
        ap.checkArgument(latLng != null, "Location must be specified");
        ap.checkArgument(f2 >= 0.0f, "Width must be non-negative");
        if (f3 < 0.0f) {
            z = false;
        }
        ap.checkArgument(z, "Height must be non-negative");
        return a(latLng, f2, f3);
    }

    public final GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        boolean z = this.f3719b == null;
        String valueOf = String.valueOf(this.f3719b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
        sb.append("Position has already been set using position: ");
        sb.append(valueOf);
        ap.zza(z, (Object) sb.toString());
        this.e = latLngBounds;
        return this;
    }

    public final GroundOverlayOptions transparency(float f2) {
        ap.checkArgument(f2 >= 0.0f && f2 <= 1.0f, "Transparency must be in the range [0..1]");
        this.i = f2;
        return this;
    }

    public final GroundOverlayOptions visible(boolean z) {
        this.h = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f3718a.zzavz().asBinder(), false);
        el.zza(parcel, 3, (Parcelable) getLocation(), i2, false);
        el.zza(parcel, 4, getWidth());
        el.zza(parcel, 5, getHeight());
        el.zza(parcel, 6, (Parcelable) getBounds(), i2, false);
        el.zza(parcel, 7, getBearing());
        el.zza(parcel, 8, getZIndex());
        el.zza(parcel, 9, isVisible());
        el.zza(parcel, 10, getTransparency());
        el.zza(parcel, 11, getAnchorU());
        el.zza(parcel, 12, getAnchorV());
        el.zza(parcel, 13, isClickable());
        el.zzai(parcel, zze);
    }

    public final GroundOverlayOptions zIndex(float f2) {
        this.g = f2;
        return this;
    }
}
