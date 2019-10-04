package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public final class GoogleMapOptions extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new l();

    /* renamed from: a  reason: collision with root package name */
    private Boolean f3663a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f3664b;
    private int c = -1;
    private CameraPosition d;
    private Boolean e;
    private Boolean f;
    private Boolean g;
    private Boolean h;
    private Boolean i;
    private Boolean j;
    private Boolean k;
    private Boolean l;
    private Boolean m;
    private Float n = null;
    private Float o = null;
    private LatLngBounds p = null;

    public GoogleMapOptions() {
    }

    GoogleMapOptions(byte b2, byte b3, int i2, CameraPosition cameraPosition, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11, byte b12, Float f2, Float f3, LatLngBounds latLngBounds) {
        this.f3663a = m.zza(b2);
        this.f3664b = m.zza(b3);
        this.c = i2;
        this.d = cameraPosition;
        this.e = m.zza(b4);
        this.f = m.zza(b5);
        this.g = m.zza(b6);
        this.h = m.zza(b7);
        this.i = m.zza(b8);
        this.j = m.zza(b9);
        this.k = m.zza(b10);
        this.l = m.zza(b11);
        this.m = m.zza(b12);
        this.n = f2;
        this.o = f3;
        this.p = latLngBounds;
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, a.d.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(a.d.MapAttrs_mapType)) {
            googleMapOptions.mapType(obtainAttributes.getInt(a.d.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(a.d.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(a.d.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiCompass)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiRotateGestures)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiScrollGestures)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiTiltGestures)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_liteMode)) {
            googleMapOptions.liteMode(obtainAttributes.getBoolean(a.d.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_uiMapToolbar)) {
            googleMapOptions.mapToolbarEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_ambientEnabled)) {
            googleMapOptions.ambientEnabled(obtainAttributes.getBoolean(a.d.MapAttrs_ambientEnabled, false));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.minZoomPreference(obtainAttributes.getFloat(a.d.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(a.d.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.maxZoomPreference(obtainAttributes.getFloat(a.d.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
        }
        googleMapOptions.latLngBoundsForCameraTarget(LatLngBounds.createFromAttributes(context, attributeSet));
        googleMapOptions.camera(CameraPosition.createFromAttributes(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    public final GoogleMapOptions ambientEnabled(boolean z) {
        this.m = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.d = cameraPosition;
        return this;
    }

    public final GoogleMapOptions compassEnabled(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    public final Boolean getAmbientEnabled() {
        return this.m;
    }

    public final CameraPosition getCamera() {
        return this.d;
    }

    public final Boolean getCompassEnabled() {
        return this.f;
    }

    public final LatLngBounds getLatLngBoundsForCameraTarget() {
        return this.p;
    }

    public final Boolean getLiteMode() {
        return this.k;
    }

    public final Boolean getMapToolbarEnabled() {
        return this.l;
    }

    public final int getMapType() {
        return this.c;
    }

    public final Float getMaxZoomPreference() {
        return this.o;
    }

    public final Float getMinZoomPreference() {
        return this.n;
    }

    public final Boolean getRotateGesturesEnabled() {
        return this.j;
    }

    public final Boolean getScrollGesturesEnabled() {
        return this.g;
    }

    public final Boolean getTiltGesturesEnabled() {
        return this.i;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.f3664b;
    }

    public final Boolean getZOrderOnTop() {
        return this.f3663a;
    }

    public final Boolean getZoomControlsEnabled() {
        return this.e;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.h;
    }

    public final GoogleMapOptions latLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.p = latLngBounds;
        return this;
    }

    public final GoogleMapOptions liteMode(boolean z) {
        this.k = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapToolbarEnabled(boolean z) {
        this.l = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapType(int i2) {
        this.c = i2;
        return this;
    }

    public final GoogleMapOptions maxZoomPreference(float f2) {
        this.o = Float.valueOf(f2);
        return this;
    }

    public final GoogleMapOptions minZoomPreference(float f2) {
        this.n = Float.valueOf(f2);
        return this;
    }

    public final GoogleMapOptions rotateGesturesEnabled(boolean z) {
        this.j = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions scrollGesturesEnabled(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions tiltGesturesEnabled(boolean z) {
        this.i = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        return ag.zzx(this).zzg("MapType", Integer.valueOf(this.c)).zzg("LiteMode", this.k).zzg("Camera", this.d).zzg("CompassEnabled", this.f).zzg("ZoomControlsEnabled", this.e).zzg("ScrollGesturesEnabled", this.g).zzg("ZoomGesturesEnabled", this.h).zzg("TiltGesturesEnabled", this.i).zzg("RotateGesturesEnabled", this.j).zzg("MapToolbarEnabled", this.l).zzg("AmbientEnabled", this.m).zzg("MinZoomPreference", this.n).zzg("MaxZoomPreference", this.o).zzg("LatLngBoundsForCameraTarget", this.p).zzg("ZOrderOnTop", this.f3663a).zzg("UseViewLifecycleInFragment", this.f3664b).toString();
    }

    public final GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.f3664b = Boolean.valueOf(z);
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, m.zzb(this.f3663a));
        el.zza(parcel, 3, m.zzb(this.f3664b));
        el.zzc(parcel, 4, getMapType());
        el.zza(parcel, 5, (Parcelable) getCamera(), i2, false);
        el.zza(parcel, 6, m.zzb(this.e));
        el.zza(parcel, 7, m.zzb(this.f));
        el.zza(parcel, 8, m.zzb(this.g));
        el.zza(parcel, 9, m.zzb(this.h));
        el.zza(parcel, 10, m.zzb(this.i));
        el.zza(parcel, 11, m.zzb(this.j));
        el.zza(parcel, 12, m.zzb(this.k));
        el.zza(parcel, 14, m.zzb(this.l));
        el.zza(parcel, 15, m.zzb(this.m));
        el.zza(parcel, 16, getMinZoomPreference(), false);
        el.zza(parcel, 17, getMaxZoomPreference(), false);
        el.zza(parcel, 18, (Parcelable) getLatLngBoundsForCameraTarget(), i2, false);
        el.zzai(parcel, zze);
    }

    public final GoogleMapOptions zOrderOnTop(boolean z) {
        this.f3663a = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomControlsEnabled(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomGesturesEnabled(boolean z) {
        this.h = Boolean.valueOf(z);
        return this;
    }
}
