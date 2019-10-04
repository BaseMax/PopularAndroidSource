package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolygonOptions extends zzbfm {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new w();

    /* renamed from: a  reason: collision with root package name */
    private final List<LatLng> f3728a;

    /* renamed from: b  reason: collision with root package name */
    private final List<List<LatLng>> f3729b;
    private float c;
    private int d;
    private int e;
    private float f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private List<PatternItem> k;

    public PolygonOptions() {
        this.c = 10.0f;
        this.d = -16777216;
        this.e = 0;
        this.f = 0.0f;
        this.g = true;
        this.h = false;
        this.i = false;
        this.j = 0;
        this.k = null;
        this.f3728a = new ArrayList();
        this.f3729b = new ArrayList();
    }

    PolygonOptions(List<LatLng> list, List list2, float f2, int i2, int i3, float f3, boolean z, boolean z2, boolean z3, int i4, List<PatternItem> list3) {
        this.c = 10.0f;
        this.d = -16777216;
        this.e = 0;
        this.f = 0.0f;
        this.g = true;
        this.h = false;
        this.i = false;
        this.j = 0;
        this.k = null;
        this.f3728a = list;
        this.f3729b = list2;
        this.c = f2;
        this.d = i2;
        this.e = i3;
        this.f = f3;
        this.g = z;
        this.h = z2;
        this.i = z3;
        this.j = i4;
        this.k = list3;
    }

    public final PolygonOptions add(LatLng latLng) {
        this.f3728a.add(latLng);
        return this;
    }

    public final PolygonOptions add(LatLng... latLngArr) {
        this.f3728a.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public final PolygonOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.f3728a.add(add);
        }
        return this;
    }

    public final PolygonOptions addHole(Iterable<LatLng> iterable) {
        ArrayList arrayList = new ArrayList();
        for (LatLng add : iterable) {
            arrayList.add(add);
        }
        this.f3729b.add(arrayList);
        return this;
    }

    public final PolygonOptions clickable(boolean z) {
        this.i = z;
        return this;
    }

    public final PolygonOptions fillColor(int i2) {
        this.e = i2;
        return this;
    }

    public final PolygonOptions geodesic(boolean z) {
        this.h = z;
        return this;
    }

    public final int getFillColor() {
        return this.e;
    }

    public final List<List<LatLng>> getHoles() {
        return this.f3729b;
    }

    public final List<LatLng> getPoints() {
        return this.f3728a;
    }

    public final int getStrokeColor() {
        return this.d;
    }

    public final int getStrokeJointType() {
        return this.j;
    }

    public final List<PatternItem> getStrokePattern() {
        return this.k;
    }

    public final float getStrokeWidth() {
        return this.c;
    }

    public final float getZIndex() {
        return this.f;
    }

    public final boolean isClickable() {
        return this.i;
    }

    public final boolean isGeodesic() {
        return this.h;
    }

    public final boolean isVisible() {
        return this.g;
    }

    public final PolygonOptions strokeColor(int i2) {
        this.d = i2;
        return this;
    }

    public final PolygonOptions strokeJointType(int i2) {
        this.j = i2;
        return this;
    }

    public final PolygonOptions strokePattern(List<PatternItem> list) {
        this.k = list;
        return this;
    }

    public final PolygonOptions strokeWidth(float f2) {
        this.c = f2;
        return this;
    }

    public final PolygonOptions visible(boolean z) {
        this.g = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 2, getPoints(), false);
        el.zzd(parcel, 3, this.f3729b, false);
        el.zza(parcel, 4, getStrokeWidth());
        el.zzc(parcel, 5, getStrokeColor());
        el.zzc(parcel, 6, getFillColor());
        el.zza(parcel, 7, getZIndex());
        el.zza(parcel, 8, isVisible());
        el.zza(parcel, 9, isGeodesic());
        el.zza(parcel, 10, isClickable());
        el.zzc(parcel, 11, getStrokeJointType());
        el.zzc(parcel, 12, getStrokePattern(), false);
        el.zzai(parcel, zze);
    }

    public final PolygonOptions zIndex(float f2) {
        this.f = f2;
        return this;
    }
}
