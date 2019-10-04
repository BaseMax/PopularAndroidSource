package com.mapbox.mapboxsdk.utils;

import android.content.Context;
import android.os.Looper;
import com.mapbox.mapboxsdk.exceptions.CalledFromWorkerThreadException;

public class ThreadUtils {
    private static Boolean debug;

    public static ThreadUtils init(Context context) {
        debug = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        return null;
    }

    public static void checkThread(String str) {
        Boolean bool = debug;
        if (bool == null) {
            throw new IllegalStateException("ThreadUtils isn't correctly initialised");
        } else if (bool.booleanValue() && Looper.myLooper() != Looper.getMainLooper()) {
            throw new CalledFromWorkerThreadException(String.format("%s interactions should happen on the UI thread.", new Object[]{str}));
        }
    }
}
