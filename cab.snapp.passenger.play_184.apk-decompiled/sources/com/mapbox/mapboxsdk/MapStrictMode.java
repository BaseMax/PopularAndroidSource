package com.mapbox.mapboxsdk;

public class MapStrictMode {
    private static volatile boolean strictModeEnabled;

    public static synchronized void setStrictModeEnabled(boolean z) {
        synchronized (MapStrictMode.class) {
            strictModeEnabled = z;
        }
    }

    public static void strictModeViolation(String str) {
        if (strictModeEnabled) {
            throw new MapStrictModeException(str);
        }
    }

    public static void strictModeViolation(String str, Throwable th) {
        if (strictModeEnabled) {
            throw new MapStrictModeException(String.format("%s - %s", new Object[]{str, th}));
        }
    }

    public static void strictModeViolation(Throwable th) {
        if (strictModeEnabled) {
            throw new MapStrictModeException(String.format("%s", new Object[]{th}));
        }
    }
}
