package a.a.b.b.a;

import a.a.b.b.a.m;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MediaSessionCompatApi24 */
public class n {

    /* compiled from: MediaSessionCompatApi24 */
    public interface a extends m.a {
        void a();

        void a(Uri uri, Bundle bundle);

        void a(String str, Bundle bundle);

        void e(String str, Bundle bundle);
    }

    /* compiled from: MediaSessionCompatApi24 */
    static class b<T extends a> extends m.b<T> {
        public b(T t) {
            super(t);
        }

        public void onPrepare() {
            ((a) this.f12a).a();
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f12a).a(str, bundle);
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f12a).e(str, bundle);
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f12a).a(uri, bundle);
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static String a(Object obj) {
        MediaSession mediaSession = (MediaSession) obj;
        try {
            return (String) mediaSession.getClass().getMethod("getCallingPackage", new Class[0]).invoke(mediaSession, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            Log.e("MediaSessionCompatApi24", "Cannot execute MediaSession.getCallingPackage()", e2);
            return null;
        }
    }
}
