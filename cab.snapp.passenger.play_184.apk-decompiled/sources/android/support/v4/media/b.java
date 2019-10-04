package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;

final class b {

    interface a {
        void onError(String str);

        void onItemLoaded(Parcel parcel);
    }

    /* renamed from: android.support.v4.media.b$b  reason: collision with other inner class name */
    static class C0002b<T extends a> extends MediaBrowser.ItemCallback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f68a;

        public C0002b(T t) {
            this.f68a = t;
        }

        public final void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
            if (mediaItem == null) {
                this.f68a.onItemLoaded(null);
                return;
            }
            Parcel obtain = Parcel.obtain();
            mediaItem.writeToParcel(obtain, 0);
            this.f68a.onItemLoaded(obtain);
        }

        public final void onError(String str) {
            this.f68a.onError(str);
        }
    }

    public static Object createItemCallback(a aVar) {
        return new C0002b(aVar);
    }

    public static void getItem(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).getItem(str, (MediaBrowser.ItemCallback) obj2);
    }

    private b() {
    }
}
