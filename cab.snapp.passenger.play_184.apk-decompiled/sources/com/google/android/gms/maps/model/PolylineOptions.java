package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PolylineOptions extends zzbfm {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new x();

    /* renamed from: a  reason: collision with root package name */
    private final List<LatLng> f3730a;

    /* renamed from: b  reason: collision with root package name */
    private float f3731b;
    private int c;
    private float d;
    private boolean e;
    private boolean f;
    private boolean g;
    private Cap h;
    private Cap i;
    private int j;
    private List<PatternItem> k;

    public PolylineOptions() {
        this.f3731b = 10.0f;
        this.c = -16777216;
        this.d = 0.0f;
        this.e = true;
        this.f = false;
        this.g = false;
        this.h = new ButtCap();
        this.i = new ButtCap();
        this.j = 0;
        this.k = null;
        this.f3730a = new ArrayList();
    }

    PolylineOptions(List list, float f2, int i2, float f3, boolean z, boolean z2, boolean z3, Cap cap, Cap cap2, int i3, List<PatternItem> list2) {
        this.f3731b = 10.0f;
        this.c = -16777216;
        this.d = 0.0f;
        this.e = true;
        this.f = false;
        this.g = false;
        this.h = new ButtCap();
        this.i = new ButtCap();
        this.j = 0;
        this.k = null;
        this.f3730a = list;
        this.f3731b = f2;
        this.c = i2;
        this.d = f3;
        this.e = z;
        this.f = z2;
        this.g = z3;
        if (cap != null) {
            this.h = cap;
        }
        if (cap2 != null) {
            this.i = cap2;
        }
        this.j = i3;
        this.k = list2;
    }

    public final PolylineOptions add(LatLng latLng) {
        this.f3730a.add(latLng);
        return this;
    }

    public final PolylineOptions add(LatLng... latLngArr) {
        this.f3730a.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public final PolylineOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.f3730a.add(add);
        }
        return this;
    }

    public final PolylineOptions clickable(boolean z) {
        this.g = z;
        return this;
    }

    public final PolylineOptions color(int i2) {
        this.c = i2;
        return this;
    }

    public final PolylineOptions endCap(Cap cap) {
        this.i = (Cap) ap.checkNotNull(cap, "endCap must not be null");
        return this;
    }

    public final PolylineOptions geodesic(boolean z) {
        this.f = z;
        return this;
    }

    public final int getColor() {
        return this.c;
    }

    public final Cap getEndCap() {
        return this.i;
    }

    public final int getJointType() {
        return this.j;
    }

    public final List<PatternItem> getPattern() {
        return this.k;
    }

    public final List<LatLng> getPoints() {
        return this.f3730a;
    }

    public final Cap getStartCap() {
        return this.h;
    }

    public final float getWidth() {
        return this.f3731b;
    }

    public final float getZIndex() {
        return this.d;
    }

    public final boolean isClickable() {
        return this.g;
    }

    public final boolean isGeodesic() {
        return this.f;
    }

    public final boolean isVisible() {
        return this.e;
    }

    public final PolylineOptions jointType(int i2) {
        this.j = i2;
        return this;
    }

    public final PolylineOptions pattern(List<PatternItem> list) {
        this.k = list;
        return this;
    }

    public final PolylineOptions startCap(Cap cap) {
        this.h = (Cap) ap.checkNotNull(cap, "startCap must not be null");
        return this;
    }

    public final PolylineOptions visible(boolean z) {
        this.e = z;
        return this;
    }

    public final PolylineOptions width(float f2) {
        this.f3731b = f2;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 2, getPoints(), false);
        el.zza(parcel, 3, getWidth());
        el.zzc(parcel, 4, getColor());
        el.zza(parcel, 5, getZIndex());
        el.zza(parcel, 6, isVisible());
        el.zza(parcel, 7, isGeodesic());
        el.zza(parcel, 8, isClickable());
        el.zza(parcel, 9, (Parcelable) getStartCap(), i2, false);
        el.zza(parcel, 10, (Parcelable) getEndCap(), i2, false);
        el.zzc(parcel, 11, getJointType());
        el.zzc(parcel, 12, getPattern(), false);
        el.zzai(parcel, zze);
    }

    public final PolylineOptions zIndex(float f2) {
        this.d = f2;
        return this;
    }
}
