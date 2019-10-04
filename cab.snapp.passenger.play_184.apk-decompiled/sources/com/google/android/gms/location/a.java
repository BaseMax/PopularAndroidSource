package com.google.android.gms.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;

@Deprecated
public interface a {
    @Deprecated
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";

    h<Status> flushLocations(f fVar);

    Location getLastLocation(f fVar);

    LocationAvailability getLocationAvailability(f fVar);

    h<Status> removeLocationUpdates(f fVar, PendingIntent pendingIntent);

    h<Status> removeLocationUpdates(f fVar, g gVar);

    h<Status> removeLocationUpdates(f fVar, h hVar);

    h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, PendingIntent pendingIntent);

    h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, g gVar, Looper looper);

    h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, h hVar);

    h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, h hVar, Looper looper);

    h<Status> setMockLocation(f fVar, Location location);

    h<Status> setMockMode(f fVar, boolean z);
}
