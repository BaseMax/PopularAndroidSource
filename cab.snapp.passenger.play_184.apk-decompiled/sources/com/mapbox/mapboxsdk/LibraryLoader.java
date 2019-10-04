package com.mapbox.mapboxsdk;

import com.mapbox.mapboxsdk.log.Logger;

public abstract class LibraryLoader {
    private static final LibraryLoader DEFAULT;
    private static final String TAG = "Mbgl-LibraryLoader";
    private static boolean loaded;
    private static volatile LibraryLoader loader;

    public abstract void load(String str);

    static {
        LibraryLoader defaultLibraryLoader = Mapbox.getModuleProvider().createLibraryLoaderProvider().getDefaultLibraryLoader();
        DEFAULT = defaultLibraryLoader;
        loader = defaultLibraryLoader;
    }

    public static void setLibraryLoader(LibraryLoader libraryLoader) {
        loader = libraryLoader;
    }

    public static void load() {
        try {
            if (!loaded) {
                loaded = true;
                loader.load("mapbox-gl");
            }
        } catch (UnsatisfiedLinkError e) {
            loaded = false;
            Logger.e(TAG, "Failed to load native shared library.", e);
            MapStrictMode.strictModeViolation("Failed to load native shared library.", e);
        }
    }
}
