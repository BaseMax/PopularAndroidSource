package com.mapbox.android.telemetry.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.mapbox.android.a.a.c;
import com.mapbox.android.telemetry.a.a;
import com.mapbox.android.telemetry.crash.b;
import java.util.concurrent.TimeUnit;

public class MapboxTelemetryInitProvider extends ContentProvider {
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public boolean onCreate() {
        try {
            b.register(getContext());
            c.install(getContext(), "com.mapbox.android.telemetry", "4.5.1");
            a.install(getContext(), TimeUnit.HOURS.toMillis(24));
        } catch (Throwable unused) {
        }
        return false;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (providerInfo == null) {
            throw new IllegalStateException("MapboxTelemetryInitProvider: ProviderInfo cannot be null.");
        } else if (!"com.mapbox.android.telemetry.provider.mapboxtelemetryinitprovider".equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
        } else {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }
}
