package c.b.a.c.a.a;

import android.net.Uri;

/* compiled from: MediaStoreUtil */
public final class b {
    public static boolean a(int i2, int i3) {
        return i2 != Integer.MIN_VALUE && i3 != Integer.MIN_VALUE && i2 <= 512 && i3 <= 384;
    }

    public static boolean a(Uri uri) {
        return b(uri) && !d(uri);
    }

    public static boolean b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return b(uri) && d(uri);
    }

    public static boolean d(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
