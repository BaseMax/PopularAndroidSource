package com.mapbox.android.a.b;

import android.app.PendingIntent;
import android.os.Looper;

interface e<T> {
    T createListener(d<i> dVar);

    void getLastLocation(d<i> dVar) throws SecurityException;

    void removeLocationUpdates(PendingIntent pendingIntent);

    void removeLocationUpdates(T t);

    void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException;

    void requestLocationUpdates(h hVar, T t, Looper looper) throws SecurityException;
}
