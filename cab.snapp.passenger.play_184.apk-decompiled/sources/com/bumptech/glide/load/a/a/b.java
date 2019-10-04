package com.bumptech.glide.load.a.a;

import android.net.Uri;
import com.google.firebase.analytics.FirebaseAnalytics;

public final class b {
    public static boolean isThumbnailSize(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    private b() {
    }

    public static boolean isMediaStoreUri(Uri uri) {
        return uri != null && FirebaseAnalytics.b.CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    private static boolean a(Uri uri) {
        return uri.getPathSegments().contains("video");
    }

    public static boolean isMediaStoreVideoUri(Uri uri) {
        return isMediaStoreUri(uri) && a(uri);
    }

    public static boolean isMediaStoreImageUri(Uri uri) {
        return isMediaStoreUri(uri) && !a(uri);
    }
}
