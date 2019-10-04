package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.j;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static a f3702a;

    private b() {
    }

    private static a a() {
        return (a) ap.checkNotNull(f3702a, "CameraUpdateFactory is not initialized");
    }

    public static a newCameraPosition(CameraPosition cameraPosition) {
        try {
            return new a(a().newCameraPosition(cameraPosition));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a newLatLng(LatLng latLng) {
        try {
            return new a(a().newLatLng(latLng));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a newLatLngBounds(LatLngBounds latLngBounds, int i) {
        try {
            return new a(a().newLatLngBounds(latLngBounds, i));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a newLatLngBounds(LatLngBounds latLngBounds, int i, int i2, int i3) {
        try {
            return new a(a().newLatLngBoundsWithSize(latLngBounds, i, i2, i3));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a newLatLngZoom(LatLng latLng, float f) {
        try {
            return new a(a().newLatLngZoom(latLng, f));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a scrollBy(float f, float f2) {
        try {
            return new a(a().scrollBy(f, f2));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a zoomBy(float f) {
        try {
            return new a(a().zoomBy(f));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a zoomBy(float f, Point point) {
        try {
            return new a(a().zoomByWithFocus(f, point.x, point.y));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a zoomIn() {
        try {
            return new a(a().zoomIn());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a zoomOut() {
        try {
            return new a(a().zoomOut());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a zoomTo(float f) {
        try {
            return new a(a().zoomTo(f));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static void zza(a aVar) {
        f3702a = (a) ap.checkNotNull(aVar);
    }
}
