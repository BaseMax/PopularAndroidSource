package com.mapbox.mapboxsdk.maps;

import android.text.TextUtils;
import com.mapbox.mapboxsdk.annotations.InfoWindow;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import java.util.ArrayList;
import java.util.List;

class InfoWindowManager {
    private boolean allowConcurrentMultipleInfoWindows;
    private MapboxMap.InfoWindowAdapter infoWindowAdapter;
    private final List<InfoWindow> infoWindows = new ArrayList();
    private MapboxMap.OnInfoWindowClickListener onInfoWindowClickListener;
    private MapboxMap.OnInfoWindowCloseListener onInfoWindowCloseListener;
    private MapboxMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener;

    InfoWindowManager() {
    }

    /* access modifiers changed from: package-private */
    public void update() {
        if (!this.infoWindows.isEmpty()) {
            for (InfoWindow update : this.infoWindows) {
                update.update();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void setInfoWindowAdapter(MapboxMap.InfoWindowAdapter infoWindowAdapter2) {
        this.infoWindowAdapter = infoWindowAdapter2;
    }

    /* access modifiers changed from: package-private */
    public MapboxMap.InfoWindowAdapter getInfoWindowAdapter() {
        return this.infoWindowAdapter;
    }

    /* access modifiers changed from: package-private */
    public void setAllowConcurrentMultipleOpenInfoWindows(boolean z) {
        this.allowConcurrentMultipleInfoWindows = z;
    }

    /* access modifiers changed from: package-private */
    public boolean isAllowConcurrentMultipleOpenInfoWindows() {
        return this.allowConcurrentMultipleInfoWindows;
    }

    /* access modifiers changed from: package-private */
    public boolean isInfoWindowValidForMarker(Marker marker) {
        return marker != null && (!TextUtils.isEmpty(marker.getTitle()) || !TextUtils.isEmpty(marker.getSnippet()));
    }

    /* access modifiers changed from: package-private */
    public void setOnInfoWindowClickListener(MapboxMap.OnInfoWindowClickListener onInfoWindowClickListener2) {
        this.onInfoWindowClickListener = onInfoWindowClickListener2;
    }

    /* access modifiers changed from: package-private */
    public MapboxMap.OnInfoWindowClickListener getOnInfoWindowClickListener() {
        return this.onInfoWindowClickListener;
    }

    /* access modifiers changed from: package-private */
    public void setOnInfoWindowLongClickListener(MapboxMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener2) {
        this.onInfoWindowLongClickListener = onInfoWindowLongClickListener2;
    }

    /* access modifiers changed from: package-private */
    public MapboxMap.OnInfoWindowLongClickListener getOnInfoWindowLongClickListener() {
        return this.onInfoWindowLongClickListener;
    }

    /* access modifiers changed from: package-private */
    public void setOnInfoWindowCloseListener(MapboxMap.OnInfoWindowCloseListener onInfoWindowCloseListener2) {
        this.onInfoWindowCloseListener = onInfoWindowCloseListener2;
    }

    /* access modifiers changed from: package-private */
    public MapboxMap.OnInfoWindowCloseListener getOnInfoWindowCloseListener() {
        return this.onInfoWindowCloseListener;
    }

    public void add(InfoWindow infoWindow) {
        this.infoWindows.add(infoWindow);
    }
}
