package a.a.b.b.a;

import a.a.b.b.a.l;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompatApi23 */
public class m {

    /* compiled from: MediaSessionCompatApi23 */
    public interface a extends l.a {
        void b(Uri uri, Bundle bundle);
    }

    /* compiled from: MediaSessionCompatApi23 */
    static class b<T extends a> extends l.b<T> {
        public b(T t) {
            super(t);
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f12a).b(uri, bundle);
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }
}
