package a.a.b.b.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompatApi21 */
public class l {

    /* compiled from: MediaSessionCompatApi21 */
    interface a {
        void a(long j2);

        void a(Object obj);

        void a(String str, Bundle bundle, ResultReceiver resultReceiver);

        boolean a(Intent intent);

        void b();

        void b(long j2);

        void b(String str, Bundle bundle);

        void c();

        void c(String str, Bundle bundle);

        void d();

        void d(String str, Bundle bundle);

        void e();

        void f();

        void g();

        void h();
    }

    /* compiled from: MediaSessionCompatApi21 */
    static class b<T extends a> extends MediaSession.Callback {

        /* renamed from: a  reason: collision with root package name */
        public final T f12a;

        public b(T t) {
            this.f12a = t;
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSessionCompat.a(bundle);
            this.f12a.a(str, bundle, resultReceiver);
        }

        public void onCustomAction(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.f12a.d(str, bundle);
        }

        public void onFastForward() {
            this.f12a.h();
        }

        public boolean onMediaButtonEvent(Intent intent) {
            return this.f12a.a(intent) || super.onMediaButtonEvent(intent);
        }

        public void onPause() {
            this.f12a.e();
        }

        public void onPlay() {
            this.f12a.f();
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.f12a.c(str, bundle);
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.f12a.b(str, bundle);
        }

        public void onRewind() {
            this.f12a.d();
        }

        public void onSeekTo(long j2) {
            this.f12a.b(j2);
        }

        public void onSetRating(Rating rating) {
            this.f12a.a((Object) rating);
        }

        public void onSkipToNext() {
            this.f12a.c();
        }

        public void onSkipToPrevious() {
            this.f12a.g();
        }

        public void onSkipToQueueItem(long j2) {
            this.f12a.a(j2);
        }

        public void onStop() {
            this.f12a.b();
        }
    }

    /* compiled from: MediaSessionCompatApi21 */
    static class c {
        public static Object a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }

    public static Object a(Context context, String str) {
        return new MediaSession(context, str);
    }

    public static void b(Object obj) {
        ((MediaSession) obj).release();
    }

    public static Object c(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static void b(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackState((PlaybackState) obj2);
    }

    public static void a(Object obj, Object obj2, Handler handler) {
        ((MediaSession) obj).setCallback((MediaSession.Callback) obj2, handler);
    }

    public static void b(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setSessionActivity(pendingIntent);
    }

    public static void a(Object obj, int i2) {
        ((MediaSession) obj).setFlags(i2);
    }

    public static void a(Object obj, boolean z) {
        ((MediaSession) obj).setActive(z);
    }

    public static Parcelable a(Object obj) {
        return ((MediaSession) obj).getSessionToken();
    }

    public static void a(Object obj, Object obj2) {
        ((MediaSession) obj).setMetadata((MediaMetadata) obj2);
    }

    public static void a(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setMediaButtonReceiver(pendingIntent);
    }
}
