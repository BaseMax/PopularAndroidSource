package a.a.b.b;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import java.util.List;

/* compiled from: MediaBrowserCompatApi21 */
public class f {

    /* compiled from: MediaBrowserCompatApi21 */
    interface a {
        void b();

        void d();

        void onConnected();
    }

    /* compiled from: MediaBrowserCompatApi21 */
    static class b<T extends a> extends MediaBrowser.ConnectionCallback {

        /* renamed from: a  reason: collision with root package name */
        public final T f19a;

        public b(T t) {
            this.f19a = t;
        }

        public void onConnected() {
            this.f19a.onConnected();
        }

        public void onConnectionFailed() {
            this.f19a.d();
        }

        public void onConnectionSuspended() {
            this.f19a.b();
        }
    }

    /* compiled from: MediaBrowserCompatApi21 */
    static class c {
        public static Object a(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getDescription();
        }

        public static int b(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getFlags();
        }
    }

    /* compiled from: MediaBrowserCompatApi21 */
    interface d {
        void a(String str);

        void a(String str, List<?> list);
    }

    /* compiled from: MediaBrowserCompatApi21 */
    static class e<T extends d> extends MediaBrowser.SubscriptionCallback {

        /* renamed from: a  reason: collision with root package name */
        public final T f20a;

        public e(T t) {
            this.f20a = t;
        }

        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
            this.f20a.a(str, list);
        }

        public void onError(String str) {
            this.f20a.a(str);
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void b(Object obj) {
        ((MediaBrowser) obj).disconnect();
    }

    public static Bundle c(Object obj) {
        return ((MediaBrowser) obj).getExtras();
    }

    public static Object d(Object obj) {
        return ((MediaBrowser) obj).getSessionToken();
    }

    public static Object a(Context context, ComponentName componentName, Object obj, Bundle bundle) {
        return new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) obj, bundle);
    }

    public static void a(Object obj) {
        ((MediaBrowser) obj).connect();
    }

    public static Object a(d dVar) {
        return new e(dVar);
    }
}
