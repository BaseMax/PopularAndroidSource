package com.mapbox.mapboxsdk.module.telemetry;

import android.content.Context;
import android.os.Bundle;
import com.mapbox.android.telemetry.AppUserTurnstile;
import com.mapbox.android.telemetry.TelemetryEnabler;
import com.mapbox.android.telemetry.ac;
import com.mapbox.android.telemetry.x;
import com.mapbox.mapboxsdk.BuildConfig;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.maps.TelemetryDefinition;
import com.mapbox.mapboxsdk.offline.OfflineRegionDefinition;
import com.mapbox.mapboxsdk.offline.OfflineTilePyramidRegionDefinition;
import java.util.UUID;

public class TelemetryImpl implements TelemetryDefinition {
    private final Context appContext = Mapbox.getApplicationContext();
    private final x telemetry = new x(this.appContext, Mapbox.getAccessToken(), BuildConfig.MAPBOX_EVENTS_USER_AGENT);

    @Deprecated
    public void onGestureInteraction(String str, double d, double d2, double d3) {
    }

    public TelemetryImpl() {
        if (TelemetryEnabler.State.ENABLED.equals(TelemetryEnabler.retrieveTelemetryStateFromPreferences())) {
            this.telemetry.enable();
        }
    }

    public void onAppUserTurnstileEvent() {
        AppUserTurnstile appUserTurnstile = new AppUserTurnstile(BuildConfig.MAPBOX_SDK_IDENTIFIER, BuildConfig.MAPBOX_SDK_VERSION);
        appUserTurnstile.setSkuId("00");
        this.telemetry.push(appUserTurnstile);
        this.telemetry.push(MapEventFactory.buildMapLoadEvent(new PhoneState(this.appContext)));
    }

    public void setUserTelemetryRequestState(boolean z) {
        if (z) {
            TelemetryEnabler.updateTelemetryState(TelemetryEnabler.State.ENABLED);
            this.telemetry.enable();
            return;
        }
        this.telemetry.disable();
        TelemetryEnabler.updateTelemetryState(TelemetryEnabler.State.DISABLED);
    }

    public void disableTelemetrySession() {
        this.telemetry.disable();
    }

    public void setDebugLoggingEnabled(boolean z) {
        this.telemetry.updateDebugLoggingEnabled(z);
    }

    public boolean setSessionIdRotationInterval(int i) {
        return this.telemetry.updateSessionIdRotationInterval(new ac(i));
    }

    public void onCreateOfflineRegion(OfflineRegionDefinition offlineRegionDefinition) {
        this.telemetry.push(MapEventFactory.buildOfflineDownloadStartEvent(new PhoneState(this.appContext), offlineRegionDefinition instanceof OfflineTilePyramidRegionDefinition ? "tileregion" : "shaperegion", Double.valueOf(offlineRegionDefinition.getMinZoom()), Double.valueOf(offlineRegionDefinition.getMaxZoom()), offlineRegionDefinition.getStyleURL()));
    }

    public void onPerformanceEvent(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.telemetry.push(MapEventFactory.buildPerformanceEvent(new PhoneState(this.appContext), UUID.randomUUID().toString(), bundle));
    }
}
