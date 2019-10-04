package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.aw;
import com.google.android.gms.common.util.o;
import java.util.Arrays;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f4048a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4049b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;

    private d(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        ap.zza(!o.zzgs(str), (Object) "ApplicationId must be set.");
        this.f4049b = str;
        this.f4048a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static d fromResource(Context context) {
        aw awVar = new aw(context);
        String string = awVar.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        d dVar = new d(string, awVar.getString("google_api_key"), awVar.getString("firebase_database_url"), awVar.getString("ga_trackingId"), awVar.getString("gcm_defaultSenderId"), awVar.getString("google_storage_bucket"), awVar.getString("project_id"));
        return dVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return ag.equal(this.f4049b, dVar.f4049b) && ag.equal(this.f4048a, dVar.f4048a) && ag.equal(this.c, dVar.c) && ag.equal(this.d, dVar.d) && ag.equal(this.e, dVar.e) && ag.equal(this.f, dVar.f) && ag.equal(this.g, dVar.g);
    }

    public final String getApiKey() {
        return this.f4048a;
    }

    public final String getApplicationId() {
        return this.f4049b;
    }

    public final String getDatabaseUrl() {
        return this.c;
    }

    public final String getGcmSenderId() {
        return this.e;
    }

    public final String getProjectId() {
        return this.g;
    }

    public final String getStorageBucket() {
        return this.f;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4049b, this.f4048a, this.c, this.d, this.e, this.f, this.g});
    }

    public final String toString() {
        return ag.zzx(this).zzg("applicationId", this.f4049b).zzg("apiKey", this.f4048a).zzg("databaseUrl", this.c).zzg("gcmSenderId", this.e).zzg("storageBucket", this.f).zzg("projectId", this.g).toString();
    }
}
