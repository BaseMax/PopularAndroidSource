package com.mapbox.android.telemetry.a;

import android.location.Location;
import androidx.core.os.EnvironmentCompat;
import com.mapbox.android.telemetry.LocationEvent;
import java.math.BigDecimal;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private f f4937a = new f();

    private static double c(double d) {
        return ((((d - -180.0d) % 360.0d) + 360.0d) % 360.0d) - 0.02490234375d;
    }

    public static LocationEvent create(Location location, String str) {
        return a(location, EnvironmentCompat.MEDIA_UNKNOWN, str);
    }

    public final LocationEvent from(Location location, String str) {
        return a(location, str, this.f4937a.a());
    }

    public final void updateSessionIdentifier(f fVar) {
        this.f4937a = fVar;
    }

    private static LocationEvent a(Location location, String str, String str2) {
        LocationEvent locationEvent = new LocationEvent(str2, a(location.getLatitude()), b(a(location.getLongitude())), str);
        a(location, locationEvent);
        b(location, locationEvent);
        return locationEvent;
    }

    private static double a(double d) {
        return new BigDecimal(d).setScale(7, 1).doubleValue();
    }

    private static double b(double d) {
        return (d < -180.0d || d > 180.0d) ? c(d) : d;
    }

    private static void a(Location location, LocationEvent locationEvent) {
        if (location.hasAltitude()) {
            locationEvent.setAltitude(Double.valueOf((double) Math.round(location.getAltitude())));
        }
    }

    private static void b(Location location, LocationEvent locationEvent) {
        if (location.hasAccuracy()) {
            locationEvent.setAccuracy(Float.valueOf((float) Math.round(location.getAccuracy())));
        }
    }
}
