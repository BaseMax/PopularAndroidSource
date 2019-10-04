package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.f;

final class h {

    public interface a extends f.a {
        void onPlayFromUri(Uri uri, Bundle bundle);
    }

    static class b<T extends a> extends f.b<T> {
        public b(T t) {
            super(t);
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f121a).onPlayFromUri(uri, bundle);
        }
    }

    public static Object createCallback(a aVar) {
        return new b(aVar);
    }

    private h() {
    }
}
