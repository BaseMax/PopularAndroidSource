package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.List;

public final class CircleOptions extends zzbfm {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new o();

    /* renamed from: a  reason: collision with root package name */
    private LatLng f3716a = null;

    /* renamed from: b  reason: collision with root package name */
    private double f3717b = 0.0d;
    private float c = 10.0f;
    private int d = -16777216;
    private int e = 0;
    private float f = 0.0f;
    private boolean g = true;
    private boolean h = false;
    private List<PatternItem> i = null;

    public CircleOptions() {
    }

    CircleOptions(LatLng latLng, double d2, float f2, int i2, int i3, float f3, boolean z, boolean z2, List<PatternItem> list) {
        this.f3716a = latLng;
        this.f3717b = d2;
        this.c = f2;
        this.d = i2;
        this.e = i3;
        this.f = f3;
        this.g = z;
        this.h = z2;
        this.i = list;
    }

    public final CircleOptions center(LatLng latLng) {
        this.f3716a = latLng;
        return this;
    }

    public final CircleOptions clickable(boolean z) {
        this.h = z;
        return this;
    }

    public final CircleOptions fillColor(int i2) {
        this.e = i2;
        return this;
    }

    public final LatLng getCenter() {
        return this.f3716a;
    }

    public final int getFillColor() {
        return this.e;
    }

    public final double getRadius() {
        return this.f3717b;
    }

    public final int getStrokeColor() {
        return this.d;
    }

    public final List<PatternItem> getStrokePattern() {
        return this.i;
    }

    public final float getStrokeWidth() {
        return this.c;
    }

    public final float getZIndex() {
        return this.f;
    }

    public final boolean isClickable() {
        return this.h;
    }

    public final boolean isVisible() {
        return this.g;
    }

    public final CircleOptions radius(double d2) {
        this.f3717b = d2;
        return this;
    }

    public final CircleOptions strokeColor(int i2) {
        this.d = i2;
        return this;
    }

    public final CircleOptions strokePattern(List<PatternItem> list) {
        this.i = list;
        return this;
    }

    public final CircleOptions strokeWidth(float f2) {
        this.c = f2;
        return this;
    }

    public final CircleOptions visible(boolean z) {
        this.g = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, (Parcelable) getCenter(), i2, false);
        el.zza(parcel, 3, getRadius());
        el.zza(parcel, 4, getStrokeWidth());
        el.zzc(parcel, 5, getStrokeColor());
        el.zzc(parcel, 6, getFillColor());
        el.zza(parcel, 7, getZIndex());
        el.zza(parcel, 8, isVisible());
        el.zza(parcel, 9, isClickable());
        el.zzc(parcel, 10, getStrokePattern(), false);
        el.zzai(parcel, zze);
    }

    public final CircleOptions zIndex(float f2) {
        this.f = f2;
        return this;
    }
}
