package okhttp3.internal.http;

import io.fabric.sdk.android.services.network.c;

public final class HttpMethod {
    public static boolean invalidatesCache(String str) {
        return str.equals(c.METHOD_POST) || str.equals("PATCH") || str.equals(c.METHOD_PUT) || str.equals("DELETE") || str.equals("MOVE");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals(c.METHOD_POST) || str.equals(c.METHOD_PUT) || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public static boolean permitsRequestBody(String str) {
        return !str.equals("GET") && !str.equals(c.METHOD_HEAD);
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    private HttpMethod() {
    }
}
