package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import com.google.android.gms.maps.model.a.ac;
import com.google.android.gms.maps.model.a.c;

public final class TileOverlayOptions extends zzbfm {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new af();
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public ac f3733a;

    /* renamed from: b  reason: collision with root package name */
    private l f3734b;
    private boolean c = true;
    private float d;
    private boolean e = true;
    private float f = 0.0f;

    public TileOverlayOptions() {
    }

    TileOverlayOptions(IBinder iBinder, boolean z, float f2, boolean z2, float f3) {
        this.f3733a = c.zzbo(iBinder);
        this.f3734b = this.f3733a == null ? null : new ad(this);
        this.c = z;
        this.d = f2;
        this.e = z2;
        this.f = f3;
    }

    public final TileOverlayOptions fadeIn(boolean z) {
        this.e = z;
        return this;
    }

    public final boolean getFadeIn() {
        return this.e;
    }

    public final l getTileProvider() {
        return this.f3734b;
    }

    public final float getTransparency() {
        return this.f;
    }

    public final float getZIndex() {
        return this.d;
    }

    public final boolean isVisible() {
        return this.c;
    }

    public final TileOverlayOptions tileProvider(l lVar) {
        this.f3734b = lVar;
        this.f3733a = this.f3734b == null ? null : new ae(lVar);
        return this;
    }

    public final TileOverlayOptions transparency(float f2) {
        ap.checkArgument(f2 >= 0.0f && f2 <= 1.0f, "Transparency must be in the range [0..1]");
        this.f = f2;
        return this;
    }

    public final TileOverlayOptions visible(boolean z) {
        this.c = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, this.f3733a.asBinder(), false);
        el.zza(parcel, 3, isVisible());
        el.zza(parcel, 4, getZIndex());
        el.zza(parcel, 5, getFadeIn());
        el.zza(parcel, 6, getTransparency());
        el.zzai(parcel, zze);
    }

    public final TileOverlayOptions zIndex(float f2) {
        this.d = f2;
        return this;
    }
}
