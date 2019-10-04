package c.e.a.a.j.e.a;

import android.net.Uri;
import c.e.a.a.o.I;

/* compiled from: SsUtil */
public final class b {
    public static Uri a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null || !I.l(lastPathSegment).matches("manifest(\\(.+\\))?")) {
            return Uri.withAppendedPath(uri, "Manifest");
        }
        return uri;
    }
}
