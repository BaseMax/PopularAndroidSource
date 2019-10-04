package com.mapbox.mapboxsdk.location;

public interface CompassEngine {
    void addCompassListener(CompassListener compassListener);

    int getLastAccuracySensorStatus();

    float getLastHeading();

    void removeCompassListener(CompassListener compassListener);
}
