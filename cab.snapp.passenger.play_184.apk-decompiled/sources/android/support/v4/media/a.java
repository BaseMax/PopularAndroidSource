package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import java.util.List;

final class a {

    /* renamed from: android.support.v4.media.a$a  reason: collision with other inner class name */
    interface C0001a {
        void onConnected();

        void onConnectionFailed();

        void onConnectionSuspended();
    }

    static class b<T extends C0001a> extends MediaBrowser.ConnectionCallback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f66a;

        public b(T t) {
            this.f66a = t;
        }

        public final void onConnected() {
            this.f66a.onConnected();
        }

        public final void onConnectionSuspended() {
            this.f66a.onConnectionSuspended();
        }

        public final void onConnectionFailed() {
            this.f66a.onConnectionFailed();
        }
    }

    static class c {
        public static int getFlags(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getFlags();
        }

        public static Object getDescription(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getDescription();
        }

        private c() {
        }
    }

    interface d {
        void onChildrenLoaded(String str, List<?> list);

        void onError(String str);
    }

    static class e<T extends d> extends MediaBrowser.SubscriptionCallback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f67a;

        public e(T t) {
            this.f67a = t;
        }

        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
            this.f67a.onChildrenLoaded(str, list);
        }

        public void onError(String str) {
            this.f67a.onError(str);
        }
    }

    public static Object createConnectionCallback(C0001a aVar) {
        return new b(aVar);
    }

    public static Object createBrowser(Context context, ComponentName componentName, Object obj, Bundle bundle) {
        return new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) obj, bundle);
    }

    public static void connect(Object obj) {
        ((MediaBrowser) obj).connect();
    }

    public static void disconnect(Object obj) {
        ((MediaBrowser) obj).disconnect();
    }

    public static boolean isConnected(Object obj) {
        return ((MediaBrowser) obj).isConnected();
    }

    public static ComponentName getServiceComponent(Object obj) {
        return ((MediaBrowser) obj).getServiceComponent();
    }

    public static String getRoot(Object obj) {
        return ((MediaBrowser) obj).getRoot();
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaBrowser) obj).getExtras();
    }

    public static Object getSessionToken(Object obj) {
        return ((MediaBrowser) obj).getSessionToken();
    }

    public static Object createSubscriptionCallback(d dVar) {
        return new e(dVar);
    }

    public static void subscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, (MediaBrowser.SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str) {
        ((MediaBrowser) obj).unsubscribe(str);
    }

    private a() {
    }
}
