package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.maps.model.a.ac;

final class ad implements l {

    /* renamed from: a  reason: collision with root package name */
    private final ac f3736a = this.f3737b.f3733a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ TileOverlayOptions f3737b;

    ad(TileOverlayOptions tileOverlayOptions) {
        this.f3737b = tileOverlayOptions;
    }

    public final Tile getTile(int i, int i2, int i3) {
        try {
            return this.f3736a.getTile(i, i2, i3);
        } catch (RemoteException unused) {
            return null;
        }
    }
}
