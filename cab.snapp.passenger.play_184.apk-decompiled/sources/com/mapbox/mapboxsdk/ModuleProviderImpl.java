package com.mapbox.mapboxsdk;

import com.mapbox.mapboxsdk.http.HttpRequest;
import com.mapbox.mapboxsdk.maps.TelemetryDefinition;
import com.mapbox.mapboxsdk.module.http.HttpRequestImpl;
import com.mapbox.mapboxsdk.module.loader.LibraryLoaderProviderImpl;
import com.mapbox.mapboxsdk.module.telemetry.TelemetryImpl;

public class ModuleProviderImpl implements ModuleProvider {
    public HttpRequest createHttpRequest() {
        return new HttpRequestImpl();
    }

    public TelemetryDefinition obtainTelemetry() {
        return new TelemetryImpl();
    }

    public LibraryLoaderProvider createLibraryLoaderProvider() {
        return new LibraryLoaderProviderImpl();
    }
}
