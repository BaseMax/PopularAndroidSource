package com.mapbox.android.a.b;

import android.app.PendingIntent;
import android.os.Looper;

public interface c {
    void getLastLocation(d<i> dVar) throws SecurityException;

    void removeLocationUpdates(PendingIntent pendingIntent);

    void removeLocationUpdates(d<i> dVar);

    void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException;

    void requestLocationUpdates(h hVar, d<i> dVar, Looper looper) throws SecurityException;
}
