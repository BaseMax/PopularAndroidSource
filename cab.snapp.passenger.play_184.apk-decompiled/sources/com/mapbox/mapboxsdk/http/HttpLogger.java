package com.mapbox.mapboxsdk.http;

import com.mapbox.mapboxsdk.log.Logger;

public class HttpLogger {
    private static final String TAG = "Mbgl-HttpRequest";
    public static boolean logEnabled = true;
    public static boolean logRequestUrl;

    private HttpLogger() {
    }

    public static void logFailure(int i, String str, String str2) {
        int i2 = i == 1 ? 3 : i == 0 ? 4 : 5;
        Object[] objArr = new Object[3];
        objArr[0] = i == 1 ? "temporary" : i == 0 ? "connection" : "permanent";
        objArr[1] = str;
        if (!logRequestUrl) {
            str2 = "";
        }
        objArr[2] = str2;
        log(i2, String.format("Request failed due to a %s error: %s %s", objArr));
    }

    public static void log(int i, String str) {
        if (logEnabled) {
            Logger.log(i, TAG, str);
        }
    }
}
