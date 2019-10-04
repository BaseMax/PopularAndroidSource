package com.google.android.gms.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import java.util.List;

@Deprecated
public interface d {
    h<Status> addGeofences(f fVar, GeofencingRequest geofencingRequest, PendingIntent pendingIntent);

    @Deprecated
    h<Status> addGeofences(f fVar, List<c> list, PendingIntent pendingIntent);

    h<Status> removeGeofences(f fVar, PendingIntent pendingIntent);

    h<Status> removeGeofences(f fVar, List<String> list);
}
