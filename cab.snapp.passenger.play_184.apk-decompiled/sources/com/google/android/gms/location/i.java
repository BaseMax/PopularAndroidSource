package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.hr;

public class i {
    public static final com.google.android.gms.common.api.a<Object> API = new com.google.android.gms.common.api.a<>("LocationServices.API", f3650b, f3649a);
    @Deprecated
    public static final a FusedLocationApi = new gb();
    @Deprecated
    public static final d GeofencingApi = new gp();
    @Deprecated
    public static final l SettingsApi = new hr();

    /* renamed from: a  reason: collision with root package name */
    private static final a.g<hj> f3649a = new a.g<>();

    /* renamed from: b  reason: collision with root package name */
    private static final a.b<hj, Object> f3650b = new ap();

    public static abstract class a<R extends m> extends cu<R, hj> {
        public a(f fVar) {
            super(i.API, fVar);
        }

        public final /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((m) obj);
        }
    }

    private i() {
    }

    public static b getFusedLocationProviderClient(Activity activity) {
        return new b(activity);
    }

    public static b getFusedLocationProviderClient(Context context) {
        return new b(context);
    }

    public static e getGeofencingClient(Activity activity) {
        return new e(activity);
    }

    public static e getGeofencingClient(Context context) {
        return new e(context);
    }

    public static m getSettingsClient(Activity activity) {
        return new m(activity);
    }

    public static m getSettingsClient(Context context) {
        return new m(context);
    }

    public static hj zzh(f fVar) {
        boolean z = true;
        ap.checkArgument(fVar != null, "GoogleApiClient parameter is required.");
        hj hjVar = (hj) fVar.zza(f3649a);
        if (hjVar == null) {
            z = false;
        }
        ap.zza(z, (Object) "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return hjVar;
    }
}
