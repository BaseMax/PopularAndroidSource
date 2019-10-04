package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.geometry.ProjectedMeters;
import com.mapbox.mapboxsdk.geometry.VisibleRegion;
import java.util.ArrayList;

public class Projection {
    private int[] contentPadding = {0, 0, 0, 0};
    private final MapView mapView;
    private final NativeMap nativeMapView;

    static double degreesToRadians(double d) {
        return ((d % 360.0d) * 3.141592653589793d) / 180.0d;
    }

    static double radiansToDegrees(double d) {
        return ((d % 6.283185307179586d) * 180.0d) / 3.141592653589793d;
    }

    Projection(NativeMap nativeMap, MapView mapView2) {
        this.nativeMapView = nativeMap;
        this.mapView = mapView2;
    }

    /* access modifiers changed from: package-private */
    public void setContentPadding(int[] iArr) {
        this.contentPadding = iArr;
        float[] fArr = new float[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            fArr[i] = (float) iArr[i];
        }
        this.nativeMapView.setContentPadding(fArr);
    }

    /* access modifiers changed from: package-private */
    public int[] getContentPadding() {
        return this.contentPadding;
    }

    public void invalidateContentPadding() {
        setContentPadding(this.contentPadding);
    }

    public ProjectedMeters getProjectedMetersForLatLng(LatLng latLng) {
        return this.nativeMapView.projectedMetersForLatLng(latLng);
    }

    public LatLng getLatLngForProjectedMeters(ProjectedMeters projectedMeters) {
        return this.nativeMapView.latLngForProjectedMeters(projectedMeters);
    }

    public double getMetersPerPixelAtLatitude(double d) {
        return this.nativeMapView.getMetersPerPixelAtLatitude(d);
    }

    public LatLng fromScreenLocation(PointF pointF) {
        return this.nativeMapView.latLngForPixel(pointF);
    }

    public VisibleRegion getVisibleRegion() {
        return getVisibleRegion(true);
    }

    public VisibleRegion getVisibleRegion(boolean z) {
        float f;
        float f2;
        float f3;
        float f4 = 0.0f;
        if (z) {
            f3 = (float) this.mapView.getWidth();
            f = (float) this.mapView.getHeight();
            f2 = 0.0f;
        } else {
            f4 = (float) this.contentPadding[0];
            int width = this.mapView.getWidth();
            int[] iArr = this.contentPadding;
            f3 = (float) (width - iArr[2]);
            f2 = (float) iArr[1];
            f = (float) (this.mapView.getHeight() - this.contentPadding[3]);
        }
        LatLng fromScreenLocation = fromScreenLocation(new PointF(((f3 - f4) / 2.0f) + f4, ((f - f2) / 2.0f) + f2));
        LatLng fromScreenLocation2 = fromScreenLocation(new PointF(f4, f2));
        LatLng fromScreenLocation3 = fromScreenLocation(new PointF(f3, f2));
        LatLng fromScreenLocation4 = fromScreenLocation(new PointF(f3, f));
        LatLng fromScreenLocation5 = fromScreenLocation(new PointF(f4, f));
        ArrayList<LatLng> arrayList = new ArrayList<>();
        arrayList.add(fromScreenLocation3);
        arrayList.add(fromScreenLocation4);
        arrayList.add(fromScreenLocation5);
        arrayList.add(fromScreenLocation2);
        double d = 0.0d;
        double d2 = -90.0d;
        double d3 = 90.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        for (LatLng latLng : arrayList) {
            if (bearing(fromScreenLocation, latLng) >= d) {
                double longitudeSpan = getLongitudeSpan(latLng.getLongitude(), fromScreenLocation.getLongitude());
                if (longitudeSpan > d5) {
                    d6 = latLng.getLongitude();
                    d5 = longitudeSpan;
                }
            } else {
                double longitudeSpan2 = getLongitudeSpan(fromScreenLocation.getLongitude(), latLng.getLongitude());
                if (longitudeSpan2 > d4) {
                    d7 = latLng.getLongitude();
                    d4 = longitudeSpan2;
                }
            }
            if (d2 < latLng.getLatitude()) {
                d2 = latLng.getLatitude();
            }
            if (d3 > latLng.getLatitude()) {
                d3 = latLng.getLatitude();
            }
            d = 0.0d;
        }
        if (d6 < d7) {
            VisibleRegion visibleRegion = new VisibleRegion(fromScreenLocation2, fromScreenLocation3, fromScreenLocation5, fromScreenLocation4, LatLngBounds.from(d2, d6 + 360.0d, d3, d7));
            return visibleRegion;
        }
        VisibleRegion visibleRegion2 = new VisibleRegion(fromScreenLocation2, fromScreenLocation3, fromScreenLocation5, fromScreenLocation4, LatLngBounds.from(d2, d6, d3, d7));
        return visibleRegion2;
    }

    static double bearing(LatLng latLng, LatLng latLng2) {
        double degreesToRadians = degreesToRadians(latLng.getLongitude());
        double degreesToRadians2 = degreesToRadians(latLng2.getLongitude());
        double degreesToRadians3 = degreesToRadians(latLng.getLatitude());
        double degreesToRadians4 = degreesToRadians(latLng2.getLatitude());
        double d = degreesToRadians2 - degreesToRadians;
        return radiansToDegrees(Math.atan2(Math.sin(d) * Math.cos(degreesToRadians4), (Math.cos(degreesToRadians3) * Math.sin(degreesToRadians4)) - ((Math.sin(degreesToRadians3) * Math.cos(degreesToRadians4)) * Math.cos(d))));
    }

    static double getLongitudeSpan(double d, double d2) {
        double abs = Math.abs(d - d2);
        return d > d2 ? abs : 360.0d - abs;
    }

    public PointF toScreenLocation(LatLng latLng) {
        return this.nativeMapView.pixelForLatLng(latLng);
    }

    /* access modifiers changed from: package-private */
    public float getHeight() {
        return (float) this.mapView.getHeight();
    }

    /* access modifiers changed from: package-private */
    public float getWidth() {
        return (float) this.mapView.getWidth();
    }

    public double calculateZoom(float f) {
        return this.nativeMapView.getZoom() + (Math.log((double) f) / Math.log(2.0d));
    }
}
