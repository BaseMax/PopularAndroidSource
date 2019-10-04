package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;

public final class TelemetryEnabler {

    /* renamed from: a  reason: collision with root package name */
    static final Map<State, Boolean> f4925a = new HashMap<State, Boolean>() {
        {
            put(State.ENABLED, Boolean.TRUE);
            put(State.DISABLED, Boolean.FALSE);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, State> f4926b = new HashMap<String, State>() {
        {
            put(State.ENABLED.name(), State.ENABLED);
            put(State.DISABLED.name(), State.DISABLED);
        }
    };
    private boolean c;
    private State d;

    public enum State {
        ENABLED,
        DISABLED
    }

    TelemetryEnabler() {
        this.c = true;
        this.d = State.ENABLED;
        this.c = true;
    }

    public static State retrieveTelemetryStateFromPreferences() {
        if (x.f4995a == null) {
            return f4926b.get(State.ENABLED.name());
        }
        return f4926b.get(ak.a(x.f4995a).getString("mapboxTelemetryState", State.ENABLED.name()));
    }

    public static State updateTelemetryState(State state) {
        if (x.f4995a == null) {
            return state;
        }
        SharedPreferences.Editor edit = ak.a(x.f4995a).edit();
        edit.putString("mapboxTelemetryState", state.name());
        edit.apply();
        return state;
    }

    /* access modifiers changed from: package-private */
    public final State a() {
        if (this.c) {
            return retrieveTelemetryStateFromPreferences();
        }
        return this.d;
    }

    static boolean a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                return applicationInfo.metaData.getBoolean("com.mapbox.EnableEvents", true);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return true;
    }
}
