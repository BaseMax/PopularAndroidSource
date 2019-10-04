package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;

public final class MarkerOptions extends zzbfm {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new t();

    /* renamed from: a  reason: collision with root package name */
    private LatLng f3724a;

    /* renamed from: b  reason: collision with root package name */
    private String f3725b;
    private String c;
    private a d;
    private float e = 0.5f;
    private float f = 1.0f;
    private boolean g;
    private boolean h = true;
    private boolean i = false;
    private float j = 0.0f;
    private float k = 0.5f;
    private float l = 0.0f;
    private float m = 1.0f;
    private float n;

    public MarkerOptions() {
    }

    MarkerOptions(LatLng latLng, String str, String str2, IBinder iBinder, float f2, float f3, boolean z, boolean z2, boolean z3, float f4, float f5, float f6, float f7, float f8) {
        this.f3724a = latLng;
        this.f3725b = str;
        this.c = str2;
        this.d = iBinder == null ? null : new a(a.C0060a.zzaq(iBinder));
        this.e = f2;
        this.f = f3;
        this.g = z;
        this.h = z2;
        this.i = z3;
        this.j = f4;
        this.k = f5;
        this.l = f6;
        this.m = f7;
        this.n = f8;
    }

    public final MarkerOptions alpha(float f2) {
        this.m = f2;
        return this;
    }

    public final MarkerOptions anchor(float f2, float f3) {
        this.e = f2;
        this.f = f3;
        return this;
    }

    public final MarkerOptions draggable(boolean z) {
        this.g = z;
        return this;
    }

    public final MarkerOptions flat(boolean z) {
        this.i = z;
        return this;
    }

    public final float getAlpha() {
        return this.m;
    }

    public final float getAnchorU() {
        return this.e;
    }

    public final float getAnchorV() {
        return this.f;
    }

    public final a getIcon() {
        return this.d;
    }

    public final float getInfoWindowAnchorU() {
        return this.k;
    }

    public final float getInfoWindowAnchorV() {
        return this.l;
    }

    public final LatLng getPosition() {
        return this.f3724a;
    }

    public final float getRotation() {
        return this.j;
    }

    public final String getSnippet() {
        return this.c;
    }

    public final String getTitle() {
        return this.f3725b;
    }

    public final float getZIndex() {
        return this.n;
    }

    public final MarkerOptions icon(a aVar) {
        this.d = aVar;
        return this;
    }

    public final MarkerOptions infoWindowAnchor(float f2, float f3) {
        this.k = f2;
        this.l = f3;
        return this;
    }

    public final boolean isDraggable() {
        return this.g;
    }

    public final boolean isFlat() {
        return this.i;
    }

    public final boolean isVisible() {
        return this.h;
    }

    public final MarkerOptions position(LatLng latLng) {
        if (latLng != null) {
            this.f3724a = latLng;
            return this;
        }
        throw new IllegalArgumentException("latlng cannot be null - a position is required.");
    }

    public final MarkerOptions rotation(float f2) {
        this.j = f2;
        return this;
    }

    public final MarkerOptions snippet(String str) {
        this.c = str;
        return this;
    }

    public final MarkerOptions title(String str) {
        this.f3725b = str;
        return this;
    }

    public final MarkerOptions visible(boolean z) {
        this.h = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) getPosition(), i2, false);
        el.zza(parcel, 3, getTitle(), false);
        el.zza(parcel, 4, getSnippet(), false);
        a aVar = this.d;
        el.zza(parcel, 5, aVar == null ? null : aVar.zzavz().asBinder(), false);
        el.zza(parcel, 6, getAnchorU());
        el.zza(parcel, 7, getAnchorV());
        el.zza(parcel, 8, isDraggable());
        el.zza(parcel, 9, isVisible());
        el.zza(parcel, 10, isFlat());
        el.zza(parcel, 11, getRotation());
        el.zza(parcel, 12, getInfoWindowAnchorU());
        el.zza(parcel, 13, getInfoWindowAnchorV());
        el.zza(parcel, 14, getAlpha());
        el.zza(parcel, 15, getZIndex());
        el.zzai(parcel, zze);
    }

    public final MarkerOptions zIndex(float f2) {
        this.n = f2;
        return this;
    }
}
