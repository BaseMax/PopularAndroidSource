package com.mapbox.mapboxsdk.http;

import com.mapbox.mapboxsdk.Mapbox;

public class HttpRequestUrl {
    private HttpRequestUrl() {
    }

    public static String buildResourceUrl(String str, String str2, int i, boolean z) {
        String str3;
        if (!isValidMapboxEndpoint(str)) {
            return str2;
        }
        if (i == 0) {
            str3 = str2 + "?";
        } else {
            str3 = str2 + "&";
        }
        if (z) {
            return str3 + "offline=true";
        }
        return str3 + "sku=" + Mapbox.getSkuToken();
    }

    private static boolean isValidMapboxEndpoint(String str) {
        return str.equals("mapbox.com") || str.endsWith(".mapbox.com") || str.equals("mapbox.cn") || str.endsWith(".mapbox.cn");
    }
}
