package com.mapbox.android.telemetry.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.mapbox.android.a.b.f;
import com.mapbox.android.telemetry.x;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class a implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final int DEFAULT_SESSION_ROTATION_INTERVAL_HOURS = 24;
    private static final Object e = new Object();
    private static a f;

    /* renamed from: a  reason: collision with root package name */
    final b f4932a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f4933b = new AtomicBoolean(false);
    final AtomicReference<f> c = new AtomicReference<>();
    final x d;
    private final HandlerThread g;
    private final SharedPreferences h;
    private Handler i;

    private a(b bVar, HandlerThread handlerThread, f fVar, SharedPreferences sharedPreferences, x xVar) {
        this.f4932a = bVar;
        this.g = handlerThread;
        this.c.set(fVar);
        this.d = xVar;
        this.g.start();
        this.i = new Handler(handlerThread.getLooper()) {
            public final void handleMessage(Message message) {
                try {
                    a aVar = a.this;
                    if (message.what == 0) {
                        if (aVar.f4933b.get()) {
                            aVar.f4932a.onResume();
                            aVar.d.enable();
                            return;
                        }
                        aVar.f4932a.onDestroy();
                        aVar.d.disable();
                    }
                } catch (Throwable unused) {
                }
            }
        };
        this.h = sharedPreferences;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean("mapboxTelemetryLocationState", this.f4933b.get());
        edit.putLong("mapboxSessionRotationInterval", this.c.get().getInterval());
        edit.apply();
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
    }

    public static a install(Context context, long j) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (e) {
            if (f == null) {
                a aVar = new a(new c(context, f.getBestLocationEngine(context), new e()), new HandlerThread("LocationSettingsChangeThread"), new f(j), context.getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0), new x(context, "", String.format("%s/%s", new Object[]{"mapbox-android-location", "4.5.1"})));
                f = aVar;
            }
        }
        return f;
    }

    static a a() {
        a aVar;
        synchronized (e) {
            if (f != null) {
                aVar = f;
            } else {
                throw new IllegalStateException("LocationCollectionClient is not installed.");
            }
        }
        return aVar;
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        try {
            if ("mapboxTelemetryLocationState".equals(str)) {
                boolean z = sharedPreferences.getBoolean("mapboxTelemetryLocationState", false);
                if (this.f4933b.compareAndSet(!z, z)) {
                    this.i.sendEmptyMessage(0);
                }
                return;
            }
            if ("mapboxSessionRotationInterval".equals(str)) {
                this.c.set(new f(sharedPreferences.getLong("mapboxSessionRotationInterval", TimeUnit.HOURS.toMillis(24))));
            }
        } catch (Exception unused) {
        }
    }
}
