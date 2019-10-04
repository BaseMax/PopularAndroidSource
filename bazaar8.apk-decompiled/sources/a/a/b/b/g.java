package a.a.b.b;

import a.a.b.b.f;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

/* compiled from: MediaBrowserCompatApi26 */
public class g {

    /* compiled from: MediaBrowserCompatApi26 */
    interface a extends f.d {
        void a(String str, Bundle bundle);

        void a(String str, List<?> list, Bundle bundle);
    }

    /* compiled from: MediaBrowserCompatApi26 */
    static class b<T extends a> extends f.e<T> {
        public b(T t) {
            super(t);
        }

        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f20a).a(str, list, bundle);
        }

        public void onError(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.f20a).a(str, bundle);
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }
}
