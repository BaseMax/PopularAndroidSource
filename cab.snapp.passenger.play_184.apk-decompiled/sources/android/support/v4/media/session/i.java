package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.h;
import java.lang.reflect.InvocationTargetException;

final class i {

    public interface a extends h.a {
        void onPrepare();

        void onPrepareFromMediaId(String str, Bundle bundle);

        void onPrepareFromSearch(String str, Bundle bundle);

        void onPrepareFromUri(Uri uri, Bundle bundle);
    }

    static class b<T extends a> extends h.b<T> {
        public b(T t) {
            super(t);
        }

        public final void onPrepare() {
            ((a) this.f121a).onPrepare();
        }

        public final void onPrepareFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f121a).onPrepareFromMediaId(str, bundle);
        }

        public final void onPrepareFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f121a).onPrepareFromSearch(str, bundle);
        }

        public final void onPrepareFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f121a).onPrepareFromUri(uri, bundle);
        }
    }

    public static Object createCallback(a aVar) {
        return new b(aVar);
    }

    public static String getCallingPackage(Object obj) {
        MediaSession mediaSession = (MediaSession) obj;
        try {
            return (String) mediaSession.getClass().getMethod("getCallingPackage", new Class[0]).invoke(mediaSession, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private i() {
    }
}
