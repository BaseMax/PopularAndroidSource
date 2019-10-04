package com.mapbox.mapboxsdk.location;

import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.Layer;

class LocationComponentPositionManager {
    private String layerAbove;
    private String layerBelow;
    private final Style style;

    LocationComponentPositionManager(Style style2, String str, String str2) {
        this.style = style2;
        this.layerAbove = str;
        this.layerBelow = str2;
    }

    /* access modifiers changed from: package-private */
    public boolean update(String str, String str2) {
        boolean z;
        String str3 = this.layerAbove;
        if (str3 == str || (str3 != null && str3.equals(str))) {
            String str4 = this.layerBelow;
            if (str4 == str2 || (str4 != null && str4.equals(str2))) {
                z = false;
                this.layerAbove = str;
                this.layerBelow = str2;
                return z;
            }
        }
        z = true;
        this.layerAbove = str;
        this.layerBelow = str2;
        return z;
    }

    /* access modifiers changed from: package-private */
    public void addLayerToMap(Layer layer) {
        String str = this.layerAbove;
        if (str != null) {
            this.style.addLayerAbove(layer, str);
            return;
        }
        String str2 = this.layerBelow;
        if (str2 != null) {
            this.style.addLayerBelow(layer, str2);
        } else {
            this.style.addLayer(layer);
        }
    }
}
