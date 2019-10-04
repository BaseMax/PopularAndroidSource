package c.c.a.e.c;

import h.f.b.j;
import java.net.HttpURLConnection;

/* compiled from: HttpURLConnectionExt.kt */
public final class d {
    public static final long a(HttpURLConnection httpURLConnection) {
        j.b(httpURLConnection, "$this$getCorrectContentLength");
        String headerField = httpURLConnection.getHeaderField("content-length");
        try {
            j.a((Object) headerField, "value");
            return Long.parseLong(headerField);
        } catch (Exception unused) {
            return (long) httpURLConnection.getContentLength();
        }
    }

    public static final boolean b(HttpURLConnection httpURLConnection) {
        j.b(httpURLConnection, "$this$isSuccessful");
        int responseCode = httpURLConnection.getResponseCode();
        return 200 <= responseCode && 299 >= responseCode;
    }
}
