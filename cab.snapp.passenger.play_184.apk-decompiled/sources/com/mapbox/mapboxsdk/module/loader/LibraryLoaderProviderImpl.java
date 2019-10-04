package com.mapbox.mapboxsdk.module.loader;

import com.facebook.b.k;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.LibraryLoaderProvider;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.exceptions.MapboxConfigurationException;
import com.mapbox.mapboxsdk.log.Logger;

public class LibraryLoaderProviderImpl implements LibraryLoaderProvider {

    static class SoLibraryLoader extends LibraryLoader {
        private static final String TAG = "SoLibraryLoader";

        private SoLibraryLoader() {
        }

        public void load(String str) {
            try {
                k.init(Mapbox.getApplicationContext(), false);
                k.loadLibrary(str);
            } catch (MapboxConfigurationException unused) {
                Logger.e(TAG, "Couldn't load so file with relinker, application context missing, call Mapbox.getInstance(Context context, String accessToken) first");
            }
        }
    }

    public LibraryLoader getDefaultLibraryLoader() {
        return new SoLibraryLoader();
    }
}
