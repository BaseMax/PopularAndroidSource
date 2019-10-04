package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.a;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

final class c {

    interface a extends a.d {
        void onChildrenLoaded(String str, List<?> list, Bundle bundle);

        void onError(String str, Bundle bundle);
    }

    static class b<T extends a> extends a.e<T> {
        b(T t) {
            super(t);
        }

        public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f67a).onChildrenLoaded(str, list, bundle);
        }

        public final void onError(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((a) this.f67a).onError(str, bundle);
        }
    }

    public static void subscribe(Object obj, String str, Bundle bundle, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, bundle, (MediaBrowser.SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).unsubscribe(str, (MediaBrowser.SubscriptionCallback) obj2);
    }

    private c() {
    }
}
