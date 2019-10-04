package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.c;
import com.google.android.gms.location.d;
import com.google.android.gms.location.zzag;
import java.util.List;

public final class gp implements d {
    private static h<Status> a(f fVar, zzag zzag) {
        return fVar.zze(new gr(fVar, zzag));
    }

    public final h<Status> addGeofences(f fVar, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        return fVar.zze(new gq(fVar, geofencingRequest, pendingIntent));
    }

    @Deprecated
    public final h<Status> addGeofences(f fVar, List<c> list, PendingIntent pendingIntent) {
        GeofencingRequest.a aVar = new GeofencingRequest.a();
        aVar.addGeofences(list);
        aVar.setInitialTrigger(5);
        return addGeofences(fVar, aVar.build(), pendingIntent);
    }

    public final h<Status> removeGeofences(f fVar, PendingIntent pendingIntent) {
        return a(fVar, zzag.zzb(pendingIntent));
    }

    public final h<Status> removeGeofences(f fVar, List<String> list) {
        return a(fVar, zzag.zzac(list));
    }
}
