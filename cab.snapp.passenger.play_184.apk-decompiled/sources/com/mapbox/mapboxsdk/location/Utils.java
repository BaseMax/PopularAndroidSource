package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.location.Location;
import android.os.Build;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Projection;

public final class Utils {
    private static final String TAG = "Mbgl-com.mapbox.mapboxsdk.location.Utils";

    public static float normalize(float f) {
        return ((f % 360.0f) + 360.0f) % 360.0f;
    }

    public static float shortestRotation(float f, float f2) {
        double d = (double) (f2 - f);
        return d > 180.0d ? f + 360.0f : d < -180.0d ? f - 360.0f : f;
    }

    private Utils() {
    }

    static Bitmap generateShadow(Drawable drawable, float f) {
        while (true) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            try {
                drawable.draw(canvas);
                return Bitmap.createScaledBitmap(createBitmap, toEven(((float) intrinsicWidth) + f), toEven(((float) intrinsicHeight) + f), false);
            } catch (IllegalArgumentException e) {
                if (!e.getMessage().equals("radius must be > 0") || Build.VERSION.SDK_INT >= 21) {
                    throw e;
                }
                Logger.w(TAG, "Location's shadow gradient drawable has a radius <= 0px, resetting to 1px in order to avoid crashing");
                ensureShadowGradientRadius(drawable);
            }
        }
        throw e;
    }

    private static void ensureShadowGradientRadius(Drawable drawable) {
        if (drawable instanceof GradientDrawable) {
            ((GradientDrawable) drawable).setGradientRadius(1.0f);
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            for (int i = 0; i < layerDrawable.getNumberOfLayers(); i++) {
                Drawable drawable2 = layerDrawable.getDrawable(i);
                if (drawable2 instanceof GradientDrawable) {
                    ((GradientDrawable) drawable2).setGradientRadius(1.0f);
                }
            }
        }
    }

    static float calculateZoomLevelRadius(MapboxMap mapboxMap, Location location) {
        if (location == null) {
            return 0.0f;
        }
        double metersPerPixelAtLatitude = mapboxMap.getProjection().getMetersPerPixelAtLatitude(location.getLatitude());
        double accuracy = (double) location.getAccuracy();
        Double.isNaN(accuracy);
        return (float) (accuracy * (1.0d / metersPerPixelAtLatitude));
    }

    static boolean immediateAnimation(Projection projection, LatLng latLng, LatLng latLng2) {
        return latLng.distanceTo(latLng2) / projection.getMetersPerPixelAtLatitude((latLng.getLatitude() + latLng2.getLatitude()) / 2.0d) > 50000.0d;
    }

    private static int toEven(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }
}
