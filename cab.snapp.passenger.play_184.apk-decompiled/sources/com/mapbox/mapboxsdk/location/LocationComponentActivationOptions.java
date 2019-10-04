package com.mapbox.mapboxsdk.location;

import android.content.Context;
import com.mapbox.android.a.b.c;
import com.mapbox.android.a.b.h;
import com.mapbox.mapboxsdk.maps.Style;

public class LocationComponentActivationOptions {
    private final Context context;
    private final LocationComponentOptions locationComponentOptions;
    private final c locationEngine;
    private final h locationEngineRequest;
    private final Style style;
    private final int styleRes;
    private final boolean useDefaultLocationEngine;

    public static class Builder {
        private final Context context;
        private LocationComponentOptions locationComponentOptions;
        private c locationEngine;
        private h locationEngineRequest;
        private final Style style;
        private int styleRes;
        private boolean useDefaultLocationEngine = true;

        public Builder(Context context2, Style style2) {
            this.context = context2;
            this.style = style2;
        }

        public Builder locationEngine(c cVar) {
            this.locationEngine = cVar;
            return this;
        }

        public Builder locationEngineRequest(h hVar) {
            this.locationEngineRequest = hVar;
            return this;
        }

        public Builder locationComponentOptions(LocationComponentOptions locationComponentOptions2) {
            this.locationComponentOptions = locationComponentOptions2;
            return this;
        }

        public Builder styleRes(int i) {
            this.styleRes = i;
            return this;
        }

        public Builder useDefaultLocationEngine(boolean z) {
            this.useDefaultLocationEngine = z;
            return this;
        }

        public LocationComponentActivationOptions build() {
            if (this.styleRes != 0 && this.locationComponentOptions != null) {
                throw new IllegalArgumentException("You've provided both a style resource and a LocationComponentOptions object to the LocationComponentActivationOptions builder. You can't use both and you must choose one of the two to style the LocationComponent.");
            } else if (this.context != null) {
                Style style2 = this.style;
                if (style2 == null) {
                    throw new NullPointerException("Style in LocationComponentActivationOptions is null. Make sure the Style object isn't null. Wait for the map to fully load before passing the Style object to LocationComponentActivationOptions.");
                } else if (style2.isFullyLoaded()) {
                    LocationComponentActivationOptions locationComponentActivationOptions = new LocationComponentActivationOptions(this.context, this.style, this.locationEngine, this.locationEngineRequest, this.locationComponentOptions, this.styleRes, this.useDefaultLocationEngine);
                    return locationComponentActivationOptions;
                } else {
                    throw new IllegalArgumentException("Style in LocationComponentActivationOptions isn't fully loaded. Wait for the map to fully load before passing the Style object to LocationComponentActivationOptions.");
                }
            } else {
                throw new NullPointerException("Context in LocationComponentActivationOptions is null.");
            }
        }
    }

    private LocationComponentActivationOptions(Context context2, Style style2, c cVar, h hVar, LocationComponentOptions locationComponentOptions2, int i, boolean z) {
        this.context = context2;
        this.style = style2;
        this.locationEngine = cVar;
        this.locationEngineRequest = hVar;
        this.locationComponentOptions = locationComponentOptions2;
        this.styleRes = i;
        this.useDefaultLocationEngine = z;
    }

    public static Builder builder(Context context2, Style style2) {
        return new Builder(context2, style2);
    }

    public Context context() {
        return this.context;
    }

    public Style style() {
        return this.style;
    }

    public c locationEngine() {
        return this.locationEngine;
    }

    public h locationEngineRequest() {
        return this.locationEngineRequest;
    }

    public LocationComponentOptions locationComponentOptions() {
        return this.locationComponentOptions;
    }

    public int styleRes() {
        return this.styleRes;
    }

    public boolean useDefaultLocationEngine() {
        return this.useDefaultLocationEngine;
    }
}
