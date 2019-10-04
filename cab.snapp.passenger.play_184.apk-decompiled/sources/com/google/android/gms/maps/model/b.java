package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;

public final class b {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;

    /* renamed from: a  reason: collision with root package name */
    private static com.google.android.gms.maps.model.a.b f3739a;

    private b() {
    }

    private static com.google.android.gms.maps.model.a.b a() {
        return (com.google.android.gms.maps.model.a.b) ap.checkNotNull(f3739a, "IBitmapDescriptorFactory is not initialized");
    }

    public static a defaultMarker() {
        try {
            return new a(a().zzawg());
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a defaultMarker(float f) {
        try {
            return new a(a().zze(f));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a fromAsset(String str) {
        try {
            return new a(a().zzin(str));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a fromBitmap(Bitmap bitmap) {
        try {
            return new a(a().zzd(bitmap));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a fromFile(String str) {
        try {
            return new a(a().zzio(str));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a fromPath(String str) {
        try {
            return new a(a().zzip(str));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static a fromResource(int i) {
        try {
            return new a(a().zzea(i));
        } catch (RemoteException e) {
            throw new j(e);
        }
    }

    public static void zza(com.google.android.gms.maps.model.a.b bVar) {
        if (f3739a == null) {
            f3739a = (com.google.android.gms.maps.model.a.b) ap.checkNotNull(bVar);
        }
    }
}
