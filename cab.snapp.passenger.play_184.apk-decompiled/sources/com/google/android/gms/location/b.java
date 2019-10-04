package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.cc;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.internal.ai;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.ht;
import com.google.android.gms.internal.zzceo;
import com.google.android.gms.internal.zzcfo;

public final class b extends e<Object> {
    public static final String KEY_VERTICAL_ACCURACY = "verticalAccuracy";

    static class a extends gu {

        /* renamed from: a  reason: collision with root package name */
        private final g<Void> f3644a;

        public a(g<Void> gVar) {
            this.f3644a = gVar;
        }

        public final void zza(zzceo zzceo) {
            cc.zza(zzceo.getStatus(), null, this.f3644a);
        }
    }

    public b(Activity activity) {
        super(activity, i.API, null, (bx) new co());
    }

    public b(Context context) {
        super(context, i.API, null, (bx) new co());
    }

    public final f<Void> flushLocations() {
        return ai.zzb(i.FusedLocationApi.flushLocations(zzago()));
    }

    public final f<Location> getLastLocation() {
        return zza(new x());
    }

    public final f<LocationAvailability> getLocationAvailability() {
        return zza(new y());
    }

    public final f<Void> removeLocationUpdates(PendingIntent pendingIntent) {
        return ai.zzb(i.FusedLocationApi.removeLocationUpdates(zzago(), pendingIntent));
    }

    public final f<Void> removeLocationUpdates(g gVar) {
        return cc.zza(zza((bi<?>) bk.zzb(gVar, g.class.getSimpleName())));
    }

    public final f<Void> requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        return ai.zzb(i.FusedLocationApi.requestLocationUpdates(zzago(), locationRequest, pendingIntent));
    }

    public final f<Void> requestLocationUpdates(LocationRequest locationRequest, g gVar, Looper looper) {
        zzcfo zza = zzcfo.zza(locationRequest);
        bg zzb = bk.zzb(gVar, ht.zzb(looper), g.class.getSimpleName());
        return zza(new z(zzb, zza, zzb), new aa(this, zzb.zzajo()));
    }

    public final f<Void> setMockLocation(Location location) {
        return ai.zzb(i.FusedLocationApi.setMockLocation(zzago(), location));
    }

    public final f<Void> setMockMode(boolean z) {
        return ai.zzb(i.FusedLocationApi.setMockMode(zzago(), z));
    }
}
