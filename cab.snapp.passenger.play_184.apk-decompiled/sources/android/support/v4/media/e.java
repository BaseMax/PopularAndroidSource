package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;

final class e {

    static class a {
        public static void setMediaUri(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }

        private a() {
        }
    }

    public static Uri getMediaUri(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }

    private e() {
    }
}
