package com.mapbox.mapboxsdk.location;

import android.animation.TypeEvaluator;
import com.mapbox.mapboxsdk.geometry.LatLng;

class LatLngEvaluator implements TypeEvaluator<LatLng> {
    private final LatLng latLng = new LatLng();

    LatLngEvaluator() {
    }

    public LatLng evaluate(float f, LatLng latLng2, LatLng latLng3) {
        LatLng latLng4 = this.latLng;
        double latitude = latLng2.getLatitude();
        double latitude2 = latLng3.getLatitude() - latLng2.getLatitude();
        double d = (double) f;
        Double.isNaN(d);
        latLng4.setLatitude(latitude + (latitude2 * d));
        LatLng latLng5 = this.latLng;
        double longitude = latLng2.getLongitude();
        Double.isNaN(d);
        latLng5.setLongitude(longitude + ((latLng3.getLongitude() - latLng2.getLongitude()) * d));
        return this.latLng;
    }
}
