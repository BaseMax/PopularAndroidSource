package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new r();

    /* renamed from: a  reason: collision with root package name */
    private StreetViewPanoramaCamera f3668a;

    /* renamed from: b  reason: collision with root package name */
    private String f3669b;
    private LatLng c;
    private Integer d;
    private Boolean e = Boolean.TRUE;
    private Boolean f = Boolean.TRUE;
    private Boolean g = Boolean.TRUE;
    private Boolean h = Boolean.TRUE;
    private Boolean i;

    public StreetViewPanoramaOptions() {
    }

    StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b2, byte b3, byte b4, byte b5, byte b6) {
        this.f3668a = streetViewPanoramaCamera;
        this.c = latLng;
        this.d = num;
        this.f3669b = str;
        this.e = m.zza(b2);
        this.f = m.zza(b3);
        this.g = m.zza(b4);
        this.h = m.zza(b5);
        this.i = m.zza(b6);
    }

    public final Boolean getPanningGesturesEnabled() {
        return this.g;
    }

    public final String getPanoramaId() {
        return this.f3669b;
    }

    public final LatLng getPosition() {
        return this.c;
    }

    public final Integer getRadius() {
        return this.d;
    }

    public final Boolean getStreetNamesEnabled() {
        return this.h;
    }

    public final StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.f3668a;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.i;
    }

    public final Boolean getUserNavigationEnabled() {
        return this.e;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.f;
    }

    public final StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.f3668a = streetViewPanoramaCamera;
        return this;
    }

    public final StreetViewPanoramaOptions panoramaId(String str) {
        this.f3669b = str;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng) {
        this.c = latLng;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.c = latLng;
        this.d = num;
        return this;
    }

    public final StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.h = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        return ag.zzx(this).zzg("PanoramaId", this.f3669b).zzg("Position", this.c).zzg("Radius", this.d).zzg("StreetViewPanoramaCamera", this.f3668a).zzg("UserNavigationEnabled", this.e).zzg("ZoomGesturesEnabled", this.f).zzg("PanningGesturesEnabled", this.g).zzg("StreetNamesEnabled", this.h).zzg("UseViewLifecycleInFragment", this.i).toString();
    }

    public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.i = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) getStreetViewPanoramaCamera(), i2, false);
        el.zza(parcel, 3, getPanoramaId(), false);
        el.zza(parcel, 4, (Parcelable) getPosition(), i2, false);
        el.zza(parcel, 5, getRadius(), false);
        el.zza(parcel, 6, m.zzb(this.e));
        el.zza(parcel, 7, m.zzb(this.f));
        el.zza(parcel, 8, m.zzb(this.g));
        el.zza(parcel, 9, m.zzb(this.h));
        el.zza(parcel, 10, m.zzb(this.i));
        el.zzai(parcel, zze);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }
}
