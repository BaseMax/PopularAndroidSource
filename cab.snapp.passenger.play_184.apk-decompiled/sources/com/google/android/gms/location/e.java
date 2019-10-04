package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.internal.ai;
import java.util.List;

public final class e extends com.google.android.gms.common.api.e<Object> {
    public e(Activity activity) {
        super(activity, i.API, null, (bx) new co());
    }

    public e(Context context) {
        super(context, i.API, null, (bx) new co());
    }

    public final f<Void> addGeofences(GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        return ai.zzb(i.GeofencingApi.addGeofences(zzago(), geofencingRequest, pendingIntent));
    }

    public final f<Void> removeGeofences(PendingIntent pendingIntent) {
        return ai.zzb(i.GeofencingApi.removeGeofences(zzago(), pendingIntent));
    }

    public final f<Void> removeGeofences(List<String> list) {
        return ai.zzb(i.GeofencingApi.removeGeofences(zzago(), list));
    }
}
