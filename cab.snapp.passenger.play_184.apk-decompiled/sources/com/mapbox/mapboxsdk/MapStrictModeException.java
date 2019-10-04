package com.mapbox.mapboxsdk;

class MapStrictModeException extends RuntimeException {
    MapStrictModeException(String str) {
        super(String.format("Map detected an error that would fail silently otherwise: %s", new Object[]{str}));
    }
}
