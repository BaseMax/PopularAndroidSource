package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Bundle;
import com.mapbox.android.telemetry.ak;

class MapEventFactory {
    MapEventFactory() {
    }

    static MapLoadEvent buildMapLoadEvent(PhoneState phoneState) {
        return new MapLoadEvent(ak.retrieveVendorId(), phoneState);
    }

    static OfflineDownloadStartEvent buildOfflineDownloadStartEvent(PhoneState phoneState, String str, Double d, Double d2, String str2) {
        OfflineDownloadStartEvent offlineDownloadStartEvent = new OfflineDownloadStartEvent(phoneState, str, d, d2);
        offlineDownloadStartEvent.setStyleURL(str2);
        return offlineDownloadStartEvent;
    }

    static OfflineDownloadEndEvent buildOfflineDownloadCompleteEvent(PhoneState phoneState, String str, Double d, Double d2, String str2, long j, long j2, int i) {
        OfflineDownloadEndEvent offlineDownloadEndEvent = new OfflineDownloadEndEvent(phoneState, str, d, d2);
        offlineDownloadEndEvent.setStyleURL(str2);
        offlineDownloadEndEvent.setSizeOfResourcesCompleted(j);
        offlineDownloadEndEvent.setNumberOfTilesCompleted(j2);
        offlineDownloadEndEvent.setState(i);
        return offlineDownloadEndEvent;
    }

    static PerformanceEvent buildPerformanceEvent(PhoneState phoneState, String str, Bundle bundle) {
        return new PerformanceEvent(phoneState, str, bundle);
    }
}
